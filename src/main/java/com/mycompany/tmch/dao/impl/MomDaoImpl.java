package com.mycompany.tmch.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.tmch.dao.MomDao;
import com.mycompany.tmch.model.Mom;
import com.mycompany.tmch.model.MomHealthHistory;

@Repository
@Transactional
public class MomDaoImpl implements MomDao{

	@Autowired
	SessionFactory sessionFactory;
//	Session session;
//	private MomDaoImpl(){
//		sessionFactory.getCurrentSession();
//	}
//	private Session getCurrentSession() {
//		Session session=sessionFactory.getCurrentSession();
//		return session;
//	}
//	
	@Override
	public void saveOrUpdateMomData(Mom mom)throws Exception {
		Session session = sessionFactory.getCurrentSession();
//		session.save(mom);
		session.saveOrUpdate(mom);
		
	}

	@Override
	public List<Object[]> getAllMom() {
		String sql="select mom.*,\n"
				+ " user_model.firstname\n"
				+ "from mom left \n"
				+ "join user_model on mom.user_create = user_model.user_id";
		Session session = sessionFactory.getCurrentSession();
		SQLQuery momlist=session.createSQLQuery(sql);
		try{
		return momlist.list();
		}finally{
			session.flush();
			session.clear();
		}
	}



	@Override
	public List<Mom> getAllMomDataTable() {
		Session session =sessionFactory.getCurrentSession();
		List<Mom> listMom=session.createCriteria(Mom.class).list();
		//List<Mom> listMom=session.createSQLQuery("select * from mom").list();
		//session.flush();
		//session.clear();
		return listMom;
	}

	@Override
	public Mom findMomById(int id)throws Exception {
		Session session =sessionFactory.getCurrentSession();
		Criteria criteria=session.createCriteria(Mom.class);
		criteria.add(Restrictions.eq("mom_id", id));
		return (Mom) criteria.uniqueResult();
	}

	@Override
	public List findMomByNameOrCid(String firstname, String lastname,String cid) {
		Session session =sessionFactory.getCurrentSession();
		String sql = "select mom.mom_id\n" +
				"		,mom.mom_firstname\n" +
				"		,mom.mom_lastname\n" +
				"		,mom.mom_cid\n" +
				"		,count(child.child_id) as amount_child\n" +
				"		,mom.mom_create_datetime\n" +
				"from mom\n" +
				"left join child on mom.mom_id = child.mom_id\n"
				+ "where (mom.mom_firstname like '%"+firstname+"%'\n"
						+ "and mom.mom_lastname like '%"+lastname+"%')\n"
						+ "or mom.mom_cid like'%"+cid+"%'";
		SQLQuery query = session.createSQLQuery(sql);
		//query.addEntity("MomDataTable", MomDataTable.class);
		
		List results = query.list();
		return results;
	}

	@Override
	public List<Mom> findMomByNameOrCidByMomObject(String firstname, String lastname, String cid) {
		Session session =sessionFactory.getCurrentSession();
		String sql = "select mom.mom_id\n" +
				"		,mom.mom_firstname\n" +
				"		,mom.mom_lastname\n" +
				"		,mom.mom_cid\n" +
				"		,count(child.child_id) as amount_child\n" +
				"		,mom.mom_create_datetime\n" +
				"from mom\n" +
				"left join child on mom.mom_id = child.mom_id\n"
				+ "where (mom.mom_firstname like '%"+firstname+"%'\n"
						+ "and mom.mom_lastname like '%"+lastname+"%')\n"
						+ "or mom.mom_cid like'%"+cid+"%'\n"+
								"group by mom.mom_id   ,\n" +
								"        mom.mom_firstname   ,\n" +
								"        mom.mom_lastname   ,\n" +
								"        mom.mom_cid   ,\n" +
								"		 mom.mom_create_datetime ";
		SQLQuery query = session.createSQLQuery(sql);
		
		//query.addEntity("MomDataTable", MomDataTable.class);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		@SuppressWarnings("unchecked")
		List<Mom> results = query.list();
		
		return results;
	}

	@Override
	public MomHealthHistory getMomHealthHistoryData(int mom_id) throws Exception {
		Session session =sessionFactory.getCurrentSession();
		Criteria criteria=session.createCriteria(MomHealthHistory.class);
		criteria.add(Restrictions.eq("mom_id", mom_id));
		return (MomHealthHistory) criteria.uniqueResult();
	}


}
