package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TQchDAO;
import com.dao.TZlxxDAO;
import com.model.TCatelog;
import com.model.TZlxx;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 预订信息登记管理
 * @author Administrator
 *
 */
public class zlxxAction extends ActionSupport
{
	private Integer id;
	private Integer qch_id;
	private String kehuming;
	private String kehuzheng;

	private String rushijian;
	private String lishijian;
	private Integer feiyong;
	
	private TZlxxDAO zlxxDAO;
	private TQchDAO qchDAO;
	
	private String message;
	private String path;
	
	/**
	 * 预订信息登记添加
	 * @author Administrator
	 *
	 */
	public String zlxxAdd()
	{
		TZlxx zlxx=new TZlxx();

        zlxx.setQch_id(qch_id);
        zlxx.setKehuming(kehuming);
        zlxx.setKehuzheng(kehuzheng);
        zlxx.setRushijian(rushijian);
        
        zlxx.setLishijian(lishijian);
        zlxx.setFeiyong(feiyong);
        
        zlxxDAO.save(zlxx);
		
		this.setMessage("操作成功");
		this.setPath("zlxxMana.action");
		return "succeed";
	}
	
	/**
	 * 预订信息管理
	 * @author Administrator
	 *
	 */
	public String zlxxMana()
	{
		String sql="from TZlxx";
		List zlxxList=zlxxDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<zlxxList.size();i++)
		{
			TZlxx zlxx=(TZlxx)zlxxList.get(i);
			zlxx.setQch(qchDAO.findById(zlxx.getQch_id()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zlxxList", zlxxList);
		return ActionSupport.SUCCESS;
	}
	
	/**
	 * 预订信息登记删除
	 * @author Administrator
	 *
	 */
	public String zlxxDel()
	{
		
		TZlxx zlxx=zlxxDAO.findById(id);
		zlxxDAO.delete(zlxx);
		
		this.setMessage("操作成功");
		this.setPath("zlxxMana.action");
		return "succeed";
	}



	public Integer getFeiyong()
	{
		return feiyong;
	}



	public TQchDAO getQchDAO()
	{
		return qchDAO;
	}

	public void setQchDAO(TQchDAO qchDAO)
	{
		this.qchDAO = qchDAO;
	}

	public void setFeiyong(Integer feiyong)
	{
		this.feiyong = feiyong;
	}



	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public String getPath()
	{
		return path;
	}

	public void setPath(String path)
	{
		this.path = path;
	}

	public Integer getId()
	{
		return id;
	}



	public void setId(Integer id)
	{
		this.id = id;
	}



	public Integer getQch_id()
	{
		return qch_id;
	}



	public void setQch_id(Integer qch_id)
	{
		this.qch_id = qch_id;
	}



	public String getKehuming()
	{
		return kehuming;
	}



	public void setKehuming(String kehuming)
	{
		this.kehuming = kehuming;
	}



	public String getKehuzheng()
	{
		return kehuzheng;
	}



	public void setKehuzheng(String kehuzheng)
	{
		this.kehuzheng = kehuzheng;
	}



	public String getLishijian()
	{
		return lishijian;
	}



	public void setLishijian(String lishijian)
	{
		this.lishijian = lishijian;
	}



	public String getRushijian()
	{
		return rushijian;
	}



	public void setRushijian(String rushijian)
	{
		this.rushijian = rushijian;
	}



	public TZlxxDAO getZlxxDAO()
	{
		return zlxxDAO;
	}



	public void setZlxxDAO(TZlxxDAO zlxxDAO)
	{
		this.zlxxDAO = zlxxDAO;
	}

}
