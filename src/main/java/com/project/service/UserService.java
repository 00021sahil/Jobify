package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UserDao;
import com.project.model.User;

@Service
public class UserService {

	
	@Autowired
	UserDao userDao;
	public User getuserByUsernameAndPassword(String username, String password) {
		// TODO Auto-generated method stub
		return userDao.findByUsernameAndPassword(username, password);
	}

	public List<User> getAlluser() {
		
		return userDao.findAll();
	}

	public boolean adduser(User user) {
		User  saveUser = userDao.save(user);
		if(saveUser != null){
			return true;
		}
		return false;
	}

	

}
