package com.cheery.model;

import lombok.*;

import java.io.Serializable;
import java.util.Date;

@Getter
@Setter


@NoArgsConstructor
@AllArgsConstructor
/**
 * DetailEntity class 歌单详情
 * @author CR7
 * @date 2018/10/10
 */
public class DetailEntity implements Serializable {
    private Integer deId;
    private String deName;
    private String time;
    private String dePic;
    private String otPic;
    private String deType;
    private String label;
    private String explain;
    /**
     * 与用户表构成多对一的关系
     */
    private UserEntity user;
}
