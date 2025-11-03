package com.project.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.model.User;

public interface UserDao extends JpaRepository<User, Integer>
{

	User findByUsernameAndPassword(String username, String password);

}
