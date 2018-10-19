package com.cheery.dao.dataInitDao;

import com.cheery.model.*;

import java.util.List;

public interface IDataInitDao {
    /**
     * IUserDao interface 首页数据初始化
     *
     * @author CR7
     * @date 2018/10/16
     */

    //前十歌单
    List<PlaylistEntity> queryTopPlaylist() throws Exception;

    //查询所有歌曲
    List<SongEntity> queryAllSong() throws Exception;

    //查询所有mv
    List<MvEntity> queryAllMv() throws Exception;

    List<UserEntity> userLogin(UserEntity user) throws Exception;   //登陆
}
