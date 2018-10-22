package com.cheery.service;

import com.cheery.dao.user.IUserDao;
import com.cheery.model.UserEntity;
import java.util.List;

public class UserService {
    private IUserDao userDao;

    public void setUserDao(IUserDao userDao) {
        this.userDao = userDao;
    }

    public List<UserEntity> userLogin(UserEntity user) throws Exception {
        return userDao.userLogin(user);
    }
}
