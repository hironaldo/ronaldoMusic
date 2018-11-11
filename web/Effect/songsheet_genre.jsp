<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String keyStr = request.getParameter("keyStr");
%>
<html>
<head>
    <title>歌单<%=keyStr%>分类</title>
    <link rel="stylesheet" href="../staticFile/frame/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/frame/paging/paging.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/scroll-bar.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/yqq.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/songsheet/songsheet.css" media="all">
</head>
<body>

<div>
    <div class="classify-nav">
        <span><%=keyStr%></span>
        <p></p>
    </div>
    <p style="display: none" id="total"></p>
    <ul id="ssheet_box"></ul>
    <div class="pagger-box pagger" id="box"></div>
</div>
<i id="key" style="display: none;">
    <%=keyStr%>
</i>
<script src="../staticFile/frame/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/paging/paging.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.lazyload.js" charset="utf-8"></script>
<script src="../staticFile/js/songsheet/songsheet_genre.js" charset="utf-8"></script>
<script id="data" type="text/x-jquery-tmpl">
    <li>
       <div style="height: 200px">
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
            </div>
       </div>
    </li>
</script>

<script id="c-total" type="text/x-jquery-tmpl">{{= total}}</script>

</body>
</html>
