<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Music For CR7</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="staticFile/img/logo.ico" rel="shortcut icon">
    <link rel="stylesheet" href="staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="staticFile/css/public.css" media="all">
    <link rel="stylesheet" href="staticFile/css/nav.css" media="all">
    <link rel="stylesheet" href="staticFile/css/diy.css" media="all">
    <link rel="stylesheet" href="staticFile/css/play.css" media="all">
    <link rel="stylesheet" href="staticFile/css/audio.css" media="all">
</head>
<body>

<!-- app -->
<div style="padding-left: 20px">
    <ul style="display: inline-block">
        <li><img src="staticFile/img/computer.svg" style="width: 50px"></li>
        <li style="font-size: 12px;text-align: center;color: #FFFFff">此电脑</li>
    </ul>
    <ul style="display: inline-block;padding-left: 15px" id="ppt">
        <li><img src="staticFile/img/ppt.svg" style="width: 40px;padding-bottom: 5px"></li>
        <li style="font-size: 12px;text-align: center;color: #FFFFff">PPT</li>
    </ul>
    <ul style="display: inline-block;padding-left: 15px" id="music">
        <li><img src="staticFile/img/music.svg" style="width: 47px"></li>
        <li style="font-size: 12px;text-align: center;color: #FFFFff">音乐</li>
    </ul>
</div>
<!-- app -->

<div id="content">
    <div style="width: 1200px;height: 765px;border: 1px #fdffff solid;border-radius: 3px;margin: 0 auto;">
        <!-- 顶部导航 -->
        <div class="layui-layout-admin">
            <div class="layui-header" style="width: 985px;float: right">
                <ul class="layui-nav" id="ul_left">
                    <li class="layui-nav-item">
                        <img src="staticFile/img/left-slip.svg" style="width: 25px">
                        <img src="staticFile/img/right-slip.svg" style="width: 25px">
                        <img src="staticFile/img/refresh.svg" style="width: 19px">
                        <span style="padding-left: 20px">
                            <input type="text" placeholder="搜索音乐、歌手、歌单" id="search"
                                   autocomplete="off"
                                   maxlength="15"
                                   onkeyup="this.value=this.value.replace(/\s/g,'');">
                            <img src="staticFile/img/search.svg" style="width: 20px">
                        </span>

                    </li>
                </ul>
                <ul class="layui-nav layui-layout-right" id="ul_right">
                    <li class="layui-nav-item">
                        <img src="staticFile/img/minimum.svg" style="width: 25px">
                        <img src="staticFile/img/close.svg" style="width: 18px">
                    </li>
                </ul>
                <div id="search_tips" style="display: none">
                    <div>
                        <div>
                            <span style="font-family: 'Microsoft YaHei';font-size: 12px">热门搜索</span>
                            <hr>
                        </div>
                        <div class="my_music">
                            <ul id="hot_search">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 顶部导航 -->

        <!-- 主体内容 -->
        <div id="main-wrap" class="riht_body">
            <iframe src="init" width='100%' height='100%' frameborder="0" scrolling="yes"></iframe>
        </div>
        <!-- 主体内容 -->

        <!-- 播放控件 -->
        <div class="audio-box" style="width: 1200px;">
            <div class="audio-container">
                <div class="audio-cover"></div>
                <div class="audio-view">
                    <h3 class="audio-title">未知歌曲</h3>
                    <div class="audio-body">
                        <div class="audio-backs">
                            <div class="audio-this-time">00:00</div>
                            <div class="audio-count-time">00:00</div>
                            <div class="audio-setbacks">
                                <i class="audio-this-setbacks">
                                    <span class="audio-backs-btn"></span>
                                </i>
                                <span class="audio-cache-setbacks">
							</span>
                            </div>
                        </div>
                    </div>
                    <div class="audio-btn">
                        <div class="audio-select">
                            <div class="audio-prev"></div>
                            <div class="audio-play"></div>
                            <div class="audio-next"></div>
                            <div class="audio-menu"></div>
                            <div class="audio-collection"></div>
                            <div class="audio-volume"></div>
                        </div>
                        <div class="audio-set-volume">
                            <div class="volume-box">
                                <i><span></span></i>
                            </div>
                        </div>
                        <div class="audio-list">
                            <div class="audio-list-head">
                                <p>播放列表</p>
                                <span class="menu-close">关闭</span>
                            </div>
                            <ul class="audio-inline">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 播放控件 -->

        <!-- 左边导航 -->
        <div class="p_body">
            <div class="left_list">
                <div class="list">
                    <div style="padding-top: 10px">
                        <ul style="text-align: center;" id="userinfo">
                            <li><img src="staticFile/img/king.svg" style="width: 35px;"></li>
                            <li>
                                <img src="staticFile/imgDT/user/default.png" style="width: 75px;border-radius: 50%">
                            </li>
                            <li id="login_popup" style="font-size: 12px;cursor: pointer">请登录 | CR7音乐</li>
                        </ul>
                    </div>
                    <div class="tj">
                        <div class="head">
                            <h4>推荐</h4>
                        </div>
                        <div class="list">
                            <ul id="ul1">
                                <li class="act" url="Effect/choice.jsp"><i class="layui-icon layui-icon-fire"></i>官方精选
                                </li>
                                <li url="Effect/singer.jsp"><i class="layui-icon layui-icon-username"></i>热门歌手</li>
                                <li id="test" url="Effect/songsheet.jsp"><i class="layui-icon layui-icon-template"></i>分类歌单
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tj">
                        <div class="head">
                            <h4>个人中心</h4>
                        </div>
                        <div class="list">
                            <ul id="ul2">
                                <li url="Effect/mypage.jsp"><i class="layui-icon layui-icon-chat"></i>我的主页</li>
                            </ul>
                        </div>
                    </div>
                    <div class="tj">
                        <div class="head">
                            <h4>我的歌单
                                <span class="right">
                                    <i class="layui-icon layui-icon-add-1"></i>
                                </span>
                            </h4>
                        </div>
                        <div class="list">
                            <ul id="ul3">
                                <span class="tip" style="padding-left: 60px;font-size: 12px">
                                    还没登录呢 <i class="layui-icon layui-icon-face-cry"></i>
                                </span>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 左边导航 -->
    </div>
</div>


<!-- 新建歌单 -->
<%--<div style="width: 400px;height: 200px;background-color: red;z-index: 9999;position: absolute;left: 50%;top: 20%">--%>
    <%--<div>--%>
        <%--<span>QQ音乐</span>--%>
    <%--</div>--%>
<%--</div>--%>


<!-- 底部 -->
<div class="foot">
    <img src="staticFile/img/footer.png">
</div>

<script src="staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="staticFile/UIframe/jquery.cookie.js" charset="utf-8"></script>
<script src="staticFile/UIframe/jquery.pjax.js" charset="utf-8"></script>
<script src="staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script src="staticFile/UIframe/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="staticFile/UIframe/jquery.lazyload.js" charset="utf-8"></script>
<script src="staticFile/js/audio.js" charset="utf-8"></script>
<script src="staticFile/js/player.js" charset="utf-8"></script>
<script src="staticFile/js/index/index.js" charset="utf-8"></script>

<script id="m-songlist" type="text/x-jquery-tmpl">
     <li style="overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:200px;">
         <i class="layui-icon layui-icon-tree"></i>{{= name}}
         <h1 style="display: none;">{{= id}}</h1>
         <h2 style="display: none;">{{= creator.avatarUrl}}</h2>
         <h3 style="display: none;">{{= creator.nickname}}</h3>
         <h4 style="display: none;">{{= creator.userId}}</h4>
         <h5 style="display: none;">{{= tags}}</h5>
     </li>
</script>

<script id="h-search" type="text/x-jquery-tmpl">
    {{each hots}}
        <li onmouseover="this.style.cssText='background: #eeeeee;'" onmouseout="this.style.cssText='background: #FFFFFF;'">
            <span>{{= first}}</span>
        </li>
    {{/each}}
</script>
<script type="text/javascript" src="staticFile/js/index/index-reload.js" charset="utf-8"></script>
</body>

</html>
