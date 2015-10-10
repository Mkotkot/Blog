package com.kotkot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kotkot.AOP.UserDAO;
import com.kotkot.entry.UserBlop;

@Service("userService")
public class UserServiceImp implements UserService {

	@Autowired
	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	@Transactional
	public void addUser(UserBlop u) {
		userDAO.addUser(u);
	}

	@Override
	@Transactional
	public void updateUser(UserBlop u) {
		userDAO.updateUser(u);

	}

	@Override
	@Transactional
	public List<UserBlop> listUser() {
		return userDAO.listUser();

	}

	@Override
	@Transactional
	public UserBlop getUserById(int id) {
		return userDAO.getUserById(id);
	}

	@Override
	@Transactional
	public void removeUser(int id) {
		userDAO.removeUser(id);

	}

	@Override
	@Transactional
	public List<UserBlop> UsersEmailPassword(String email, String password) {
		
		return userDAO.UsersEmailPassword(email, password);
	}

}
