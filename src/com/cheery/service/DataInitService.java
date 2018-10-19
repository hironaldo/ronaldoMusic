package com.cheery.service;

import com.cheery.dao.dataInitDao.IDataInitDao;
import com.cheery.model.*;

import java.util.List;

public class DataInitService {
    private IDataInitDao initDao;

    public void setInitDao(IDataInitDao initDao) {
        this.initDao = initDao;
    }

    public List<PlaylistEntity> queryTopPlaylist() throws Exception {
        return initDao.queryTopPlaylist();
    }

    public List<SongEntity> queryAllSong() throws Exception {
        return initDao.queryAllSong();
    }

    public List<MvEntity> queryAllMv() throws Exception {
        return initDao.queryAllMv();
    }

    public List<UserEntity> userLogin(UserEntity user) throws Exception {
        return initDao.userLogin(user);
    }
}
