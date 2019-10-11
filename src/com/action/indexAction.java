package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TQchDAO;
import com.dao.TUserDAO;
import com.model.TQch;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 首页信息管理
 * @author Administrator
 *
 */
public class indexAction extends ActionSupport
{
	private TQchDAO qchDAO;
	private TCatelogDAO catelogDAO;
	
	public TCatelogDAO getCatelogDAO()
	{
		return catelogDAO;
	}
	public void setCatelogDAO(TCatelogDAO catelogDAO)
	{
		this.catelogDAO = catelogDAO;
	}
	public TQchDAO getQchDAO()
	{
		return qchDAO;
	}
	public void setQchDAO(TQchDAO qchDAO)
	{
		this.qchDAO = qchDAO;
	}


	/**
	 * 首页球馆信息显示
	 * @author Administrator
	 *
	 */
	public String index()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		Map session=ActionContext.getContext().getSession();
		
		String sql="from TQch where del='no' order by catelogId";
		List qchList=qchDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<qchList.size();i++)
		{
			TQch qch=(TQch)qchList.get(i);
			qch.setCatelog(catelogDAO.findById(qch.getCatelogId()));
		}
		
		request.put("qchList", qchList);
		
		
		
		sql="from TCatelog where catelogDel='no'";
		List cateLogList=catelogDAO.getHibernateTemplate().find(sql);
		session.put("cateLogList", cateLogList);
		return ActionSupport.SUCCESS;
	}

}
