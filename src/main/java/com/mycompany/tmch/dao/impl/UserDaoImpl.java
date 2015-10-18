package com.mycompany.tmch.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.tmch.dao.UserDao;
import com.mycompany.tmch.model.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao{

	
	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public void saveUser(User user) throws Exception {
		
		Session session=sessionFactory.getCurrentSession();
		session.save(user);
	}


	@Override
	public List<User> getAllListUser() throws Exception {
		String sql="select * from user_model";
		Session session=sessionFactory.getCurrentSession();
		SQLQuery userlist=session.createSQLQuery(sql);
		userlist.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List<User> list=userlist.list();
		return list;
	}

}
