<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String slistId = request.getParameter("slistId");
    String picurl = request.getParameter("picurl");
    String nickname = request.getParameter("nickname");
    String userId = request.getParameter("userId");
    String tags = request.getParameter("tags");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>歌单详情页</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/songsheet/songsheet_info.css" media="all">
    <link rel="stylesheet" href="../staticFile/UIframe/paging/paging.css" media="all">
    <style>
        #ssheetinfo_box{
            cursor: pointer;
        }

        #song:hover{
            cursor: pointer;
        }
    </style>
</head>
<body>

<table style="margin:10px 0 0 20px;" id="ssheetinfo_box">
</table>

<div class="layui-tab layui-tab-brief" style="background-color: white;">
    <ul class="layui-tab-title">
        <li class="layui-this">全部歌曲</li>
        <li>相关评论</li>
    </ul>
    <div class="layui-tab-content" id="content">
        <div class="layui-tab-item  layui-show">
            <table class="layui-table" lay-skin="nob">
                <thead>
                <tr>
                    <th>
                        <div style="display: none;" class="layui-unselect header layui-form-checkbox"
                             lay-skin="primary">
                            <i class="layui-icon">&#xe605;</i></div>&nbsp;歌曲
                    </th>
                    <th>歌手</th>
                </tr>
                </thead>
                <tbody id="song"></tbody>
            </table>
        </div>
        <div class="layui-tab-item">
            <textarea id="comment" maxlength="140"></textarea>
            <div style="padding-top: 5px;float: right;">
                <span id="num" style="font-size: 12px;color: #666;">0/140</span>
                <button id="send" class="layui-btn layui-btn-xs" style="">
                    <i class="layui-icon">&#xe609;</i>评论
                </button>
            </div>
            <div style="padding-top: 30px">
                <p style="padding-bottom: 5px;" id="total"></p>
                <span class="layui-badge-dot"></span>&nbsp;&nbsp;精彩评论
                <ul id="content_top" style="padding-top: 10px;"></ul>
                <span class="layui-badge-dot layui-bg-green"></span>&nbsp;&nbsp;最新评论
                <ul id="content_new" style="padding-top: 10px;"></ul>
                <div class="pagger-box pagger" id="box"></div>
            </div>
        </div>
    </div>
</div>

<i id="slistId" style="display: none;">
    <%=slistId%>
</i>
<i id="userId" style="display: none;">
    <%=userId%>
</i>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/paging/paging.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/jquery.cookie.js" charset="utf-8"></script>
<script src="../staticFile/js/songsheet/songsheet_info.js" charset="utf-8"></script>

<script id="c-info" type="text/x-jquery-tmpl">
    <tr>
        <td>
            <img src="{{= songListPic}}" width="150"/>
        </td>
        <td style="padding-left: 20px">
            <ul>
                <li>
                    <span style="font-size: 24px;">{{= songListName}}</span>
                </li>
                <li id="uinfo" style="padding-top: 5px">
                    <span style="font-size: 10px;color: #666">
                        <img src="<%=picurl%>" width="30" style="border-radius: 50%">&nbsp;<%=nickname%>
                        <span style="padding-left:20px">#<%=tags%></span>
                    </span>
                </li>
                <li style="padding-top: 5px">
                    <p style="font-size: 10px;color: #666;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:780px;">{{= songListDescription}}</p>
                </li>
                <li style="padding-top: 10px">
                    <button class="layui-btn layui-btn-sm layui-btn-primary">
                        <i class="layui-icon">&#xe652;</i>播放全部
                    </button>
                </li>
            </ul>
        </td>
    <tr>
</script>

<script id="c-song" type="text/x-jquery-tmpl">
    <tr>
      <td>
        <div style="display: none;" class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id="">
          <i class="layui-icon">&#xe605;</i>
        </div>
        {{= name}}
      </td>
      <td>{{= singer}}</td>
    </tr>
</script>

<script id="c-total" type="text/x-jquery-tmpl">
    <span class="layui-badge-rim">共{{= total}}条评论</span>
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
             <p class="nikename">{{= user.nickname}}</p>
             <span style="font-size: 12px;color: #666;padding-left:15px">{{= content}}</span>
             <p style="font-size: 12px;padding-top: 3px;color: #666">
                 <span style="float: right">
                    <i class="layui-icon">&#xe6c6;</i>&nbsp;{{= likedCount}}
                 </span>
             </p>
         </div>
     </li>
     <hr>
</script>

<script src="../staticFile/js/songsheet/songsheet_info-reload.js" charset="utf-8"></script>
</body>
</html>