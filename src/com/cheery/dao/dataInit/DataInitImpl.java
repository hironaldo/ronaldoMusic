package com.cheery.dao.dataInit;

import com.cheery.model.*;
import org.hibernate.*;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.sql.SQLException;
import java.util.List;
import java.lang.*;


public class DataInitImpl extends HibernateDaoSupport implements IDataInitDao {

    @Override
    public List<PlaylistEntity> queryTopPlaylist() throws Exception {
        String hql = "from PlaylistEntity p inner join fetch p.detail d inner join fetch p.user u GROUP BY d.deId ORDER BY d.time desc";
        return this.getHibernateTemplate().find(hql);
    }

//    @Override
//    public List<DetailEntity> queryAllPlaylist(String deType, Integer pageNo, Integer pageSize) throws Exception {
//        String hql = "from DetailEntity as d where 1=1 ";
//
//        if (null != deType) {
//            hql += " and d.deType like '%" + deType + "%'";
//        }
//        hql += " GROUP BY d.deId ORDER BY d.deId desc";
//        final String HQL = hql;
//        final Integer PAGENO = pageNo;
//        final Integer PAGESIZE = pageSize;
//        List sheetList = this.getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
//            @Override
//            public Object doInHibernate(Session session) throws HibernateException, SQLException {
//                Query qy = session.createQuery(HQL);
//                qy.setFirstResult((PAGENO - 1) * PAGESIZE);
//                qy.setMaxResults(PAGESIZE);
//                return qy.list();
//            }
//        });
//        return sheetList;
//    }

    @Override
    public List<PlaylistEntity> queryAllPlaylist(String deType, Integer pageNo, Integer pageSize) throws Exception {
        String hql = "from PlaylistEntity p inner join fetch p.detail d inner join fetch p.user u where 1=1 ";
        if (null != deType) {
            hql += " and d.deType '%" + deType + "'%";
        }
        hql += " GROUP BY d.deId ORDER BY d.deId desc";
        final String HQL = hql;
        final Integer PAGENO = pageNo;
        final Integer PAGESIZE = pageSize;
        List sheetList = this.getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
            @Override
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                Query qy = session.createQuery(HQL);
                qy.setFirstResult((PAGENO - 1) * PAGESIZE);
                qy.setMaxResults(PAGESIZE);
                return qy.list();
            }
        });
        return sheetList;
    }

    @Override
    public int querySheetRows() {
        int myResult = 0;
        String hql = "select count(*) from DetailEntity d where 1=1";
        List result = this.getHibernateTemplate().find(hql);
        if (result != null && result.size() > 0) {
            myResult = Integer.parseInt(result.get(0) + "");
        }
        return myResult;
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
        String hql = "from SingerEntity s where 1=1 ";
        if (null != siType && null != region && null != style) {
            hql += " and s.siType like '%" + siType + "%' and s.region like '%" + region + "%' and s.style like '%" + style + "%'";
        } else if (null != siType && null != region) {
            hql += " and s.siType like '%" + siType + "%' and s.region like '%" + region + "%'";
        } else if (null != siType && null != style) {
            hql += " and s.siType like '%" + siType + "%' and s.style like '%" + style + "%'";
        } else if (null != region && null != style) {
            hql += " and s.region like '%" + region + "%' and s.style like '%" + style + "%'";
        } else if (null != siType) {
            hql += " and s.siType like '%" + siType + "%'";
        } else if (null != region) {
            hql += " and s.region like '%" + region + "%'";
        } else if (null != style) {
            hql += " and s.style like '%" + style + "%'";
        }
        final String HQL = hql;
        final Integer PAGENO = pageNo;
        final Integer PAGESIZE = pageSize;
        List singerList = this.getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
            @Override
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                Query qy = session.createQuery(HQL);
                qy.setFirstResult((PAGENO - 1) * PAGESIZE);
                qy.setMaxResults(PAGESIZE);
                return qy.list();
            }
        });
        return singerList;
    }

    @Override
    public int querySingerRows() {
        int myResult = 0;
        String hql = "select count(*) from SingerEntity s where 1=1";
        List result = this.getHibernateTemplate().find(hql);
        if (result != null && result.size() > 0) {
            myResult = Integer.parseInt(result.get(0) + "");
        }
        return myResult;
    }
}
