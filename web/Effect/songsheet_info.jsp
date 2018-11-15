<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String slistId = request.getParameter("slistId");
    String userId = request.getParameter("userId");
    String tags = request.getParameter("tags");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>歌单详情页</title>
    <link href="../staticFile/img/logo.ico" rel="shortcut icon">
    <link rel="stylesheet" href="../staticFile/frame/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/frame/paging/paging.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/songsheet/songsheet_info.css" media="all">
</head>
<body>

<table style="margin:10px 0 0 20px;" id="ssheetinfo_box"></table>

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
                            <input name="song" type="checkbox" style="position: relative;top: 2px;"/>&nbsp;歌曲
                        </th>
                        <th>歌手</th>
                        <th>专辑</th>
                    </tr>
                </thead>
                <tbody id="song"></tbody>
            </table>
        </div>
        <div class="layui-tab-item">
            <textarea id="comment" maxlength="140" onkeyup="this.value=this.value.replace(/\s/g,'');"></textarea>
            <div style="padding-top: 5px;float: right;">
                <span id="num" style="font-size: 12px;color: #666;">0/140</span>
                <button id="send" class="layui-btn layui-btn-primary layui-btn-xs">
                    <i class="layui-icon">&#xe604;</i>评论
                </button>
            </div>
            <div style="padding-top: 30px">
                <p style="padding-bottom: 5px">
                    <span style="padding-bottom: 5px;cursor: pointer" id="refresh">
                        <span class="layui-badge-rim">刷新</span>
                    </span>
                    <span style="padding-bottom: 5px;" id="total"></span>
                </p>
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

<script src="../staticFile/frame/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/layui/layui.all.js" charset="utf-8"></script>
<script src="../staticFile/frame/paging/paging.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.cookie.js" charset="utf-8"></script>
<script src="../staticFile/js/songsheet/songsheet_info.js" charset="utf-8"></script>

<script id="c-info" type="text/x-jquery-tmpl">
    <tr>
        <td>
            <img src="{{= coverImgUrl}}" width="150"/>
        </td>
        <td style="padding-left: 20px">
            <ul>
                <li>
                    <span style="font-size: 24px;">{{= name}}</span>
                </li>
                <li id="uinfo" style="padding-top: 5px">
                    <span style="font-size: 10px;color: #666;cursor: pointer;">
                        <img src="{{= creator.avatarUrl}}" width="30" style="border-radius: 50%">&nbsp;{{= creator.nickname}}
                        <span style="padding-left:20px">#<%=tags%></span>
                    </span>
                </li>
                <li style="padding-top: 5px">
                    <p style="font-size: 10px;color: #666;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:780px;">{{= description}}</p>
                </li>
                <li style="padding-top: 10px">
                    {{if id != 2490125966 }}
                        <span id="addsong">
                            <button class="layui-btn layui-btn-sm layui-btn-primary">
                                <i class="layui-icon">&#xe654;</i>添至喜欢
                            </button>
                        </span>
                        <span id="collection">
                            <h1 style="display:none">{{= id}}</h1>
                            <h2 style="display:none">{{= subscribed}}</h2>
                            <button class="layui-btn layui-btn-sm layui-btn-primary ">
                                {{if subscribed == false}}
                                    <i class="layui-icon">&#xe600;</i>收藏
                                {{else}}
                                    <i i class="layui-icon">&#xe605;</i>已收藏
                                {{else}}

                                {{/if}}
                            </button>
                        </span>
                    {{/if}}
                </li>
            </ul>
        </td>
    <tr>
</script>

<script id="c-song" type="text/x-jquery-tmpl">
{{each tracks}}
    <tr>
        <td style="cursor: pointer;">
            <input name="song" type="checkbox" data-id={{= id}} style="position: relative;top: 2px;"/>
            <span>
                <h1 style="display:none">{{= id}}</h1>
                <h2 style="display:none">{{= name}}</h2>
                {{each ar}}
                      <h3 style="display:none">{{= name}}</h3>
                {{/each}}
                <h4 style="display:none">{{= al.picUrl}}</h4>
                {{= name}}
            </span>
        </td>
        <td>
            {{each ar}}
               {{= name}}
            {{/each}}
        </td>
        <td class="album">
            <h1 style="display:none">{{= al.id}}</h1>
            <h2 style="display:none">
                {{each ar}}
                   <span>{{= id}}</span>
                {{/each}}
            </h2>
            <span style="overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:250px;">{{= al.name}} </span>
        </td>
    </tr>
{{/each}}
</script>

<script id="c-total" type="text/x-jquery-tmpl">
    <span class="layui-badge-rim"><b>{{= total}}</b>条评论</span>
</script>

<script id="t-comment" type="text/x-jquery-tmpl">
     <li>
         <h1 style="display:none">{{= commentId}}</h1>
         <h2 style="display:none">{{= liked}}</h2>
         <h3 style="display:none"><%=slistId%></h3>
         <div style="float: left">
             <img src="{{= user.avatarUrl}}" width="40" style="border-radius: 50%">
         </div>
         <div style="padding-left: 50px">
             <p>{{= user.nickname}}</p>
             <span style="font-size: 12px;color: #666;padding-left:15px">{{= content}}</span>
             <p style="font-size: 12px;padding-top: 3px;color: #666">
                <span style="float: right;cursor: pointer;padding-right: 7px;">
                  {{if liked == false}}
                      <img src="../staticFile/images/ungive.svg" width="15">
                  {{else}}
                     <img src="../staticFile/images/give.svg" width="15">
                  {{else}}

                  {{/if}}
                  {{= likedCount}}
                 </span>
             </p>
         </div>
     </li>
     <hr>
</script>

<script id="n-comment" type="text/x-jquery-tmpl">
     <li>
         <h1 style="display:none">{{= commentId}}</h1>
         <h2 style="display:none">{{= liked}}</h2>
         <h3 style="display:none"><%=slistId%></h3>
         <div style="float: left">
             <img src="{{= user.avatarUrl}}" width="40" style="border-radius: 50%">
         </div>
         <div style="padding-left: 50px">
             <p class="nikename">{{= user.nickname}}</p>
             <span style="font-size: 12px;color: #666;padding-left:15px">{{= content}}</span>
             <p style="font-size: 12px;padding-top: 3px;color: #666">
                <span style="float: right;cursor: pointer;padding-right: 7px;">
                  {{if liked == false}}
                      <img src="../staticFile/images/ungive.svg" width="15">
                  {{else}}
                     <img src="../staticFile/images/give.svg" width="15">
                  {{else}}

                  {{/if}}
                  {{= likedCount}}
                </span>
             </p>
         </div>
     </li>
     <hr>
</script>
</body>
</html>