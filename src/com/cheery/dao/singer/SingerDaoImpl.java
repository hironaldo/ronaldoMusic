package com.cheery.dao.singer;

import com.cheery.model.SingerEntity;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class SingerDaoImpl extends HibernateDaoSupport implements ISingerDao {
    @Override
    public List<SingerEntity> querySingerById(Integer siId) throws Exception {
        String hql = "from SingerEntity s left join fetch s.songList o where s.siId=? ";
        return this.getHibernateTemplate().find(hql, siId);
    }
}
