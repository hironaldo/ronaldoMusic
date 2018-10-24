package com.cheery.service;

import com.cheery.dao.dataInit.IDataInitDao;
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

    public List<PlaylistEntity> queryAllPlaylist(String deType, Integer pageNo, Integer pageSize) throws Exception {
        return initDao.queryAllPlaylist(deType, pageNo, pageSize);
    }

    public int querySheetRows() {
        return initDao.querySheetRows();
    }

    public List<SongEntity> queryAllSong() throws Exception {
        return initDao.queryAllSong();
    }

    public List<SingerEntity> queryAllSinger() throws Exception {
        return initDao.queryAllSinger();
    }

    public List<SingerEntity> queryAllSinger(String siType, String region, String style, Integer pageNo, Integer pageSize) throws Exception {
        return initDao.queryAllSinger(siType, region, style, pageNo, pageSize);
    }

    public int querySingerRows() {
        return initDao.querySingerRows();
    }

    public List<MvEntity> queryAllMv() throws Exception {
        return initDao.queryAllMv();
    }

    public List<UserEntity> userLogin(UserEntity user) throws Exception {
        return initDao.userLogin(user);
    }
}
