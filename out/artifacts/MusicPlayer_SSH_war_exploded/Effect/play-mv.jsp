<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String plId = request.getParameter("plId");
    String siId = request.getParameter("siId");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mv播放页</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/mv/mv.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/public.css" media="all">
    <link rel="stylesheet" href="../staticFile/UIframe/DPlayer/DPlayer.min.css">
    <link rel="stylesheet" href="../staticFile/UIframe/paging/paging.css" media="all">
    <style>
        #mv_box {
            padding-top: 10px;
        }

        #mv_box li {
            display: inline-block;
            width: 180px;
            padding-left: 10px;
        }
    </style>
</head>
<body>

<i id="plId" style="display: none"><%=plId%>
</i>
<i id="siId" style="display: none"><%=siId%>
</i>
<div id="dplayer"></div>
<div style="padding-top: 10px;padding-left: 10px">
    <div id="mv_info"></div>
    <div style="padding-top: 10px">
        <span class="layui-badge-dot layui-bg-green"></span>&nbsp;&nbsp;相关Mv
        <ul id="mv_box"></ul>
    </div>
    <div style="padding-top: 10px">
        <textarea id="comment" maxlength="140"></textarea>
        <div style="padding-top: 5px;padding-right: 14px;float: right;">
            <span id="num" style="font-size: 12px;color: #666;">0/140</span>
            <button id="send" class="layui-btn layui-btn-xs" style="">
                <i class="layui-icon">&#xe609;</i>评论
            </button>
        </div>
        <div style="padding-top: 30px">
            <span class="layui-badge-dot"></span>&nbsp;&nbsp;精彩评论
            <ul id="content_top" style="padding-top: 10px;"></ul>
            <span class="layui-badge-dot layui-bg-green"></span>&nbsp;&nbsp;最新评论
            <ul id="content_new" style="padding-top: 10px;"></ul>
        </div>
        <div class="pagger-box pagger" id="box"></div>
    </div>
</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/DPlayer/DPlayer.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/jquery.cookie.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/paging/paging.js" charset="utf-8"></script>
<script src="../staticFile/js/mv/mv.js" charset="utf-8"></script>
<script id="mv" type="text/x-jquery-tmpl">
    <h1 id="mvurl" style="display:none">{{= url}}</h1>
    <h2>{{= name}}</h2>
    <p style="font-size: 10px;color: #666"><span>演唱：<span id="siName" style="color: #000000">{{= singer}}</span>&nbsp;发布时间：{{= publishTime}}</span></p>
    <p style="font-size: 10px;color: #666;"><span">简介：{{= desc}}</span></p>
</script>

<script id="c-mv" type="text/x-jquery-tmpl">
   <li>
       <div style="height: 180px">
            <h1 style="display:none">{{= id}}</h1>
            <div>
                <a class="songlist__link mod_cover"> <img src="{{= imgurl16v9}}" class="songlist__pic" style="height: 103px;" /> <i class="mod_cover__mask"></i> <i class="mod_cover__icon_play"></i> </a>
            </div>
            <div>
                 <div>
                    <p style="font-size: 14px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:180px;">{{= name}}</p>
                 </div>
                 <div>
                    <p style="font-size: 12px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:160px;">{{= artist.name}}</p>
                 </div>
                 <div>
                    <span style="font-size: 10px;color: #666">{{= publishTime}}</span>
                 </div>
            </div>
       </div>
   </li>
</script>

<script id="t-comment" type="text/x-jquery-tmpl">
     <li>
         <div style="float: left">
             <img src="{{= user.avatarUrl}}" width="40" style="border-radius: 50%">
         </div>
         <div style="padding-left: 50px">
             <p>{{= user.nickname}}</p>
             <span style="font-size: 12px;color: #666;padding-left:15px">{{= content}}</span>
             <p style="font-size: 12px;padding-top: 3px;color: #666">
                 <span style="float: right"><i class="layui-icon">&#xe6c6;</i>&nbsp;{{= likedCount}}</span>
             </p>
         </div>
     </li>
     <hr>
</script>

<script id="n-comment" type="text/x-jquery-tmpl">
     <li>
         <div style="float: left">
             <img src="{{= user.avatarUrl}}" width="40" style="border-radius: 50%">
         </div>
         <div style="padding-left: 50px">
             <p>{{= user.nickname}}</p>
             <span style="font-size: 12px;color: #666;padding-left:15px">{{= content}}</span>
             <p style="font-size: 12px;padding-top: 3px;color: #666">
                 <span style="float: right"><i class="layui-icon">&#xe6c6;</i>&nbsp;{{= likedCount}}</span>
             </p>
         </div>
     </li>
     <hr>
</script>
<script src="../staticFile/js/mv/mv-reload.js" charset="utf-8"></script>
</body>
</html>