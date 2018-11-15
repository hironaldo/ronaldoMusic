<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>官方推荐页面</title>
    <link href="../staticFile/img/logo.ico" rel="shortcut icon">
    <link rel="stylesheet" href="../staticFile/frame/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/scroll-bar.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/yqq.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/choice/choice.css" media="all">
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
        <div style="padding-left: 7px;">
            <span style="font-size: 16px;">歌 单 速 递</span>
            <a href="songsheet.jsp">
                <span style="padding-left: 807px;color: #666;font-size: 12px;">更多</span>
            </a>
        </div>
        <ul id="songsheet_top"></ul>
    </div>
    <!-- 推荐的歌单 -->

    <!-- 歌手 -->
    <div class="singer">
        <div style="padding-left: 6px;">
            <span style="font-size: 16px;">热 门 歌 手</span>
            <a href="singer.jsp">
                <span style="padding-left: 807px;color: #666;font-size: 12px;">更多</span>
            </a>
        </div>
        <ul id="singer_top"></ul>
    </div>
    <!-- 歌手 -->

    <!-- 排行榜 -->
    <div class="ranking" style="padding-left: 10px;padding-top:15px">
        <div style="padding-left: 20px;">
            <span style="font-size: 16px;">音 乐 巅 峰 榜</span>
        </div>
        <ul style="padding-left: 20px;padding-top:10px">
            <li class="toplist__item mod_cover">
                <div class="toplist__box">
                    <div class="toplist__bg"></div>
                    <i class="mod_cover__icon_play" id="icon_play"></i>
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
        <div style="padding-left: 5px;">
            <span style="font-size: 16px;">最 新 M V</span>
        </div>
        <div>
            <ul id="mv_top"></ul>
        </div>
    </div>
    <!-- Mv -->
</div>

<script src="../staticFile/frame/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/layui/layui.all.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.lazyload.js" charset="utf-8"></script>
<script src="../staticFile/js/choice/zturn.js" charset="utf-8"></script>
<script src="../staticFile/js/choice/choice.js" charset="utf-8"></script>
<script id="ranking" type="text/x-jquery-tmpl">
    <li class="toplist__song">
        <h1 style="display:none">{{= id}}</h1>
        <div class="toplist__songname">
            <a>{{= name}}</a>
        </div>
    </li>
</script>

<script id="mv" type="text/x-jquery-tmpl">
    <li>
        <div style="height: 180px">
            <h1 style="display: none;">{{= id}}</h1>
            <h2 style="display: none;">
                {{each artists}}
                    <span>{{= id}}</span>
                {{/each}}
            </h2>
            <div class="box_img">
                <a class="songlist__link mod_cover">
                    <img class="songlist__pic" width="215" height="120" data-original="{{= cover}}" />
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
        </div>
    </li>
</script>

<script id="singer" type="text/x-jquery-tmpl">
    <li>
        <div style="height: 195px">
            <h1 style="display: none;">{{= id}}</h1>
            <h2 style="display: none;">{{= name}}</h2>
            <div class="box_img">
                <img width="160" height="160" data-original="{{= img1v1Url}}" />
            </div>
            <div>
                <div><span style="font-size: 14px">{{= name}}</span></div>
                <div><span style="font-size: 10px;color: #666">{{= alias}}</span></div>
            </div>
        </div>
    </li>
</script>

<script id="song_sheet" type="text/x-jquery-tmpl">
    <li>
       <div style="height: 210px">
            <h1 style="display: none;">{{= id}}</h1>
            <h2 style="display: none;">{{= creator.avatarUrl}}</h2>
            <h3 style="display: none;">{{= creator.nickname}}</h3>
            <h4 style="display: none;">{{= creator.userId}}</h4>
            <h5 style="display: none;">{{= tags}}</h5>
            <div>
                <a class="songlist__link mod_cover">
                    <img class="songlist__pic" width="160" height="160" data-original="{{= coverImgUrl}}" />
                    <i class="mod_cover__mask"></i>
                    <i class="mod_cover__icon_play"></i>
                </a>
            </div>
            <div>
                 <div>
                    <p style="font-size: 13px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:160px;">{{= name}}</p>
                 </div>
                 <div style="height: 5px"></div>
                 <div>
                    <p style="font-size: 10px;color: #666;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:160px;">{{= creator.nickname}}</p>
                 </div>
            </div>
       </div>
   </li>
</script>
</body>
</html>