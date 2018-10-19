package com.cheery.dao.dataInitDao;

import com.cheery.model.*;
import org.hibernate.FetchMode;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class DataInitImpl extends HibernateDaoSupport implements IDataInitDao {

    @Override
    public List<PlaylistEntity> queryTopPlaylist() throws Exception {
        String hql = "from PlaylistEntity p inner join fetch p.detail d inner join fetch p.user u GROUP BY d.deId ORDER BY d.time desc";
        return this.getHibernateTemplate().find(hql);
    }

    @Override
    public List<SongEntity> queryAllSong() throws Exception {
        String hql = "from SongEntity so inner join fetch so.singer ORDER BY so.soId";
        return this.getHibernateTemplate().find(hql);
    }

    @Override
    public List<SingerEntity> queryAllSinger() throws Exception {
        String hql = "from SingerEntity as s order by s.siId";
        return this.getHibernateTemplate().find(hql);
    }

    @Override
    public List<MvEntity> queryAllMv() throws Exception {
        String hql = "from MvEntity as m ORDER BY m.mvId";
        return this.getHibernateTemplate().find(hql);
    }

    @Override
    public List<UserEntity> userLogin(UserEntity user) throws Exception {
        String hql = "from UserEntity as u inner join fetch u.playList where u.phone = ? and u.password = ?";
        return this.getHibernateTemplate().find(hql, new Object[]{user.getPhone(), user.getPassword()});
    }
}
