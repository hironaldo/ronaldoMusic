<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分类歌单</title>
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
        <span style="font-size: 16px;padding-left: 10px">全 部 分 类</span>
        <div style="padding-top: 15px">
            <ul>
                <li><span>流行</span></li>
                <li><span>华语</span></li>
                <li><span>清晨</span></li>
                <li><span>怀旧</span></li>
                <li><span>摇滚</span></li>
                <li><span>电子</span></li>
                <li><span>下午茶</span></li>
                <li><span>影视原声</span></li>
            </ul>
        </div>
        <br>
        <div style="padding-top: 20px">
            <ul>
                <li><span>清新</span></li>
                <li><span>夜晚</span></li>
                <li><span>欧美</span></li>
                <li><span>民谣</span></li>
                <li><span>校园</span></li>
                <li><span>治愈</span></li>
                <li><span>轻音乐</span></li>
                <li><span>网络电影</span></li>
            </ul>
        </div>
        <br>
    </div>
    <ul id="ssheet_box"></ul>
    <div class="pagger-box pagger" id="box"></div>
</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/paging/paging.js" charset="utf-8"></script>
<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"
        charset="utf-8"></script>
<script id="data" type="text/x-jquery-tmpl">
    <li>
       <div style="height: 215px">
            <i style="display: none;">{{= id}}</i>
            <b style="display: none;">{{= creator.avatarUrl}}</b>
            <s style="display: none;">{{= creator.nickname}}</s>
            <d style="display: none;">{{= creator.userId}}</d>
            <w style="display: none;">{{= tags}}</w>
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
<script src="../staticFile/js/songsheet/songsheet.js" charset="utf-8"></script>

<script>
    /*查看歌单详细信息*/
    window.onload = function () {
        $("body").on('click', "#ssheet_box li >div", function () {
            let slistId = $(this).find('i').text().trim();
            let picurl = $(this).find('b').text().trim();
            let nickname = $(this).find('s').text().trim();
            let userId = $(this).find('d').text().trim();
            let tags = $(this).find('w').text().trim();
            window.location.href = "songsheet_info.jsp?slistId=" + slistId + "&picurl=" + picurl + "&nickname=" + nickname + "&userId=" + userId + "&tags=" + tags;
        });
    };
</script>

</body>
</html>
