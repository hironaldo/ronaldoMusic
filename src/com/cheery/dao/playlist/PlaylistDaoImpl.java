package com.cheery.dao.playlist;

import com.cheery.model.PlaylistEntity;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class PlaylistDaoImpl extends HibernateDaoSupport implements IPlaylistDao {
    @Override
    //查询所有歌单
    public List<PlaylistEntity> queryAllPlaylist() throws Exception {
        String hql = "from PlaylistEntity p inner join fetch p.detail d GROUP BY d.deId ORDER BY d.time desc ";
        return this.getHibernateTemplate().find(hql);
    }
}
