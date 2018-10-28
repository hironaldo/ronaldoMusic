package com.cheery.service;

import com.cheery.dao.playlist.IPlaylistDao;
import com.cheery.dao.user.IUserDao;
import com.cheery.model.*;

import java.util.List;

public class PlayListService {
    private IPlaylistDao playlistDao;

    public void setPlaylistDao(IPlaylistDao playlistDao) {
        this.playlistDao = playlistDao;
    }

    public List<PlaylistEntity> queryPlaylistById(DetailEntity detail) throws Exception {
        return playlistDao.queryPlaylistById(detail);
    }

    List<DetailEntity> queryPlaylistByUserId(Integer userId) throws Exception {
        return playlistDao.queryPlaylistByUserId(userId);
    }

}
