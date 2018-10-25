package com.cheery.dao.singer;

import com.cheery.model.SingerEntity;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class SingerDaoImpl extends HibernateDaoSupport implements ISingerDao {
    @Override
    public SingerEntity querySingerById(Integer siId) throws Exception {
        return null;
    }
}
