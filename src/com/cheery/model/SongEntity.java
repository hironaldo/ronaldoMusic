package com.cheery.model;

import lombok.*;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
/**
 * SongEntity class 歌曲
 * @author CR7
 * @date 2018/10/10
 */
public class SongEntity implements Serializable {
    private Integer soId;
    private String soName;
    private String soPic;
    private String url;
    private String lyric;
    private String language;
    private String company;
    private String soTime;
    /**
     * 与歌手表构建成多对一的关系
     * */
    private SongEntity song;
}
