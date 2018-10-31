<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String siId = request.getParameter("siId");
    String siName = request.getParameter("siName");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>歌手详情页</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/public.css" media="all"/>
    <link rel="stylesheet" href="../staticFile/css/singer/singer_info.css" media="all"/>
    <style>
        #mv_box {
            padding-top: 10px;
        }

        #mv_box li {
            display: inline-block;
            width: 180px;
            padding-left: 10px;
        }

        #album_box li {
            display: inline-block;
            width: 175px;
            padding-left: 14px;
        }
    </style>
</head>
<body>
<div>
    <i id="siId" style="display: none;"><%=siId%>
    </i>
    <table style="margin: 10px 0 0 15px;">
        <tr id="singer_info">
        <tr>
    </table>
    <div class="layui-tab layui-tab-brief">
        <ul class="layui-tab-title">
            <li class="layui-this">热门作品</li>
            <li>相关专辑</li>
            <li>最近Mv</li>
            <li>艺人介绍</li>
        </ul>
        <div class="layui-tab-content" id="content">
            <div class="layui-tab-item layui-show">
                <table class="layui-table" lay-skin="nob">
                    <thead>
                    <tr>
                        <th>歌曲</th>
                        <th>歌手</th>
                        <th>流派</th>
                        <th>专辑</th>
                    </tr>
                    </thead>
                    <tbody id="song"></tbody>
                </table>
            </div>
            <div class="layui-tab-item">
                <ul id="album_box"></ul>
            </div>
            <div class="layui-tab-item">
                <ul id="mv_box"></ul>
            </div>
            <div class="layui-tab-item">
                <div id="introduce_box"></div>
            </div>
        </div>
    </div>
</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script src="http://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js" charset="utf-8"></script>
<script id="c-info" type="text/x-jquery-tmpl">
    <td>
        <img src="{{= img1v1Url}}" style="width: 150px;border-radius: 50%"/>
    </td>
    <td style="padding-left: 20px">
        <ul>
            <li style="padding-top: 10px">
                <p>
                    <span style="font-size:24px">{{= name}}</span>
                    <span style="font-size: 12px;color: #666">{{= alias}}</span>
                    <span style="padding-left:10px">
                        <button class="layui-btn layui-btn-primary layui-btn layui-btn-xs">
                          <i class="layui-icon">&#xe609;</i>关注
                        </button>
                    </span>
                </p>
                <p style="font-size: 10px;color: #666">{{= briefDesc}}</p>
            </li>
        </ul>
    </td>
</script>

<script id="c-song" type="text/x-jquery-tmpl">
    <tr>
        <td>
            <div style="display: none;" class="layui-unselect layui-form-checkbox" lay-skin="primary"
                 data-id="">
                <i class="layui-icon">&#xe605;</i>
            </div>
            <img src="../staticFile/images/love.svg" width="16px">
            {{= name}}
        </td>
        <td><%=siName%></td>
        <td>{{= eq}}</td>
        <td>{{= al.name}}</td>
    </tr>
</script>

<script id="c-mv" type="text/x-jquery-tmpl">
   <li>
       <div style="height: 180px">
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

<script id="c-album" type="text/x-jquery-tmpl">
   <li>
       <div style="height: 215px">
            <div>
                <a class="songlist__link mod_cover"> <img src="{{= blurPicUrl}}" class="songlist__pic" style="height: 160px;" /> <i class="mod_cover__mask"></i> <i class="mod_cover__icon_play"></i> </a>
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

<script id="c-introduce" type="text/x-jquery-tmpl">
    <blockquote class="layui-elem-quote">{{= ti}}</blockquote>
    <p style="padding: 3px 0px 10px 40px;font-size: 10px;color: #666;white-space:pre;">{{= txt}}</p>
</script>

<script src="../staticFile/js/singer/singer-info.js" charset="utf-8"></script>
</body>
</html>
