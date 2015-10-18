package com.mycompany.tmch.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.tmch.dao.UserDao;
import com.mycompany.tmch.model.User;
import com.mycompany.tmch.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userdao;
	
	@Override
	@Transactional
	public void saveUserService(User user) throws Exception {
		// TODO Auto-generated method stub
		userdao.saveUser(user);
		
	}

	@Override
	@Transactional
	public List<User> getAlluserService() throws Exception {
		List<User> listUser=userdao.getAllListUser();
		return listUser;
	}

}
