package com.mycompany.tmch.service;

import java.util.List;

import com.mycompany.tmch.model.User;

public interface UserService {
	public void saveUserService(User user)throws Exception;
	public List<User> getAlluserService()throws Exception;
}
