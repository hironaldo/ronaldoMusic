<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>官方推荐页面</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/public.css"/>
    <link rel="stylesheet" href="../staticFile/css/choice/style.css" media="all">
    <style>
        #songsheet_top {
            padding-top: 15px;
        }

        #songsheet_top li {
            display: inline-block;
            width: 178px;
            padding-left: 8px;
        }
    </style>
</head>
<body>

<div>
    <!-- 轮播 -->
    <div class="container" style="padding-top: 10px">
        <div class="pictureSlider poster-main">
            <ul id="zturn" class="poster-list">
                <c:forEach var="songsheet" items="${playlist}" begin="22" end="27">
                    <li class="poster-item  zturn-item">
                        <div class="for_btn">
                            <img src="../staticFile/imgDT/songsheet/${songsheet.detail.otPic}"
                                 width="100%">
                        </div>

                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!-- 轮播 -->

    <!-- 推荐的歌单 -->
    <div class="song_sheet">
        <div style="padding-left: 13px;">
            <span style="font-size: 18px;">歌 单 推 荐</span>
            <a href="songsheet.jsp">
                <span style="padding-left: 792px;color: #666;font-size: 12px;">更多</span>
            </a>
        </div>
        <ul id="songsheet_top"></ul>
    </div>
    <!-- 推荐的歌单 -->

    <!-- 歌手 -->
    <div class="singer">
        <div style="padding-left: 14px;">
            <span style="font-size: 18px;">乐 人</span>
            <a href="singer.jsp">
                <span style="padding-left: 840px;color: #666;font-size: 12px;">更多</span>
            </a>
        </div>
        <table>
            <tr id="singer_top">
            </tr>
        </table>
    </div>
    <!-- 歌手 -->

    <!-- 音乐 -->
    <div style="padding-left: 40px;padding-top: 20px">
        <div>
            <span style="font-size: 18px;">音 乐</span>
        </div>
        <div class="mod_songlist">
            <div class="slide__list js_list">
                <ul class="songlist__list">
                    <c:forEach var="song" items="${songlist}" begin="6" end="14" varStatus="sta">
                        <li class="songlist__item">
                            <div class="songlist__item_box">
                                <a class="album_name songlist__link mod_cover" style="padding-right: 10px">
                                    <img src="../staticFile/imgDT/song/${song.soPic}" width="90">
                                    <i class="mod_cover__icon_play"></i>
                                </a>
                                <div>
                                    <h3 class="songlist__song">${song.soName}</h3>
                                    <p class="songlist__author" style="font-size: 10px;color: #666;">
                                            ${song.singer.siName}
                                    </p>
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
    <div class="ranking" style="padding-left: 20px;padding-top:20px">
        <div style="padding-left: 20px;">
            <span style="font-size: 18px;">巅 峰 榜</span>
        </div>
        <ul style="padding-left: 21px;padding-top:20px">
            <li class="toplist__item mod_cover">
                <div class="toplist__box">
                    <div class="toplist__bg"></div>
                    <i class="mod_cover__icon_play"></i>
                    <i class="toplist__line"></i>
                    <h3 class="toplist__hd"><a class="toplist__tit" style="color: #fff">流行指数</a></h3>
                    <ul class="toplist__songlist" id="pop_song">
                    </ul>
                </div>
            </li>
            <li class="toplist__item item2 mod_cover">
                <div class="toplist__box">
                    <div class="toplist__bg"></div>
                    <i class="mod_cover__icon_play"></i>
                    <i class="toplist__line"></i>
                    <h3 class="toplist__hd"><a class="toplist__tit" style="color: #fff">热歌</a></h3>
                    <ul class="toplist__songlist" id="hot_song">
                    </ul>
                </div>
            </li>
            <li class="toplist__item item3 mod_cover">
                <div class="toplist__box">
                    <div class="toplist__bg"></div>
                    <i class="mod_cover__icon_play"></i>
                    <i class="toplist__line"></i>
                    <h3 class="toplist__hd"><a class="toplist__tit" style="color: #fff">新歌</a></h3>
                    <ul class="toplist__songlist" id="new_song">
                    </ul>
                </div>
            </li>
            <li class="toplist__item item4 mod_cover">
                <div class="toplist__box">
                    <div class="toplist__bg"></div>
                    <i class="mod_cover__icon_play"></i>
                    <i class="toplist__line"></i>
                    <h3 class="toplist__hd"><a class="toplist__tit" style="color: #fff">欧美</a></h3>
                    <ul class="toplist__songlist" id="eur_song">
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
                <tr id="mv_beg"></tr>
                <tr id="mv_end"></tr>
            </table>
        </div>
    </div>
    <!-- Mv -->

</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="http://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js" charset="utf-8"></script>
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

<script id="ranking" type="text/x-jquery-tmpl">
    <li class="toplist__song">
        <div class="toplist__songname">
            <a>{{= name}}</a>
        </div>
    </li>

</script>

<script id="mv" type="text/x-jquery-tmpl">
    <td>
        <div class="box_img">
            <a class="songlist__link mod_cover">
                <img class="songlist__pic" src="{{= cover}}">
                <i class="mod_cover__mask"></i>
                <i class="mod_cover__icon_play"></i>
            </a>
        </div>
        <div>
            <div>
                <p style="overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:215px;">{{= name}}</p>
            </div>
            <div style="font-size: 10px;color: #666">{{= artistName}}</div>
        </div>
    </td>

</script>

<script id="singer" type="text/x-jquery-tmpl">
    <td>
        <div>
            <div class="box_img">
                <img class="songlist__pic" src="{{= img1v1Url}}" style="width: 170px">
            </div>
            <div>
                <div><span style="font-size: 14px">{{= name}}</span></div>
                <div><span style="font-size: 10px;color: #666">{{= alias}}</span></div>
            </div>
        </div>
    </td>

</script>

<script id="song_sheet" type="text/x-jquery-tmpl">
    <li>
        <div style="height: 215px">
            <div>
                <a class="songlist__link mod_cover"> <img src="{{= picUrl}}" class="songlist__pic" style="height: 172px;" /> <i class="mod_cover__mask"></i> <i class="mod_cover__icon_play"></i> </a>
            </div>
            <div style="height: 5px"></div>
            <div>
                 <div>
                    <p style="font-size: 13px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:172px;">{{= name}}</p>
                 </div>
            </div>
       </div>
    </li>

</script>
<script src="../staticFile/js/choice/choice.js" charset="utf-8"></script>
</body>
</html>