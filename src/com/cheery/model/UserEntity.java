package com.cheery.model;

import lombok.*;
import java.io.Serializable;
import java.util.List;
import java.util.Set;

@Data
@NoArgsConstructor
@AllArgsConstructor
/**
 * UserEntity class 用户
 * @author CR7
 * @date 2018/10/10
 */
public class UserEntity implements Serializable {
    private Integer userId;
    private String userName;
    private String userPic;
    private String phone;
    private String password;
    private String info;
    private String gender;
    private Integer age;
    /**
     * 与评论表 关注表 歌单表构建成一对多的关系
     * */

    private List<CommentEntity> commentList;
    private List<FollowEntity> followList;
    private List<DetailEntity> playList;
}

