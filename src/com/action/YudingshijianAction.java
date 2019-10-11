package com.action;

import com.dao.TYudingshijianDao;
import com.model.TYuding;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class YudingshijianAction extends ActionSupport{
    private TYudingshijianDao yudingDAO;

    public String getYdlist(){
        HttpServletRequest request1= ServletActionContext.getRequest();
        String qchId = request1.getParameter("qchId");
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
        String shijian =  sdf.format(date);
        String sql="from TYudingShijian where   qchId = '"+ qchId +"' and shijian = '"+ shijian+"'";
        List yudingList=yudingDAO.getHibernateTemplate().find(sql);
        Map request=(Map)ServletActionContext.getContext().get("request");
        request.put("sjlist", yudingList);
        return "success";
    }

    public TYudingshijianDao getYudingDAO() {
        return yudingDAO;
    }

    public void setYudingDAO(TYudingshijianDao yudingDAO) {
        this.yudingDAO = yudingDAO;
    }
}
