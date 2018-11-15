<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Player for CR7 lalala~</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="staticFile/img/logo.ico" rel="shortcut icon">
    <link rel="stylesheet" href="staticFile/frame/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="staticFile/frame/APlayer/APlayer.min.css">
    <link rel="stylesheet" href="staticFile/css/common/yqq.css" media="all">
    <link rel="stylesheet" href="staticFile/css/common/nav.css" media="all">
    <link rel="stylesheet" href="staticFile/css/common/play.css" media="all">
    <link rel="stylesheet" href="staticFile/css/common/audio.css" media="all">
    <link rel="stylesheet" href="staticFile/css/common/index.css" media="all">
    <script src="staticFile/frame/jquery-2.1.1.min.js" charset="utf-8"></script>
    <script src="staticFile/frame/APlayer/APlayer.min.js"></script>
    <script>
        $(function () {
            window.ap = new APlayer({
                container: document.getElementById('aplayer'),
                mini: false,
                autoplay: false,
                listFolded: true,
                mutex: true,
                theme: '#31C27C',
                loop: 'all',
                order: 'random',
                preload: 'auto',
                volume: 0.5,
                listMaxHeight: 90,
                lrcType: 3,
                audio: [
                    {
                        name: '飘洋过海来看你',
                        artist: '刘明湘',
                        url: 'http://music.163.com/song/media/outer/url?id=436016654.mp3',
                        cover: 'http://p1.music.126.net/J2HiKv21CrWmFCRsDvKDCw==/3440371896385963.jpg?param=300x300',
                        lrc: 'staticFile/frame/APlayer/飘洋过海来看你-刘明湘.lrc'
                    }
                ]
            });
        });
    </script>
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
                            <input type="text" placeholder="搜索音乐、专辑、歌手、歌单、Mv"
                                   autocomplete="off"
                                   maxlength="15"
                                   onkeyup="this.value=this.value.replace(/\s/g,'');">
                            <img id="search-img" src="staticFile/img/search.svg"
                                 style="width: 20px;position: relative;right: 250px;">
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
                    <div class="h-search" style="display: none">
                        <div>
                            <span style="font-family: 'Microsoft YaHei';font-size: 12px">热门搜索</span>
                            <hr>
                        </div>
                        <div>
                            <ul id="hot_search"></ul>
                        </div>
                    </div>
                    <div class="t-search" style="display: none">
                        <div style="padding-top: 20px">
                            <div>
                                <span style="font-family: 'Microsoft YaHei';font-size: 12px">在线搜索</span>
                                <hr>
                            </div>
                            <div class="online_music"></div>
                            <div class="online_singer"></div>
                            <div class="online_album"></div>
                            <div class="online_sheet"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 顶部导航 -->

        <!-- 主体内容 -->
        <div id="main-wrap" class="riht_body">
            <iframe id="myFrame" name="myFrame" src="init" width='100%' height='100%' frameborder="0" scrolling="yes"></iframe>
        </div>
        <!-- 主体内容 -->

        <!-- 左边导航 -->
        <div class="p_body">
            <div class="left_list">
                <div class="list">
                    <div style="padding-top: 10px">
                        <ul style="text-align: center;" id="userinfo">
                            <li>
                                <img src="staticFile/img/king.svg" style="width: 35px;">
                            </li>
                            <li>
                                <img src="staticFile/imgDT/user/default.png" style="width: 75px;border-radius: 50%">
                            </li>
                            <li id="login_popup" style="font-size: 12px;cursor: pointer">
                                请登录 | CR7音乐
                            </li>
                        </ul>
                    </div>
                    <div class="tj">
                        <div class="head">
                            <h4>推荐</h4>
                        </div>
                        <div class="list">
                            <ul id="ul1">
                                <li class="act" url="Effect/choice.jsp">
                                    <i class="layui-icon layui-icon-fire"></i>官方精选
                                </li>
                                <li url="Effect/singer.jsp">
                                    <i class="layui-icon layui-icon-username"></i>全部.歌手
                                </li>
                                <li id="test" url="Effect/songsheet.jsp">
                                    <i class="layui-icon layui-icon-template"></i>分类歌单
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
                                <li url="Effect/mypage.jsp">
                                    <i class="layui-icon layui-icon-chat"></i>我的主页
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tj">
                        <div class="head">
                            <h4>我的歌单
                                <span class="right">
                                    <i class="layui-icon layui-icon-refresh-1"></i>
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

        <!-- 播放控件 -->
        <div id="aplayer"></div>
        <!-- 播放控件 -->

    </div>
</div>
<!-- 底部 -->
<div class="foot">
    <img src="staticFile/img/footer.png">
</div>

<script src="staticFile/frame/layui/layui.all.js" charset="utf-8"></script>
<script src="staticFile/frame/jquery.cookie.js" charset="utf-8"></script>
<script src="staticFile/frame/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="staticFile/frame/jquery.lazyload.js" charset="utf-8"></script>
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
        <span style="padding-left: 10px;">{{= first}}</span>
    </li>
{{/each}}

</script>

<script id="h-song" type="text/x-jquery-tmpl">
<span style="font-family: 'Microsoft YaHei';font-size: 12px">单曲</span>
<ul id="song" style="padding-left: 25px">
    {{each songs}}
        <li style="overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:150px;" onmouseover="this.style.cssText='background: #eeeeee;'" onmouseout="this.style.cssText='background: #FFFFFF;'">
            <span style="padding-left: 10px;">
                {{= name}} - {{each artists}} {{= name}} {{/each}}
            </span>
        </li>
    {{/each}}
</ul>

</script>

<script id="h-singer" type="text/x-jquery-tmpl">
<span style="font-family: 'Microsoft YaHei';font-size: 12px">歌手</span>
<ul style="padding-left: 25px">
    {{each artists}}
        <li style="overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:150px;" onmouseover="this.style.cssText='background: #eeeeee;'" onmouseout="this.style.cssText='background: #FFFFFF;'">
            <img src="{{= img1v1Url}}" width="30" style="border-radius: 50%">
            <span>&nbsp;{{= name}}</span>
        </li>
    {{/each}}
</ul>

</script>

<script id="h-album" type="text/x-jquery-tmpl">
<span style="font-family: 'Microsoft YaHei';font-size: 12px">专辑</span>
<ul style="padding-left: 25px">
    {{each albums}}
        <li style="overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:150px;" onmouseover="this.style.cssText='background: #eeeeee;'" onmouseout="this.style.cssText='background: #FFFFFF;'">
            <img src="{{= picUrl}}" width="30">
            <span>&nbsp;{{= name}}</span>
        </li>
    {{/each}}
</ul>

</script>

<script id="h-sheet" type="text/x-jquery-tmpl">
<span style="font-family: 'Microsoft YaHei';font-size: 12px">歌单</span>
<ul style="padding-left: 25px">
    {{each playlists}}
        <li style="overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:150px;" onmouseover="this.style.cssText='background: #eeeeee;'" onmouseout="this.style.cssText='background: #FFFFFF;'">
            <img src="{{= coverImgUrl}}" width="30">
            <span>&nbsp;{{= name}}</span>
        </li>
    {{/each}}
</ul>

</script>
<script src="staticFile/js/index/index-reload.js" charset="utf-8"></script>
</body>

</html>