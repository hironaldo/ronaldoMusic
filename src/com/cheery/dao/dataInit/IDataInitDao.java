package com.cheery.dao.dataInit;

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

    //查询所有歌手
    List<SingerEntity> queryAllSinger() throws Exception;

    //查询所有mv
    List<MvEntity> queryAllMv() throws Exception;

    //查询所有歌手 【siType --》歌手类型 region --》歌手所在地区 style --》 歌手风格】 这三个参数为空查询所有 一个或以上 就指定查询
    List<SingerEntity> queryAllSinger(String siType, String region, String style, Integer pageNo, Integer pageSize) throws Exception;

    //查询总条数
    int queryRows();

    List<UserEntity> userLogin(UserEntity user) throws Exception;   //登陆
}
