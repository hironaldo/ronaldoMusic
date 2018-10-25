package com.cheery.dao.singer;

import com.cheery.model.SingerEntity;

public interface ISingerDao {
    /**
     * IUserDao interface 歌手
     *
     * @author CR7
     * @date 2018/10/25
     */

    /*根据歌手id查询歌手信息--> [歌手基本信息和名下所有歌曲]*/
    SingerEntity querySingerById(Integer siId) throws Exception;
}
