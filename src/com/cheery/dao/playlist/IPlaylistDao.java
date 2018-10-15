package com.cheery.dao.playlist;

import com.cheery.model.PlaylistEntity;

import java.util.List;

public interface IPlaylistDao {
    /**
     * IUserDao interface 歌单
     * @author CR7
     * @date 2018/10/15
     */

    List<PlaylistEntity> queryAllPlaylist() throws Exception;
}
