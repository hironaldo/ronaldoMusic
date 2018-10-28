package com.cheery.dao.user;

import com.cheery.model.UserEntity;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class UserDaoImpl extends HibernateDaoSupport implements IUserDao {

    @Override
    public List<UserEntity> userLogin(UserEntity user) throws Exception {
        String hql = "from UserEntity as u where u.phone = ? and u.password = ?";
        return this.getHibernateTemplate().find(hql, new Object[]{user.getPhone(), user.getPassword()});
    }
}
