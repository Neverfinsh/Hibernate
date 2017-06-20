package com.facemap.dao;

import org.hibernate.Session;

import com.facemap.domain.HibernateSessionFactory;
import com.facemap.domain.IBaseHibernateDAO;


/**
 * Data access object (DAO) for domain model
 * @author MyEclipse Persistence Tools
 */
public class BaseHibernateDAO implements IBaseHibernateDAO {
	
	public Session getSession() {
		return HibernateSessionFactory.getSession();
	}
	
}