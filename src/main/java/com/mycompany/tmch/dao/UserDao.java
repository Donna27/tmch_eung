package com.mycompany.tmch.dao;

import java.util.List;

import com.mycompany.tmch.model.User;

public interface UserDao {
	public void saveUser(User user)throws Exception;
	public List<User> getAllListUser()throws Exception;
}
