package com.cheery.dao.dataInit;

import com.cheery.model.*;
import org.hibernate.*;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import java.sql.SQLException;
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
    public List<SingerEntity> queryAllSinger(String siType, String region, String style, Integer pageNo, Integer pageSize) throws Exception {
        String hql = "from SingerEntity s where 1=1";
        if (siType == null && region == null && style == null) {
            return this.getHibernateTemplate().find(hql);
        } else if (siType != null) {
            hql += " where siType=?";
            return this.getHibernateTemplate().find(hql, siType);
        } else if (region != null) {
            hql += " where region=?";
            return this.getHibernateTemplate().find(hql, region);
        } else if (style != null) {
            hql += " where style=?";
            return this.getHibernateTemplate().find(hql, style);
        } else if (siType != null && style != null) {
            hql += " where siType=? and style=?";
            return this.getHibernateTemplate().find(hql, siType, style);
        } else if (siType != null && region != null) {
            hql += " where siType=? and region=?";
            return this.getHibernateTemplate().find(hql, siType, region);
        } else if (style != null && region != null) {
            hql += " where style=? and region=?";
            return this.getHibernateTemplate().find(hql, style, region);
        } else if (style != null && region != null && siType != null) {
            hql += " where style=? and region=? and siType=?";
            return this.getHibernateTemplate().find(hql, style, region, siType);
        }
        final String HQL = hql;
        final Integer PAGENO = pageNo;
        final Integer PAGESIZE = pageSize;
        List singerList = this.getHibernateTemplate()
                .executeFind(new HibernateCallback<Object>() {
                                 @Override
                                 public Object doInHibernate(Session session)
                                         throws HibernateException, SQLException {
                                     Query qy = session.createQuery(HQL);
                                     qy.setMaxResults(PAGESIZE);
                                     qy.setFirstResult((PAGENO - 1) * PAGESIZE);
                                     return qy.list();
                                 }
                             }
                );
        return singerList;

    }

    //查询条数
    @Override
    public int queryRows() {
        int myResult = 0;
        System.out.println("aaa");
        String hql = "select count(*) from SingerEntity s where 1=1";
        List result = this.getHibernateTemplate().find(hql);
        if (result != null && result.size() > 0) {
            myResult = Integer.parseInt(result.get(0) + "");
        }
        return myResult;
    }

    @Override
    public List<UserEntity> userLogin(UserEntity user) throws Exception {
        String hql = "from UserEntity as u inner join fetch u.playList where u.phone = ? and u.password = ?";
        return this.getHibernateTemplate().find(hql, new Object[]{user.getPhone(), user.getPassword()});
    }
}
