<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mv播放页</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <style>

        * {
            margin: 0px;
            padding: 0px;
            font-family: -apple-system, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Microsoft YaHei, Source Han Sans SC, Noto Sans CJK SC, WenQuanYi Micro Hei, sans-serif;
        }
        body {
            overflow-x: hidden;
            overflow-y: auto;
            height: 100%;
        }

        body::-webkit-scrollbar {
            -webkit-border-radius: 2em;
            -moz-border-radius: 2em;
            border-radius: 2em;
            background-color: #D4D4D4;
            width: 8px;
        }

        body::-webkit-scrollbar-thumb {
            border-radius: 5px;
            -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
            background: rgba(0, 0, 0, 0.2);
        }

        body::-webkit-scrollbar-track {
            -webkit-border-radius: 2em;
            -moz-border-radius: 2em;
            border-radius: 2em;
            background-color: #f5f5f7;
        }

        .nav {
            display: inline;
            white-space: nowrap;
        }

        .nav li {
            display: inline-block;
            padding-left: 25px
        }

        .nav span {
            color: #31C27C;
        }

        /*#song div {*/
            /*padding-top: 8px*/
        /*}*/

        /*table {*/
            /*margin: 0 auto;*/
        /*}*/

        /*table tr td {*/
            /*padding: 20px;*/
        /*}*/

        /*table tr td > div {*/
            /*background: #F0F0F0;*/
            /*padding-left: 25px;*/
            /*padding-right: 25px;*/
            /*padding-bottom: 15px;*/
            /*box-shadow: 4px 9px 15px #88887A;*/
        /*}*/

        /*table tr td > div img {*/
            /*width: 100px;*/
            /*border-radius: 50%*/
        /*}*/

        /*.downnav {*/
            /*display: inline;*/
            /*white-space: nowrap;*/
        /*}*/

        /*.downnav li {*/
            /*display: inline-block;*/
            /*padding-left: 85px*/
        /*}*/

        /*.hot{*/
            /*display: block;*/
            /*position: absolute;*/
            /*top: 205px;*/
            /*left: 175px;*/
            /*background-position: -190px 0;*/
        /*}*/

    </style>
</head>
<body>

<link href="https://cdnjs.cloudflare.com/ajax/libs/dplayer/1.22.2/DPlayer.min.css" rel="stylesheet">
<div id="dplayer"></div>
<div style="padding-top: 30px">Sleep Away<br></div>
<div>演唱：Lexie刘柏辛 2.36万观看 发布时间：2018-10-10</div>
<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/dplayer/1.22.2/DPlayer.min.js"></script>
<script>
    var dp = new DPlayer({
        container: document.getElementById('dplayer'),
        screenshot: true,
        autoplay: false,
        video: {
            url: 'http://110.52.197.15/vcloud1049.tc.qq.com/1049_M0120000003UFKpQ05u4wl1001577808.f40.mp4?vkey=90E82EDD6B1010548146795122D573EBB5C8A4E5A08D8F90ED383C8F53EA3BCDE6F2D3DF2C334AFC9EEEBDC273013E050FE64B53CE46B6951CA437884DDB5CBF8A6B950D154B9352A701E8BEC021FB61F473A3B88CF8982B'
        }
    });
</script>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
</body>
</html>