package com.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Articlemodel;
import com.model.RegisterMdel;
@Transactional
@Repository
public class DaoClass implements DaoInterface{
@Autowired
SessionFactory sf;

	@Override
	public void savedi(RegisterMdel registerMdel) {
		Session session=sf.getCurrentSession();
		session.save(registerMdel);
         		
	}

	@Override
	public List<RegisterMdel> getListId(String username, String password) {
		Session session=sf.getCurrentSession();
		SQLQuery query=session.createSQLQuery("select m.id from registermdel m where m.username='"+username+"' and m.password='"+password+"' ");
         	query.setResultTransformer(Transformers.aliasToBean(RegisterMdel.class));	
         	return query.list();
	}

	@Override
	public void articlesave(Articlemodel articlemodel) {
		Session session=sf.getCurrentSession();
		session.save(articlemodel);
		
	}

	@Override
	public List<Articlemodel> showarticle() {
		Session session=sf.getCurrentSession();
		SQLQuery query=session.createSQLQuery("select * from Articlemodel");
		query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
		return query.list();
	}

}
