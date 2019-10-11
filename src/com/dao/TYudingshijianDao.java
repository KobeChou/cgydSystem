package com.dao;

import com.model.TYuding;
import com.model.TYudingShijian;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class TYudingshijianDao extends HibernateDaoSupport {
    private static final Log log = LogFactory.getLog(TYudingshijianDao.class);

    public static final String TIME1 = "time1";
    public static final String TIME2 = "time2";

    public static final String TIME3 = "time3";

    public static final String TIME4 = "time4";
    public static final String TIME5 = "time5";
    public static final String TIME6 = "time6";
    public static final String TIME7 = "time7";
    public static final String TIME8 = "time8";
    public static final String TIME9 = "time9";
    public static final String TIME10 = "time10";
    public static final String TIME11 = "time11";
    public static final String TIME12 = "time12";
    public static final String QCHID = "qchId";
    public static final String SHIJIAN = "shijian";

    protected void initDao() {
        // do nothing
    }

    public void save(TYudingShijian transientInstance) {
        log.debug("saving TYuding instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }

    public void updateshijian(TYudingShijian instance){
        log.debug("update TYuding instance");
        String sqls= "update TYudingShijian set ";
        if(instance.getTime1() != null ){
            sqls +=" time1='"+instance.getTime1() + "',";
        }
        if(instance.getTime2() != null){
            sqls += " time2='" + instance.getTime2() + "',";
        }
        if(instance.getTime3() != null){
            sqls += " time3='" + instance.getTime3() + "',";
        }
        if(instance.getTime4() != null){
            sqls += " time4='" + instance.getTime4() + "',";
        }
        if(instance.getTime5() != null){
            sqls += " time5='" + instance.getTime5() + "',";
        }
        if(instance.getTime6() != null){
            sqls += " time6='" + instance.getTime6() + "',";
        }
        if(instance.getTime7() != null){
            sqls += " time7='" + instance.getTime7() + "',";
        }
        if(instance.getTime8() != null){
            sqls += " time8='" + instance.getTime8() + "',";
        }
        if(instance.getTime9() != null){
            sqls += " time9='" + instance.getTime9() + "',";
        }
        if(instance.getTime10() != null){
            sqls += " time10='" + instance.getTime10() + "',";
        }
        if(instance.getTime11() != null){
            sqls += " time11='" + instance.getTime11() + "',";
        }
        if(instance.getTime12() != null){
            sqls += " time12='" + instance.getTime12() + "',";
        }
        if(sqls.substring(sqls.length()-1).equals(",")){
            sqls = sqls.substring(0,sqls.length()-1);
        }
        sqls += " where qchId='" + instance.getQchId() + "' AND shijian='" + instance.getShijian() +"'";
        try {
            getHibernateTemplate().bulkUpdate(sqls);
            log.debug("update successful");
        } catch (RuntimeException re) {
            log.error("update failed", re);
            throw re;
        }
    }


    public void updateshijianTOnull(TYudingShijian instance){
        log.debug("update TYuding instance");
        try {
            getHibernateTemplate().update(instance);
            log.debug("update successful");
        } catch (RuntimeException re) {
            log.error("update failed", re);
            throw re;
        }
    }

    public void attachDirty(TYudingShijian instance) {
        log.debug("attaching dirty TYuding instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public TYudingShijian findById(java.lang.Integer id)
    {
        log.debug("getting TYuding instance with id: " + id);
        try
        {
            TYudingShijian instance = (TYudingShijian) getHibernateTemplate().get(
                    "com.model.TYudingShijian", id);
            return instance;
        } catch (RuntimeException re)
        {
            log.error("get failed", re);
            throw re;
        }
    }


    public TYudingShijian findByQchid(java.lang.Integer id,java.lang.String shijian)
    {
        log.debug("getting TYuding instance with id: " + id);
        try
        {
            String sql="from TYudingShijian where qchId='" + id + "' and shijian='" + shijian +"'";
            List<TYudingShijian> instance=  getHibernateTemplate().find(sql);
            if(instance == null || instance.isEmpty()){
                return null;
            }else{
                return instance.get(0);
            }

        } catch (RuntimeException re)
        {
            log.error("get failed", re);
            throw re;
        }
    }

    public static TYudingshijianDao getFromApplicationContext(ApplicationContext ctx) {
        return (TYudingshijianDao) ctx.getBean("TYudingshijianDao");
    }

    public static String getSHIJIAN() {
        return SHIJIAN;
    }

    public static String getTIME1() {
        return TIME1;
    }

    public static String getTIME2() {
        return TIME2;
    }

    public static String getTIME3() {
        return TIME3;
    }

    public static String getTIME4() {
        return TIME4;
    }

    public static String getTIME5() {
        return TIME5;
    }

    public static String getTIME6() {
        return TIME6;
    }

    public static String getTIME7() {
        return TIME7;
    }

    public static String getTIME8() {
        return TIME8;
    }

    public static String getTIME9() {
        return TIME9;
    }

    public static String getTIME10() {
        return TIME10;
    }

    public static String getTIME11() {
        return TIME11;
    }

    public static String getTIME12() {
        return TIME12;
    }

    public static String getQCHID() {
        return QCHID;
    }
}
