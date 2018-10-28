package com.cheery.dao.playlist;

import com.cheery.model.*;
import org.apache.commons.collections.bag.SynchronizedSortedBag;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class PlaylistDaoImpl extends HibernateDaoSupport implements IPlaylistDao {


    @Override
    public List<PlaylistEntity> queryPlaylistById(DetailEntity detail) throws Exception {
        String hql = "from PlaylistEntity p left join fetch p.detail d left join fetch p.song s where d.deId=? ";
        return this.getHibernateTemplate().find(hql, new Object[]{detail.getDeId()});
    }

    @Override
    public boolean deletePlaylistById(DetailEntity detail) throws Exception {
        boolean flag = false;
        try {
            this.getHibernateTemplate().delete(detail);
            System.out.println("删除成功了");
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean deleteDetailById(DetailEntity detail) throws Exception {
        boolean flag = false;
        try {
            this.getHibernateTemplate().delete(detail);
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean addPlaylist(DetailEntity detail) throws Exception {
        boolean flag = false;
        try {
            this.getHibernateTemplate().save(detail);
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean addSongToPlaylist(PlaylistEntity playlist) throws Exception {
        boolean flag = false;
        try {
            this.getHibernateTemplate().save(playlist);
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public DetailEntity queryDetailById(Integer deId) throws Exception {
        String hql = "from DetailEntity d where d.deId=? ";
        return (DetailEntity) this.getHibernateTemplate().find(hql, deId).get(0);
    }

    @Override
    public boolean modifyDetail(DetailEntity detail) throws Exception {
        boolean flag = false;
        try {
            this.getHibernateTemplate().update(detail);
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List<DetailEntity> queryPlaylistByUserId(Integer userId) throws Exception {
        String hql = "from DetailEntity as d where d.user = ?";
        return this.getHibernateTemplate().find(hql, userId);
    }
}
