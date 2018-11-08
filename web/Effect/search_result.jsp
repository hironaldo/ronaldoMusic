<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String keyStr = request.getParameter("keyStr");
%>
<html>
<head>
    <title>搜索结果页</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/public.css" media="all">
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            overflow-x: hidden;
            overflow-y: auto;
            background-color: #FAFAFA;
            height: 100%;
        }

        body::-webkit-scrollbar {
            -webkit-border-radius: 2em;
            -moz-border-radius: 2em;
            border-radius: 2em;
            background-color: #f5f5f7;
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
            background-color: #D8D8D8;
        }

        #songlist_box li {
            display: inline-block;
            width: 160px;
            padding-left: 24px;
            padding-top: 5px;
        }

        #songlist_box li img {
            width: 160px;
            height: 160px;
            background: url(../staticFile/images/loading.gif) 50% no-repeat;
        }

        #singer_box li {
            display: inline-block;
            padding-bottom: 20px;
            padding-left: 50px;
        }

        #singer_box li:hover {
            cursor: pointer;
        }

        #user_box li {
            display: inline-block;
            padding-bottom: 20px;
            padding-left: 50px;
        }

        #user_box li:hover {
            cursor: pointer;
        }


    </style>
</head>
<body>
<i id="keyStr" style="display: none;"><%=keyStr%>
</i>

<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
    <ul class="layui-tab-title">
        <li class="layui-this">单曲</li>
        <li>专辑</li>
        <li>歌单</li>
        <li>Mv</li>
        <li>歌词</li>
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
                <tbody id="song">

                </tbody>
            </table>
        </div>
        <div class="layui-tab-item">
            <ul id="album_box"></ul>
        </div>
        <div class="layui-tab-item">
            <ul id="songlist_box"></ul>
        </div>
        <div class="layui-tab-item">
            MV
        </div>
        <div class="layui-tab-item">
            歌词
        </div>
        <div class="layui-tab-item">
            <ul id="singer_box"></ul>
        </div>
        <div class="layui-tab-item">
            <ul id="user_box"></ul>
        </div>
    </div>
</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/jquery.lazyload.js" charset="utf-8"></script>
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
         <div style="float: left">
             <img width="40" data-original="{{= picUrl}}" />
         </div>
         <div style="padding-left: 15px;display: inline-block;">
             <p>{{= name}}</p>
             <p style="font-size: 12px;color: #666;">{{= artist.name}}</p>
         </div>
         <div style="padding-right: 10px;display: inline-block;float: right">
             <p>{{= size}}首</p>
         </div>
         <div style="padding-right: 30px;display: inline-block;float: right">
             <p>{{= company}}</p>
         </div>
         <div style="padding-right: 30px;display: inline-block;float: right">
             <p>{{= name}}</p>
         </div>
     </li>
     <hr>
{{/each}}
</script>

<script id="p-songlist" type="text/x-jquery-tmpl">
{{each playlists}}
    <li>
       <div style="height: 160px">
            <%--<i style="display: none;">{{= id}}</i>--%>
            <%--<b style="display: none;">{{= creator.avatarUrl}}</b>--%>
            <%--<s style="display: none;">{{= creator.nickname}}</s>--%>
            <%--<d style="display: none;">{{= creator.userId}}</d>--%>
            <%--<w style="display: none;">{{= tags}}</w>--%>
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

<script>
    $(document).ready(function () {
        /*单曲*/
        $.ajax({
            url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=1',
            xhrFields: {withCredentials: true},
            success: function (data) {
                $('#song').html('');
                $('#p-song').tmpl(data.result).appendTo('#song');
            }
        });
        /*专辑*/
        $.ajax({
            url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=10',
            xhrFields: {withCredentials: true},
            success: function (data) {
                $('#album_box').html('');
                $('#p-album').tmpl(data.result).appendTo('#album_box');
            }
        });

        /*歌单*/
        $.ajax({
            url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=1000',
            xhrFields: {withCredentials: true},
            success: function (data) {
                $('#songlist_box').html('');
                $('#p-songlist').tmpl(data.result).appendTo('#songlist_box');
            }
        });

        /*歌手*/
        $.ajax({
            url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=100',
            xhrFields: {withCredentials: true},
            success: function (data) {
                $('#singer_box').html('');
                $('#p-singer').tmpl(data.result).appendTo('#singer_box');
            }
        });

        /*用户*/
        $.ajax({
            url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=1002',
            xhrFields: {withCredentials: true},
            success: function (data) {
                $('#user_box').html('');
                $('#p-user').tmpl(data.result).appendTo('#user_box');
            }
        });
    });

    window.onload = function () {
        /*懒加载*/
        setTimeout(function () {
            $('img').lazyload();
        }, 1000);
    }
</script>
</body>
</html>
