package com.cheery.dao.singer;

import com.cheery.model.SingerEntity;
import java.util.List;

public interface ISingerDao {
    /**
     * IUserDao interface 歌手
     *
     * @author CR7
     * @date 2018/10/15
     */

    //查询所有歌手 【siType --》歌手类型 region --》歌手所在地区 style --》 歌手风格】 这三个参数为空查询所有 一个或以上 就指定查询
    List<SingerEntity> queryAllSinger(String siType, String region, String style, Integer pageNo, Integer pageSize) throws Exception;

}
