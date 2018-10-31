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
    <link rel="stylesheet" type="text/css" href="staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="staticFile/css/public.css" media="all">
    <link rel="stylesheet" type="text/css" href="staticFile/css/nav.css" media="all">
    <link rel="stylesheet" type="text/css" href="staticFile/css/diy.css" media="all">
    <link rel="stylesheet" type="text/css" href="staticFile/css/play.css" media="all">
    <link rel="stylesheet" type="text/css" href="staticFile/css/audio.css" media="all">
</head>
<body>

<!-- app -->
<div style="padding-left: 20px">
    <ul style="display: inline-block">
        <li><img src="staticFile/img/computer.svg" style="width: 50px"></li>
        <li style="text-align: center;color: #FFFFff">此电脑</li>
    </ul>
    <ul style="display: inline-block;padding-left: 15px">
        <li><img src="staticFile/img/file.svg" style="width: 45px;padding-bottom: 5px"></li>
        <li style="text-align: center;color: #FFFFff">文件夹</li>
    </ul>
    <ul style="display: inline-block;padding-left: 15px" id="music">
        <li><img src="staticFile/img/music.svg" style="width: 47px"></li>
        <li style="text-align: center;color: #FFFFff">音乐</li>
    </ul>
</div>
<!-- app -->

<div id="content">
    <div style="width: 1200px;height: 765px;border: 1px #fdffff solid;border-radius: 3px;margin: 0 auto;">
        <!-- 顶部导航 -->
        <div class="layui-layout-admin">
            <div class="layui-header" style="width: 985px;float: right">
                <ul class="layui-nav">
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
                <ul class="layui-nav layui-layout-right">
                    <li class="layui-nav-item">
                        <img src="staticFile/img/minimum.svg" style="width: 25px">
                        <img src="staticFile/img/maximum.svg" style="width: 16px">
                        <img src="staticFile/img/close.svg" style="width: 18px">
                    </li>
                </ul>
                <div id="search_tips" style="display: none">
                    <div>
                        <div>
                            <span style="font-family: 'Microsoft YaHei';font-size: 12px">我的音乐</span>
                            <hr>
                        </div>
                        <div class="my_music">
                            <ul>
                                <li style="background: #eeeeee;">
                                    <span>十年</span>
                                    <span style="float: right">我创建的歌单</span>
                                </li>
                                <li>
                                    <span>十年 - 陈奕迅</span>
                                    <span style="float: right">我收藏的歌单</span>
                                </li>
                                <li><span>十年 - 赵丽颖</span></li>
                            </ul>
                        </div>
                    </div>
                    <div style="padding-top: 20px">
                        <div>
                            <span style="font-family: 'Microsoft YaHei';font-size: 12px">在线音乐</span>
                            <hr>
                        </div>
                        <div class="online_music">
                            <span style="font-family: 'Microsoft YaHei';font-size: 12px">单曲</span>
                            <ul style="padding-left: 25px">
                                <li style="background: #eeeeee;"><span>十年</span></li>
                                <li><span>十年 - 陈奕迅</span></li>
                                <li><span>十年 - 赵丽颖</span></li>
                            </ul>
                        </div>
                        <div class="online_singer">
                            <span style="font-family: 'Microsoft YaHei';font-size: 12px">歌手</span>
                            <ul style="padding-left: 25px">
                                <li style="background: #eeeeee;padding: 3px 10px;">
                                    <img src="staticFile/imgDT/singer/m3.jpg" width="30" style="border-radius: 50%">
                                    <span>&nbsp;陈奕迅</span>
                                </li>
                                <li>
                                    <img src="staticFile/imgDT/singer/m3.jpg" width="30" style="border-radius: 50%">
                                    <span>&nbsp;陈奕迅</span>
                                </li>
                            </ul>
                        </div>
                        <div class="online_sheet">
                            <span style="font-family: 'Microsoft YaHei';font-size: 12px">歌单</span>
                            <ul style="padding-left: 25px">
                                <li style="background: #eeeeee;padding: 3px 10px;">
                                    <img src="https://p.qpic.cn/music_cover/lricrZ3ca62ybvZbWYjtYa2snY5V4BZP7E5vbHtdUnfyTpCeN766rLg/300?n=1"
                                         width="30">
                                    <span>&nbsp;港台风 - 陈奕迅</span>
                                </li>
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
                                <p><i class="layui-icon layui-icon-face-smile-fine"></i>播放列表</p>
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
                        <ul style="text-align: center;">
                            <li><img src="staticFile/img/king.svg" style="width: 35px;"></li>
                            <c:choose>
                                <c:when test="${empty userList}">
                                    <li>
                                        <img src="staticFile/imgDT/user/default.png"
                                             style="width: 75px;border-radius: 50%">
                                    </li>
                                    <li id="login_popup" style="font-size: 12px">请登录 | CR7音乐</li>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="user" items="${userList}" begin="0" end="0">
                                        <li><img src="staticFile/imgDT/user/${user.userPic}"
                                                 style="width: 75px;border-radius: 50%"></li>
                                        <li style="padding-top: 5px">
                                                ${user.userName}
                                            <i class="layui-icon layui-icon-face-surprised"></i>
                                        </li>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
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
                                <li url="Effect/singer.jsp"><i class="layui-icon layui-icon-headset"></i>热门歌手</li>
                                <li id="test" url="Effect/songsheet.jsp"><i class="layui-icon layui-icon-template"></i>分类歌单</li>
                            </ul>
                        </div>
                    </div>
                    <div class="tj">
                        <div class="head">
                            <h4>我的音乐</h4>
                        </div>
                        <div class="list">
                            <ul id="ul2">
                                <li url="Effect/follow.jsp"><i class="layui-icon layui-icon-rate"></i>我喜欢</li>
                                <li url="Effect/download.jsp"><i class="layui-icon layui-icon-download-circle"></i>下载管理
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tj">
                        <div class="head">
                            <h4>我的歌单
                                <span class="right">
                                    <i class="layui-icon layui-icon-add-1"></i>
                                    <i class="icon iconfont icon-down1"></i>
                                </span>
                            </h4>
                        </div>
                        <div class="list">
                            <ul id="ul3">
                                <li url="Effect/songlist.jsp">
                                    <i class="layui-icon layui-icon-tree"></i>荒原里的迷幻吟唱
                                    <span style="float: right"><i class="layui-icon layui-icon-delete"></i></span>
                                </li>
                                <li url="Effect/songlist.jsp">
                                    <i class="layui-icon layui-icon-tree"></i>经典配乐大全
                                    <span style="float: right"><i class="layui-icon layui-icon-delete"></i></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tj">
                        <div class="head">
                            <h4>收藏的歌单</h4>
                        </div>
                        <div class="list">
                            <ul id="ul4">
                                <li url="Effect/songlist.jsp">
                                    <i class="layui-icon layui-icon-tree"></i>独立音乐人的理想之声
                                    <i class="layui-icon layui-icon-delete" style="float: right"></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 左边导航 -->

    </div>
</div>

<!-- 底部 -->
<div class="foot">
    <img src="staticFile/img/footer.png">
</div>

<script src="staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="staticFile/UIframe/jquery.pjax.js" charset="utf-8"></script>
<script type="text/javascript" src="staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script type="text/javascript" src="staticFile/js/audio.js" charset="utf-8"></script>
<script type="text/javascript" src="staticFile/js/player.js" charset="utf-8"></script>
<script type="text/javascript" src="staticFile/js/index.js" charset="utf-8"></script>

</body>

</html>
