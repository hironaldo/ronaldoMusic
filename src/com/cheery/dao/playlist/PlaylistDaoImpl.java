package com.cheery.dao.playlist;

import com.cheery.model.DetailEntity;
import com.cheery.model.PlaylistEntity;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class PlaylistDaoImpl extends HibernateDaoSupport implements IPlaylistDao {

    @Override
    public PlaylistEntity queryPlaylistById(Integer plId) throws Exception {
        return null;
    }

    @Override
    public boolean deletePlaylistById(Integer plId) throws Exception {
        return false;
    }

    @Override
    public boolean addPlaylist(DetailEntity detail) throws Exception {
        return false;
    }

    @Override
    public boolean addSongToPlaylist(Integer userId, Integer deId, Integer soId) throws Exception {
        return false;
    }

    @Override
    public boolean modifyPlaylist(Integer plId) throws Exception {
        return false;
    }
}
