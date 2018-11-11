<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String keyStr = request.getParameter("keyStr");
%>
<html>
<head>
    <title>搜索结果页</title>
    <link rel="stylesheet" href="../staticFile/frame/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/scroll-bar.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/yqq.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/search/search.css" media="all">
</head>
<body>
<i id="keyStr" style="display: none;">
    <%=keyStr%>
</i>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
    <ul class="layui-tab-title">
        <li class="layui-this">单曲</li>
        <li>专辑</li>
        <li>歌单</li>
        <li>Mv</li>
        <li>歌手</li>
        <li>用户</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <table id="o-ele" class="layui-table" lay-skin="nob">
                <thead>
                <tr>
                    <th>歌曲</th>
                    <th>歌手</th>
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
            <ul id="songlist_box"></ul>
        </div>
        <div class="layui-tab-item">
            <ul id="mv_box"></ul>
        </div>
        <div class="layui-tab-item">
            <ul id="singer_box"></ul>
        </div>
        <div class="layui-tab-item">
            <ul id="user_box"></ul>
        </div>
    </div>
</div>

<script src="../staticFile/frame/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/layui/layui.all.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.lazyload.js" charset="utf-8"></script>
<script src="../staticFile/js/search/search.js" charset="utf-8"></script>
<script id="p-song" type="text/x-jquery-tmpl">
{{each songs}}
    <tr>
        <td>
            <div class="layui-unselect header layui-form-checkbox" style="display: none;"
                 lay-skin="primary">
                <i class="layui-icon">&#xe605;</i>
            </div>
           {{= name}}
        </td>
        <td>
            {{each artists}}
                {{= name}}
            {{/each}}
        </td>
        <td>
           {{= album.name}}
        </td>
    </tr>
{{/each}}
</script>

<script id="p-album" type="text/x-jquery-tmpl">
{{each albums}}
     <li>
         <h1 style="display: none;">{{= id}}</h1>
         <h2 style="display: none;">{{= artist.id}}</h2>
         <div style="float: left">
             <img width="40" data-original="{{= picUrl}}" />
         </div>
         <div style="padding-left: 15px;display: inline-block;">
             <p>
                <span>{{= name}}<span>
                <span style="font-family: 'Microsoft YaHei';font-size: 12px;=">{{= alias}}</span>
             </p>
             <p style="font-family: 'Microsoft YaHei';font-size: 12px;color: #666;">{{= artist.name}}</p>
         </div>
         <div style="padding-right: 10px;display: inline-block;float: right">
             <p style="font-family: 'Microsoft YaHei';color: #666;font-size: 12px;=">{{= size}}首</p>
         </div>
         <div style="padding-right: 30px;display: inline-block;float: right">
             <p style="font-size: 12px;">{{= company}}</p>
         </div>
     </li>
     <hr>
{{/each}}
</script>

<script id="p-songlist" type="text/x-jquery-tmpl">
{{each playlists}}
    <li>
       <div style="height: 215px">
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
                    <p style="font-size: 10px;color: #666;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:160px;">{{= creator.nickname}}</p>
                 </div>
                 <div style="height: 5px"></div>
            </div>
       </div>
   </li>
{{/each}}
</script>

<script id="p-singer" type="text/x-jquery-tmpl">
{{each artists}}
    <li>
       <div>
            <h1 style="display: none;">{{= id}}</h1>
            <h2 style="display: none;">{{= name}}</h2>
            <div>
                <img width="130" height="130" style="border-radius: 50%;" data-original="{{= img1v1Url}}" />
            </div>
            <div>
                 <div style="text-align: center;padding-top:5px">
                    <p style="font-size: 10px;color: #666;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 130px;">
                        {{= name}} - {{= alias}}
                    </p>
                 </div>
            </div>
       </div>
   </li>
{{/each}}
</script>

<script id="p-user" type="text/x-jquery-tmpl">
{{each userprofiles}}
    <li>
       <div>
            <h1 style="display: none;">{{= userId}}</h1>
            <div>
                 <img width="130" height="130" style="border-radius: 50%;" data-original="{{= avatarUrl}}" />
            </div>
            <div>
                 <div style="text-align: center;padding-top:5px">
                    <p style="font-size: 10px;color: #666;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 130px;">
                        {{= nickname}}
                    </p>
                 </div>
            </div>
       </div>
   </li>
{{/each}}
</script>

<script id="p-mv" type="text/x-jquery-tmpl">
{{each mvs}}
    <li>
       <div style="height: 165px">
            <h1 style="display:none">{{= id}}</h1>
            {{each artists}}
                <h2 style="display:none"><span>{{= id}}</span></h2>
            {{/each}}
            <div>
                <a class="songlist__link mod_cover">
                    <img class="songlist__pic" width="180" height="105" data-original="{{= cover}}" />
                    <i class="mod_cover__mask"></i>
                    <i class="mod_cover__icon_play"></i>
                </a>
            </div>
            <div>
                 <div>
                    <p style="font-size: 14px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:180px;">{{= name}}</p>
                 </div>
                 <div>
                    <p style="font-size: 12px;color: #666;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:160px;">{{= artistName}}</p>
                 </div>
            </div>
       </div>
   </li>
{{/each}}
</script>
</body>
</html>
