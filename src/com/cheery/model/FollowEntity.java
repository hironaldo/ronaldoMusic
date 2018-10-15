package com.cheery.model;

import lombok.*;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
/**
 * FollowEntity class 关注/收藏
 * @author CR7
 * @date 2018/10/10
 */
public class FollowEntity implements Serializable {
    private Integer foId;
    private Integer type;
    /**
     * 与用户表 歌曲 歌单 歌手表构成多对一关系
     */
    private UserEntity user;
    private SongEntity song;
    private PlaylistEntity playlist;
    private SingerEntity singer;
}
