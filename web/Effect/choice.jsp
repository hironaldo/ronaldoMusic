<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>官方推荐页面</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/UIframe/public.css"/>
    <link rel="stylesheet" href="../staticFile/css/choice/style.css" media="all">
</head>
<body>


<div>

    <!-- 轮播 -->
    <div class="lb_gl" style="padding-top: 10px">
        <div class="container">
            <div class="pictureSlider poster-main">
                <div class="poster-btn poster-prev-btn"></div>
                <ul id="zturn" class="poster-list">
                    <li class="poster-item  zturn-item">
                        <div class="for_btn">
                            <img src="http://y.gtimg.cn/music/common//upload/t_musicmall_focus/353949.jpg?max_age=2592000"
                                 width="100%">
                        </div>
                    </li>
                    <li class="poster-item  zturn-item">
                        <div class="for_btn">
                            <img src="http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/370388.jpg?max_age=2592000"
                                 width="100%">
                        </div>
                    </li>

                    <li class="poster-item  zturn-item">
                        <div class="for_btn">
                            <img src="http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/414424.jpg?max_age=2592000"
                                 width="100%">
                        </div>
                    </li>
                    <li class="poster-item  zturn-item">
                        <div class="for_btn">
                            <img src="http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/368061.jpg?max_age=2592000"
                                 width="100%">
                        </div>
                    </li>
                    <li class="poster-item  zturn-item">
                        <div class="for_btn">
                            <img src="http://y.gtimg.cn/music/common//upload/t_musicmall_focus/367537.jpg?max_age=2592000"
                                 width="100%">
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 轮播 -->

    <!-- 推荐的歌单 -->
    <div class="song_sheet">
        <div style="padding-left: 20px;">
            <span style="font-size: 18px;">歌 单 推 荐</span>
            <span style="padding-left: 791px;color: #666;">换一换</span>
        </div>
        <table>
            <tr>
                <c:forEach var="songsheet" items="${playlist}" begin="0" end="4">
                    <td>
                        <div>
                            <div class="box_img">
                                <a class="songlist__link mod_cover">
                                    <img src="../staticFile/imgDT/songsheet/${songsheet.detail.dePic}.jpg"
                                         class="songlist__pic">
                                    <i class="mod_cover__mask"></i>
                                    <i class="mod_cover__icon_play"></i>
                                </a>
                            </div>
                            <div>
                                <div><span style="font-size: 14px">${songsheet.detail.deName}</span></div>
                                <div><span style="font-size: 10px;color: #666">${songsheet.user.userName}</span></div>
                                <div><span style="font-size: 10px;color: #666">${songsheet.detail.time}</span></div>
                            </div>
                        </div>
                    </td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach var="songsheet" items="${playlist}" begin="5" end="9">
                    <td style="padding-top: 20px">
                        <div>
                            <div class="box_img">
                                <a class="songlist__link mod_cover">
                                    <img class="songlist__pic"
                                         src="../staticFile/imgDT/songsheet/${songsheet.detail.dePic}.jpg">
                                    <i class="mod_cover__mask"></i>
                                    <i class="mod_cover__icon_play"></i>
                                </a>
                            </div>
                            <div>
                                <div><span style="font-size: 14px">${songsheet.detail.deName}</span></div>
                                <div><span style="font-size: 10px;color: #666">${songsheet.user.userName}</span></div>
                                <div><span style="font-size: 10px;color: #666">${songsheet.detail.time}</span></div>
                            </div>
                        </div>
                    </td>
                </c:forEach>
            </tr>
        </table>
    </div>
    <!-- 推荐的歌单 -->

    <!-- 歌手 -->
    <div class="singer">
        <div style="padding-left: 20px;">
            <span style="font-size: 18px;">乐 人</span>
            <span style="padding-left: 839px;color: #666;">换一换</span>
        </div>
        <table>
            <tr>
                <c:forEach var="singer" items="${singerlist}" begin="0" end="4">
                    <td>
                        <div>
                            <div class="box_img">
                                <img class="songlist__pic"
                                     src="../staticFile/imgDT/singer/${singer.siPic}.jpg" style="width: 170px">
                            </div>
                            <div>
                                <div><span style="font-size: 14px">${singer.siName}</span></div>
                                <div><span style="font-size: 10px;color: #666">${singer.otName}</span></div>
                            </div>
                        </div>
                    </td>
                </c:forEach>
            </tr>
        </table>
    </div>
    <!-- 歌手 -->

    <!-- 音乐 -->
    <div style="padding-left: 40px;padding-top: 20px">
        <div>
            <span style="font-size: 18px;">音 乐</span>
            <span style="padding-left: 839px;color: #666;">换一换</span>
        </div>
        <div class="mod_songlist">
            <div class="slide__list js_list">
                <ul class="songlist__list">
                    <c:forEach var="song" items="${songlist}" begin="6" end="14" varStatus="sta">
                        <li class="songlist__item">
                            <div class="songlist__item_box">
                                <a class="album_name songlist__link mod_cover" style="padding-right: 10px">
                                    <img src="../staticFile/imgDT/song/${song.soPic}.jpg" width="90">
                                    <i class="mod_cover__icon_play"></i>
                                </a>
                                <div>
                                    <h3 class="songlist__song">${song.soName}</h3>
                                    <p class="songlist__author">${song.singer.siName}</p>
                                </div>
                                <div class="songlist__time" style="font-size: 12px;color: #999;">${song.soTime}</div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <!-- 音乐 -->

    <!-- 排行榜 -->
    <div class="ranking" style="padding-left: 25px;padding-top:20px">
        <div style="padding-left: 20px;">
            <span style="font-size: 18px;">巅 峰 榜</span>
        </div>
        <ul style="padding-left: 25px;padding-top:20px">
            <li class="toplist__item mod_cover">
                <div class="toplist__box">
                    <div class="toplist__bg"></div>
                    <i class="mod_cover__icon_play"></i>
                    <i class="toplist__line"></i>
                    <h3 class="toplist__hd"><a class="toplist__tit" style="color: #fff">流行指数</a></h3>
                    <ul class="toplist__songlist">
                        <li class="toplist__song">
                            <div class="toplist__number">1</div>
                            <div class="toplist__songname">
                                <a>没说什么</a>
                            </div>
                            <div class="toplist__artist">
                                <a>张杰</a>
                            </div>
                        </li>
                        <li class="toplist__song">
                            <div class="toplist__number">2</div>
                            <div class="toplist__songname">
                                <a>静悄悄</a>
                            </div>
                            <div class="toplist__artist">
                                <a>大泫</a>
                            </div>
                        </li>
                        <li class="toplist__song">
                            <div class="toplist__number">3</div>
                            <div class="toplist__songname">
                                <a>东西</a>
                            </div>
                            <div class="toplist__artist">
                                <a>林俊呈</a>
                            </div>
                        </li>
                        <li class="toplist__song">
                            <div class="toplist__number">4</div>
                            <div class="toplist__songname">
                                <a>可不可以</a>
                            </div>
                            <div class="toplist__artist">
                                <a>艾辰</a>
                            </div>
                        </li>

                    </ul>
                </div>
            </li>
            <li class="toplist__item item2 mod_cover">
                <div class="toplist__box">
                    <div class="toplist__bg"></div>
                    <i class="mod_cover__icon_play"></i>
                    <i class="toplist__line"></i>
                    <h3 class="toplist__hd"><a class="toplist__tit" style="color: #fff">热歌</a></h3>
                    <ul class="toplist__songlist">
                        <c:forEach var="song_tw" items="${songlist}" begin="20" end="25" varStatus="sta">
                            <li class="toplist__song">
                                <div class="toplist__number">${sta.index-19}</div>
                                <div class="toplist__songname">
                                    <a>${song_tw.soName}</a>
                                </div>
                                <div class="toplist__artist">
                                    <a>${song_tw.singer.siName}</a>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </li>
            <li class="toplist__item item3 mod_cover">
                <div class="toplist__box">
                    <div class="toplist__bg"></div>
                    <i class="mod_cover__icon_play"></i>
                    <i class="toplist__line"></i>
                    <h3 class="toplist__hd"><a class="toplist__tit" style="color: #fff">新歌</a></h3>
                    <ul class="toplist__songlist">
                        <c:forEach var="song_t" items="${songlist}" begin="7" end="10" varStatus="sta">
                            <li class="toplist__song">
                                <div class="toplist__number">${sta.index-6}</div>
                                <div class="toplist__songname">
                                    <a>${song_t.soName}</a>
                                </div>
                                <div class="toplist__artist">
                                    <a>${song_t.singer.siName}</a>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </li>

            <li class="toplist__item item4 mod_cover">
                <div class="toplist__box">
                    <div class="toplist__bg"></div>
                    <i class="mod_cover__icon_play"></i>
                    <i class="toplist__line"></i>
                    <h3 class="toplist__hd"><a class="toplist__tit" style="color: #fff">欧美</a></h3>
                    <ul class="toplist__songlist">
                        <c:forEach var="song" items="${songlist}" begin="0" end="3" varStatus="sta">
                            <li class="toplist__song">
                                <div class="toplist__number">${sta.index+1}</div>
                                <div class="toplist__songname">
                                    <a>${song.soName}</a>
                                </div>
                                <div class="toplist__artist">
                                    <a>${song.singer.siName}</a>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </li>

        </ul>
    </div>
    <!-- 排行榜 -->

    <!-- Mv -->
    <div class="mv">
        <div style="padding-left: 20px;">
            <span style="font-size: 18px;">M V</span>
        </div>
        <div>
            <table>
                <tr>
                    <c:forEach var="mv" items="${mvlist}" begin="0" end="3">
                        <td>
                            <div class="box_img">
                                <a class="songlist__link mod_cover">
                                    <img class="songlist__pic"
                                         src="../staticFile/imgDT/mv/${mv.mvPic}.jpg">
                                    <i class="mod_cover__mask"></i>
                                    <i class="mod_cover__icon_play"></i>
                                </a>
                            </div>
                            <div>
                                <div><span style="font-size: 14px">${mv.mvName}</span></div>
                                <div><span style="font-size: 10px;color: #666">${mv.mvAuthor}</span></div>
                            </div>
                        </td>
                    </c:forEach>
                </tr>
                <tr>
                    <c:forEach var="mv_t" items="${mvlist}" begin="4" end="8">
                        <td>
                            <div class="box_img">
                                <a class="songlist__link mod_cover">
                                    <img class="songlist__pic"
                                         src="../staticFile/imgDT/mv/${mv_t.mvPic}.jpg">
                                    <i class="mod_cover__mask"></i>
                                    <i class="mod_cover__icon_play"></i>
                                </a>
                            </div>
                            <div>
                                <div><span style="font-size: 14px">${mv_t.mvName}</span></div>
                                <div><span style="font-size: 10px;color: #666">${mv_t.mvAuthor}</span></div>
                            </div>
                        </td>
                    </c:forEach>
                </tr>
            </table>
        </div>
    </div>
    <!-- Mv -->

</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script src="../staticFile/js/choice/zturn.js" charset="utf-8"></script>
<!-- 轮播 -->
<script type="text/javascript">
    var aa = new zturn({
        id: "zturn",
        opacity: 0.9,
        width: 382,
        Awidth: 1024,
        scale: 0.9
    })
</script>

</body>
</html>