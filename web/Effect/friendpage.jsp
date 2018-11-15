<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userId = request.getParameter("userId");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户主页</title>
    <link href="../staticFile/img/logo.ico" rel="shortcut icon">
    <link rel="stylesheet" href="../staticFile/frame/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/scroll-bar.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/yqq.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/personal/friend.css" media="all">
</head>
<body>

<i id="userId" style="display: none">
    <%=userId%>
</i>
<div>
    <table style="margin: 10px 0 0 15px;">
        <tr id="user_info">
        <tr>
    </table>
    <div class="layui-tab layui-tab-brief">
        <ul class="layui-tab-title">
            <li class="layui-this">他的歌单</li>
            <li>他的关注</li>
            <li>他的粉丝</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <ul id="ssheet_box"></ul>
            </div>
            <div class="layui-tab-item">
                <ul id="follow_box"></ul>
            </div>
            <div class="layui-tab-item">
                <ul id="followed_box"></ul>
            </div>
        </div>
    </div>
</div>

<script src="../staticFile/frame/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/layui/layui.all.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.cookie.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.lazyload.js" charset="utf-8"></script>
<script src="../staticFile/js/personal/friend.js" charset="utf-8"></script>
<script id="u-info" type="text/x-jquery-tmpl">
    <td>
        <img src="{{= avatarUrl}}" style="width: 115px;border-radius: 50%"/>
    </td>
    <td style="padding-left: 20px">
        <ul>
            <li style="padding-top: 10px">
                <p style="font-size: 24px;">
                    <span>{{= nickname}}</span>
                    <span id="follow">
                        <b style="display:none">{{= followed}}</b>
                        <button class="layui-btn layui-btn-xs layui-btn-primary ">
                                {{if followed==false}}
                                    <i class="layui-icon">&#xe609;</i>关注
                                {{else}}
                                   <i class="layui-icon">&#xe605;</i>已关注
                                {{else}}

                                {{/if}}
                        </button>
                    </span>
                </p>
                <p style="color: #666;font-size: 12px;padding-top: 5px">Motto：
                    {{if signature == ""}}
                         该用户懒得还没签名哦
                    {{else}}
                        {{= signature}}
                    {{else}}

                    {{/if}}
                </p>
                <p style="font-family: 'Microsoft YaHei';color: #666;font-size: 12px;padding-top: 5px">
                    关注：{{= follows}}&nbsp;&nbsp;&nbsp;
                    粉丝：{{= followeds}}&nbsp;&nbsp;&nbsp;
                    自创歌单：{{= playlistCount}}
                </p>
            </li>
        </ul>
    </td>
</script>

<script id="u-songlist" type="text/x-jquery-tmpl">
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
                    <span style="font-size: 10px;color: #666">{{= creator.nickname}}</span>
                 </div>
            </div>
       </div>
   </li>
</script>

<script id="u-follow" type="text/x-jquery-tmpl">
    <li>
       <div>
            <h1 style="display:none">{{= userId}}</h1>
            <div>
                <img width="130" height="130" data-original="{{= avatarUrl}}" style="border-radius: 50%;"/>
            </div>
            <div>
                 <div style="text-align: center;padding-top:5px">
                    <span style="font-size: 10px;color: #666;">{{= nickname}}</span>
                 </div>
            </div>
       </div>
   </li>
</script>

<script id="u-followed" type="text/x-jquery-tmpl">
    <li>
       <div>
            <h1 style="display:none">{{= userId}}</h1>
            <div>
                <img width="130" height="130" data-original="{{= avatarUrl}}" style="border-radius: 50%;"/>
            </div>
            <div>
                 <div style="text-align: center;padding-top:5px">
                    <span style="font-size: 10px;color: #666;">{{= nickname}}</span>
                 </div>
            </div>
       </div>
   </li>
</script>
</body>
</html>















