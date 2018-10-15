package com.cheery.dao.playlist;

import com.cheery.model.PlaylistEntity;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class PlaylistDaoImpl extends HibernateDaoSupport implements IPlaylistDao {
    @Override
    public List<PlaylistEntity> queryAllPlaylist() throws Exception {
        return null;
    }
}
