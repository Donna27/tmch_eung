package com.mycompany.tmch.service;

import java.util.List;

import com.mycompany.tmch.model.Mom;

public interface MomService {
	public void saveOrUpdateMomService(Mom mom)throws Exception;
	public List<Object[]> getAllMom();
	public List<Mom> getAllMomDatableService();
	public List getMomListService(String firstname,String lastname,String cid);
	public List<Mom> getAllMomService(String firstname, String lastname, String cid);
	public Mom getMombyIdService(int id);
}
