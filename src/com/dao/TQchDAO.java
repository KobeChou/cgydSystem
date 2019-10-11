package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TQch;

/**
 * Data access object (DAO) for domain model class TQch.
 * 
 * @see com.model.TQch
 * @author MyEclipse Persistence Tools
 */

public class TQchDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TQchDAO.class);

	// property constants
	public static final String QCBH = "qcbh";//Çò¹Ý±àºÅ

	public static final String AREA = "area";

	public static final String JIESHAO = "jieshao";

	public static final String FUJIAN = "fujian";

	public static final String QIANSHU = "qianshu";

	public static final String CATELOG_ID = "catelogId";

	public static final String YUDINGTIAOJIAN = "yudingtiaojian";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TQch transientInstance)
	{
		log.debug("saving TQch instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TQch persistentInstance)
	{
		log.debug("deleting TQch instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TQch findById(java.lang.Integer id)
	{
		log.debug("getting TQch instance with id: " + id);
		try
		{
			TQch instance = (TQch) getHibernateTemplate().get(
					"com.model.TQch", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TQch instance)
	{
		log.debug("finding TQch instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TQch instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TQch as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByQcbh(Object qcbh)
	{
		return findByProperty(QCBH, qcbh);
	}

	public List findByArea(Object area)
	{
		return findByProperty(AREA, area);
	}

	public List findByJieshao(Object jieshao)
	{
		return findByProperty(JIESHAO, jieshao);
	}

	public List findByFujian(Object fujian)
	{
		return findByProperty(FUJIAN, fujian);
	}

	public List findByQianshu(Object qianshu)
	{
		return findByProperty(QIANSHU, qianshu);
	}

	public List findByCatelogId(Object catelogId)
	{
		return findByProperty(CATELOG_ID, catelogId);
	}

	public List findByYudingtiaojian(Object yudingtiaojian)
	{
		return findByProperty(YUDINGTIAOJIAN, yudingtiaojian);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TQch instances");
		try
		{
			String queryString = "from TQch";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TQch merge(TQch detachedInstance)
	{
		log.debug("merging TQch instance");
		try
		{
			TQch result = (TQch) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TQch instance)
	{
		log.debug("attaching dirty TQch instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TQch instance)
	{
		log.debug("attaching clean TQch instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TQchDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TQchDAO) ctx.getBean("TQchDAO");
	}
}