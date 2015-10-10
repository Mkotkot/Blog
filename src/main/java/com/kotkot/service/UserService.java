package com.kotkot.service;

import java.util.List;

import com.kotkot.entry.UserBlop;


public interface UserService {


	public void addUser(UserBlop u);

	public void updateUser(UserBlop u);

	public List<UserBlop> listUser();
	

	public List<UserBlop> UsersEmailPassword(String email , String password);

	public UserBlop getUserById(int id);

	public void removeUser(int id);
}
