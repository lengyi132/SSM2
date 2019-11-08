package com.lha.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lha.ssm.entity.User;

public interface UserDao {

	public User login(User user);

	public List<User> allUser();

	public List<User> allUserByPage(@Param("user")User user,@Param("pageIndex")Integer pageIndex,@Param("pageSize")Integer pageSize);
	
	public int addUser(User user);
	
	public int checkLogin(String loginName);
	
	public int getCount(User user);

	public int deleteUser(Integer id);

	public int updateUser(User user);

	public User queryUser(Integer id);
}
