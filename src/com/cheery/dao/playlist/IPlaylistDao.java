package com.cheery.dao.playlist;

import com.cheery.model.DetailEntity;
import com.cheery.model.PlaylistEntity;

import java.util.List;

public interface IPlaylistDao {
    /**
     * IUserDao interface 歌单
     *
     * @author CR7
     * @date 2018/10/15
     */

    /*根据歌单id查询歌单信息--> [歌单基本信息、歌曲和评论]*/
    PlaylistEntity queryPlaylistById(Integer plId) throws Exception;

    /*根据歌单id删除歌单--> [歌单详情表和歌单表都要删]*/
    boolean deletePlaylistById(Integer plId) throws Exception;

    /*添加歌单--> [歌单详情表]*/
    boolean addPlaylist(DetailEntity detail) throws Exception;

    /*根据歌曲id 歌单id 用户id 添加歌曲单歌单*/
    boolean addSongToPlaylist(Integer userId,Integer deId,Integer soId) throws Exception;

    /*修改歌单--> [歌单详情表]*/
    boolean modifyPlaylist(Integer plId) throws Exception;
}
