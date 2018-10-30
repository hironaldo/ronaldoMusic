<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String keyStr = request.getParameter("keyStr");//用request得到
%>
<html>
<head>
    <title>歌单<%=keyStr%>分类</title>
    <link rel="stylesheet" type="text/css" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/public.css" media="all"/>
    <link rel="stylesheet" type="text/css" href="../staticFile/css/songsheet/style.css" media="all">
    <link rel="stylesheet" href="../staticFile/UIframe/paging/paging.css" media="all">
    <style>
        #ssheet_box {
            padding-top: 30px;
        }

        #ssheet_box li {
            display: inline-block;
            width: 160px;
            padding-bottom: 20px;
            padding-left: 30px;
        }
    </style>
</head>
<body>

<div>
    <div class="classify-nav">
        <span><%=keyStr%></span>
        <p></p>
    </div>
    <ul id="ssheet_box"></ul>
    <div class="pagger-box pagger" id="box"></div>
</div>

<i id="key" style="display: none;"><%=keyStr%>
</i>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/paging/paging.js" charset="utf-8"></script>
<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"
        charset="utf-8"></script>
<script id="data" type="text/x-jquery-tmpl">
    <li>
       <div style="height: 215px">
            <div>
                <a class="songlist__link mod_cover"> <img src="{{= coverImgUrl}}" class="songlist__pic" style="height: 160px;" /> <i class="mod_cover__mask"></i> <i class="mod_cover__icon_play"></i> </a>
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
<script>
    $(function () {
        /*根据url请求数据*/
        function request(url) {
            $.get(url, function (data) {
                $("#ssheet_box").html('');
                $("#data").tmpl(data.playlists).appendTo('#ssheet_box');
            });
        }
        let keyCat = $("#key").text().trim();   //歌单关键字
        /*初始化*/
        $('#box').paging({
            initPageNo: 1, totalPages: 8, slideSpeed: 600, jump: true,
            callback: function (page) {
                console.log(page);
                let url = "http://localhost:3000/top/playlist?offset=" + page * 33 + "&cat=" + keyCat + "&limit=20";
                request(url);
            }
        });
        switch (keyCat) {
            case '流行':
                $('.classify-nav p').html('Pop起源于19世纪末20年代初的美国，通常是指那些流行于一时，甚至是流传于后世的器乐乐曲和歌曲。由于其内容通俗，形式活泼，情感真挚，具有很大的易传播性，并且被大众所喜爱，因此亦被称作“大众音乐”。与此同时它具有很大的商业化盈利的目标价值，有时易被称为“商业音乐”，艺术性已然是其次，商业性的价值比重占据主体位置。\n');
                break;
            case '欧美':
                $('.classify-nav p').html('潮流英文歌曲的风向标，不用找了! 关于欧美的都在这。');
                break;
        }
    });
</script>

</body>
</html>
