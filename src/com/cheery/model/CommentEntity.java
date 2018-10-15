package com.cheery.model;

import lombok.*;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
/**
 * CommentEntity class 评论
 * @author CR7
 * @date 2018/10/10
 */
public class CommentEntity implements Serializable {
    private Integer coId;
    private String content;
    private String time;
    private Integer give;
    private Integer ungive;
    /**
     * 与用户表 歌曲 歌单表构成多对一关系
     * */
    private UserEntity user;
    private PlaylistEntity playlist;
}
