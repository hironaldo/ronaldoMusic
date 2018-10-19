package com.cheery.model;

import lombok.*;

import java.io.Serializable;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
/**
 * UserEntity class Mv
 * @author CR7
 * @date 2018/10/10
 */
public class MvEntity implements Serializable {
    private Integer mvId;
    private String mvName;
    private String mvPic;
    private String mvUrl;
    private String mvAuthor;
    private String mvType;
    private String time;
    private String explain;
}

