package com.cheery.model;

import lombok.*;

import java.io.Serializable;

@Data
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
    private String dePic;
    private String label;
    private String explain;
}
