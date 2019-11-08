package com.lha.ssm.service;

import java.util.List;

import com.lha.ssm.entity.User;

public interface UserService {
	public User login(User user);

	public List<User> allUser();

	public List<User> allUserByPage(User user,Integer pageIndex,Integer pageSize);
	
	public int addUser(User user);
	
	public boolean checkLogin(String loginName);
	
	public int getCount(User user);

	public boolean deleteUser(Integer id);

	public boolean updateUser(User user);

	public User queryUser(Integer id);
}
