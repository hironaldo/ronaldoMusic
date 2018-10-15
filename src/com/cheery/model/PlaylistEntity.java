package com.cheery.model;

import lombok.*;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
/**
 * PlaylistEntity class 歌单
 * @author CR7
 * @date 2018/10/10
 */
public class PlaylistEntity implements Serializable {
    private Integer plId;

    /**
     * 与用户表构成多对一的关系
     */
    private UserEntity user;

    /**
     * 与歌曲表 歌单详情表构成多对多关系
     */
    private SongEntity song;
    private DetailEntity detail;
}
