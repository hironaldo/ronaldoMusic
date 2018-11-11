<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String abId = request.getParameter("abId");
    String siId = request.getParameter("siId");
%>
<html>
<head>
    <title>专辑详情</title>
    <link rel="stylesheet" href="../staticFile/frame/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/frame/paging/paging.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/scroll-bar.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/yqq.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/album/album.css" media="all">
</head>
<body>

<i id="abId" style="display: none">
    <%=abId%>
</i>
<i id="siId" style="display: none">
    <%=siId%>
</i>
<div style="margin:10px 0 0 20px;">
    <table id="albuminfo_box">
    </table>
    <div>
        <div>
            <p style="padding-top: 10px">
                <span class="layui-badge-dot layui-bg-blue"></span>&nbsp;&nbsp;专辑所包含的单曲
            </p>
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
        <p style="padding-top: 10px">
            <span class="layui-badge-dot layui-bg-orange"></span>&nbsp;&nbsp;该歌手的相关专辑
        </p>
        <ul id="album_box" style="padding-top: 10px"></ul>
        <div>
            <p style="display: none" id="total"></p>
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
                <div class="pagger-box pagger" id="box"></div>
            </div>
        </div>
    </div>
</div>
<script src="../staticFile/frame/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/layui/layui.all.js" charset="utf-8"></script>
<script src="../staticFile/frame/paging/paging.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.cookie.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.lazyload.js" charset="utf-8"></script>
<script src="../staticFile/js/album/album.js" charset="utf-8"></script>
<script id="c-info" type="text/x-jquery-tmpl">
    <tr>
        <td>
            <img src="{{= picUrl}}" width="150"/><img src="../staticFile/img/album_cover.png" width="170" style="position: absolute;left: 20px;"/>
        </td>
        <td style="padding-left: 30px">
            <ul>
                <li>
                    <span style="font-size: 24px;">{{= name}}</span>
                </li>
                <li>
                    <span id="siName" style="font-size: 10px;cursor: pointer;">{{= artist.name}}</span>
                </li>
                <li>
                    <span style="font-size: 10px;color: #666;">{{= company}} {{= subType}}</span>
                </li>
                <li style="padding-top: 5px">
                    <p style="font-size: 10px;color: #666;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:780px;">{{= description}}</p>
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
          <i class="layui-icon">&#xe605;</i></div>
        <img src="../staticFile/images/love.svg" width="16px">
        {{= name}}
      </td>
      <td>
        {{= singer}}
      </td>
    </tr>
</script>

<script id="c-album" type="text/x-jquery-tmpl">
   <li>
       <div style="height: 215px">
            <h1 style="display:none">{{= id}}</h1>
            <div>
                <a class="songlist__link mod_cover">
                    <img class="songlist__pic" width="160" height="160" data-original="{{= blurPicUrl}}"/>
                    <i class="mod_cover__mask"></i>
                    <i class="mod_cover__icon_play"></i>
                </a>
            </div>
            <div>
                 <div>
                    <p style="font-size: 13px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:160px;">{{= name}}</p>
                 </div>
                 <div style="height: 3px"></div>
                 <div>
                    <span style="font-size: 10px;color: #666">{{= artist.name}}</span>
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

<script id="c-total" type="text/x-jquery-tmpl">{{= total}}</script>

</body>
</html>
