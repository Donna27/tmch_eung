package com.mycompany.tmch.dao;

import java.util.List;

import com.mycompany.tmch.model.Mom;
import com.mycompany.tmch.model.MomHealthHistory;

public interface MomDao {
	public void saveOrUpdateMomData(Mom mom)throws Exception;
	public List<Object[]> getAllMom();
	public List<Mom> getAllMomDataTable();
	public Mom findMomById(int id) throws Exception;
	public List findMomByNameOrCid(String firstname,String lastname,String cid);
	public List<Mom> findMomByNameOrCidByMomObject(String firstname,String lastname,String cid);
	
	public MomHealthHistory getMomHealthHistoryData(int mom_id)throws Exception;
}
