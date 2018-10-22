package com.cheery.dao.user;


import com.cheery.model.UserEntity;

import java.util.List;

public interface IUserDao {
    /**
     * IUserDao interface 用户
     * @author CR7
     * @date 2018/10/13
     */
    List<UserEntity> userLogin(UserEntity user) throws Exception;   //登陆
}
