package com.mycompany.tmch.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.tmch.dao.MomDao;
import com.mycompany.tmch.model.Mom;
import com.mycompany.tmch.model.MomHealthHistory;
import com.mycompany.tmch.service.MomService;

@Service
public class MomServiceImpl implements MomService{
	
	@Autowired
	private MomDao momdao;
	
	@Override
	public void saveOrUpdateMomService(Mom mom) throws Exception {
		momdao.saveOrUpdateMomData(mom);
		
	}

	@Override
	public List<Object[]> getAllMom() {
		return momdao.getAllMom();
	}

	@Override
	public List<Mom> getAllMomDatableService() {
		return momdao.getAllMomDataTable();
	}

	@Override
	public List getMomListService(String firstname, String lastname, String cid) {
		return momdao.findMomByNameOrCid(firstname, lastname, cid);
	}

	@Override
	public List<Mom> getAllMomService(String firstname, String lastname, String cid) {
		
		return momdao.findMomByNameOrCidByMomObject(firstname, lastname, cid);
	}

	@Override
	public Mom getMombyIdService(int id) {
		
		try {
			return momdao.findMomById(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public MomHealthHistory getMomHealthHistoryDataService(int mom_id) {
		try{
		return momdao.getMomHealthHistoryData(mom_id);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}	
	}

}
