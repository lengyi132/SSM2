package com.lha.ssm.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lha.ssm.dao.UserDao;
import com.lha.ssm.entity.User;
import com.lha.ssm.service.UserService;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;

    @Override
    public User login(User user) {
        return dao.login(user);
    }

    @Override
    public List<User> allUser(){
        return dao.allUser();
    }
    @Override
    public List<User> allUserByPage(User user, Integer pageIndex, Integer pageSize) {
        List<User> users = dao.allUserByPage(user, pageIndex, pageSize);
        return users;
    }

    @Override
    public int addUser(User user) {
        int i = dao.addUser(user);
        return i;
    }

    @Override
    public boolean checkLogin(String loginName) {
        return dao.checkLogin(loginName) == 0;
    }

    @Override
    public int getCount(User user) {
        return dao.getCount(user);
    }

    @Override
    public boolean deleteUser(Integer id) {
        return dao.deleteUser(id)==1;
    }

    @Override
    public boolean updateUser(User user) {
        return dao.updateUser(user)==1;
    }

    @Override
    public User queryUser(Integer id) {
        return dao.queryUser(id);
    }
}
