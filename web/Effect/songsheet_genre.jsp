<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String keyStr = request.getParameter("keyStr");
%>
<html>
<head>
    <title>歌单<%=keyStr%>分类</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/public.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/songsheet/songsheet.css" media="all">
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
<script src="../staticFile/UIframe/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/js/songsheet/songsheet_genre.js" charset="utf-8"></script>
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
</body>
</html>
