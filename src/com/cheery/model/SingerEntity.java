package com.cheery.model;

import lombok.*;

import java.io.Serializable;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
/**
 * SingerEntity class 歌手
 * @author CR7
 * @date 2018/10/10
 */
public class SingerEntity implements Serializable {
    private Integer siId;
    private String siName;
    private String otName;
    private String siPic;
    private String siType;
    private String nationality;
    private String area;
    private String region;
    private String vocation;
    private String style;
    private String explain;
    /**
     * 与歌曲表构建成一对多的关系
     * */
    private List<SongEntity> songList;
}
