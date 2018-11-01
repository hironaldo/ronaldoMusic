<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>歌单详细页</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <style>

        * {
            margin: 0px;
            padding: 0px;
            font-family: -apple-system, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Microsoft YaHei, Source Han Sans SC, Noto Sans CJK SC, WenQuanYi Micro Hei, sans-serif;
        }

        body {
            overflow-x: hidden;
            overflow-y: hidden;
        }

        #content {
            height: 410px;
            overflow-x: hidden;
            overflow-y: scroll;
        }

        #content::-webkit-scrollbar {
            -webkit-border-radius: 2em;
            -moz-border-radius: 2em;
            border-radius: 2em;
            background-color: #D4D4D4;
            width: 8px;
        }

        #content::-webkit-scrollbar-thumb {
            border-radius: 5px;
            -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
            background: rgba(0, 0, 0, 0.2);
        }

        #content::-webkit-scrollbar-track {
            -webkit-border-radius: 2em;
            -moz-border-radius: 2em;
            border-radius: 2em;
            background-color: #D8D8D8;
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
            <textarea id="comment"></textarea>
            <div style="padding-top: 5px">
                <button class="layui-btn layui-btn-xs" style="float: right;">
                    <i class="layui-icon">&#xe609;</i>评论
                </button>
            </div>
            <div style="padding-top: 30px">
                <blockquote class="layui-elem-quote">精彩评论</blockquote>
                <ul id="content_top"></ul>
                <blockquote class="layui-elem-quote">最新评论</blockquote>
                <ul id="content_new"></ul>
            </div>
        </div>
    </div>
</div>

<i id="slistId" style="display: none;">
    <%=slistId%>
</i>
<i id="picurl" style="display: none;">
    <%=userId%>
</i>
<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script src="http://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js" charset="utf-8"></script>
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
                <li style="padding-top: 5px">
                    <span style="font-size: 10px;color: #666">
                        <img src="<%=picurl%>" width="30" style="border-radius: 50%">&nbsp;<%=nickname%>
                        <span style="padding-left:20px">#<%=tags%></span>
                    </span>
                </li>
                <li style="padding-top: 5px">
                    <p style="font-size: 10px;color: #666;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:780px;">{{= songListDescription}}</p>
                </li>
                <li style="padding-top: 10px">
                    <button class="layui-btn layui-btn-xs layui-btn-primary">
                        <i class="layui-icon">&#xe652;</i>播放全部
                    </button>
                    <button id="download" style="display: none;" class="layui-btn layui-btn-xs layui-btn-primary">
                        <i class="layui-icon">&#xe601;</i>下载
                    </button>
                    <button id="like" style="display: none;" class="layui-btn layui-btn-xs layui-btn-primary">
                        <i class="layui-icon">&#xe67b;</i>喜欢
                    </button>
                    <button id="delete" style="display: none;" class="layui-btn layui-btn-xs layui-btn-primary">
                        <i class="layui-icon">&#x1006;</i>删除
                    </button>
                    <button class="layui-btn layui-btn-xs layui-btn-primary">
                        <i class="layui-icon">&#xe642;</i>编辑
                    </button>
                    <button id="action" class="layui-btn layui-btn-xs layui-btn-primary">批量操作</button>
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
      <td>{{= singer}}</td>
    </tr>
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

<script>
    $(function () {
        let slistId = $('#slistId').text().trim();    //歌手id
        let url = '';
        url = 'http://api.bzqll.com/music/netease/songList?key=579621905&id=' + slistId;
        $.get(url, function (data) {
            $("#ssheetinfo_box").html('');
            $("#c-info").tmpl(data.data).appendTo('#ssheetinfo_box');
        });

        url = 'http://api.bzqll.com/music/netease/songList?key=579621905&id=' + slistId;
        $.get(url, function (data) {
            $("#song").html('');
            $("#c-song").tmpl(data.data.songs).appendTo('#song');
        });

        $('.layui-tab-title li').click(function () {
            layer.load();
            setTimeout(function () {
                layer.closeAll('loading');
            }, 1500);
            let index = $(this).index();
            switch (index) {
                case 0:
                    url = 'http://api.bzqll.com/music/netease/songList?key=579621905&id=' + slistId;
                    $.get(url, function (data) {
                        $("#ssheetinfo_box").html('');
                        $("#c-info").tmpl(data.data).appendTo('#ssheetinfo_box');
                    });

                    url = 'http://api.bzqll.com/music/netease/songList?key=579621905&id=' + slistId;
                    $.get(url, function (data) {
                        $("#song").html('');
                        $("#c-song").tmpl(data.data.songs).appendTo('#song');
                    });
                    break;
                case 1:
                    let urlq = 'http://localhost:3000/comment/playlist?id=' + slistId;
                    $.get(urlq, function (data) {
                        $("#content_top").html('');
                        $("#content_new").html('');
                        $("#t-comment").tmpl(data.hotComments).appendTo('#content_top');
                        $("#n-comment").tmpl(data.comments).appendTo('#content_new');
                    });
                    break;
            }
        });


        $("#action").click(function () {
            if ($(this).text() == "批量操作") {
                $('.layui-form-checkbox').show();
                $('#delete').show();
                $('#download').show();
                $('#like').show();
                $(this).text('退出批量操作');
            } else {
                $('.layui-form-checkbox').hide();
                $('#delete').hide();
                $('#download').hide();
                $('#like').hide();
                $(this).text('批量操作');
            }
        });

        layui.use('layedit', function () {
            var layedit = layui.layedit;
            layedit.build('comment', {
                height: 100,
                tool: [
                    'face'
                ]
            });
        });

        layui.use(['form', 'element'],
            function () {
                layer = layui.layer;
                element = layui.element;
            });
        tableCheck = {
            init: function () {
                $(".layui-form-checkbox").click(function (event) {
                    if ($(this).hasClass('layui-form-checked')) {
                        $(this).removeClass('layui-form-checked');
                        if ($(this).hasClass('header')) {
                            $(".layui-form-checkbox").removeClass('layui-form-checked');
                        }
                    } else {
                        $(this).addClass('layui-form-checked');
                        if ($(this).hasClass('header')) {
                            $(".layui-form-checkbox").addClass('layui-form-checked');
                        }
                    }

                });
            },
            getData: function () {
                var obj = $(".layui-form-checked").not('.header');
                var arr = [];
                obj.each(function (index, el) {
                    arr.push(obj.eq(index).attr('data-id'));
                });
                return arr;
            }
        }
        //开启表格多选
        tableCheck.init();
        $('.container .left_open i').click(function (event) {
            if ($('.left-nav').css('left') == '0px') {
                $('.left-nav').animate({left: '-221px'}, 100);
                $('.page-content').animate({left: '0px'}, 100);
                $('.page-content-bg').hide();
            } else {
                $('.left-nav').animate({left: '0px'}, 100);
                $('.page-content').animate({left: '221px'}, 100);
                if ($(window).width() < 768) {
                    $('.page-content-bg').show();
                }
            }

        });
        $('.page-content-bg').click(function (event) {
            $('.left-nav').animate({left: '-215px'}, 100);
            $('.page-content').animate({left: '0px'}, 100);
            $(this).hide();
        });

        $('.layui-tab-close').click(function (event) {
            $('.layui-tab-title li').eq(0).find('i').remove();
        });
    });
</script>

</body>
</html>