package com.facemap.dao;

import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.facemap.domain.FUser;

/**
 * A data access object (DAO) providing persistence and search support for FUser
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.facemap.domain.FUser
 * @author MyEclipse Persistence Tools
 */
public class FUserDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(FUserDAO.class);
	// property constants
	public static final String USER_NAME = "userName";
	public static final String USER_PWD = "userPwd";
	public static final String USER_LOGIN_NAME = "userLoginName";
	public static final String USER_EMAIL = "userEmail";
	public static final String USER_ADDRESS = "userAddress";
	public static final String USER_STATUS = "userStatus";

	public void save(FUser transientInstance) {
		log.debug("saving FUser instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(FUser persistentInstance) {
		log.debug("deleting FUser instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public FUser findById(java.lang.Integer id) {
		log.debug("getting FUser instance with id: " + id);
		try {
			FUser instance = (FUser) getSession().get(
					"com.facemap.domain.FUser", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(FUser instance) {
		log.debug("finding FUser instance by example");
		try {
			List results = getSession()
					.createCriteria("com.facemap.domain.FUser")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding FUser instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from FUser as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUserName(Object userName) {
		return findByProperty(USER_NAME, userName);
	}

	public List findByUserPwd(Object userPwd) {
		return findByProperty(USER_PWD, userPwd);
	}

	public List findByUserLoginName(Object userLoginName) {
		return findByProperty(USER_LOGIN_NAME, userLoginName);
	}

	public List findByUserEmail(Object userEmail) {
		return findByProperty(USER_EMAIL, userEmail);
	}

	public List findByUserAddress(Object userAddress) {
		return findByProperty(USER_ADDRESS, userAddress);
	}

	public List findByUserStatus(Object userStatus) {
		return findByProperty(USER_STATUS, userStatus);
	}

	public List findAll() {
		log.debug("finding all FUser instances");
		try {
			String queryString = "from FUser";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public FUser merge(FUser detachedInstance) {
		log.debug("merging FUser instance");
		try {
			FUser result = (FUser) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(FUser instance) {
		log.debug("attaching dirty FUser instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(FUser instance) {
		log.debug("attaching clean FUser instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}