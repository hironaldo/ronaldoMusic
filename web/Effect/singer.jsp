<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>热门歌手</title>
    <link href="../staticFile/img/logo.ico" rel="shortcut icon">
    <link rel="stylesheet" href="../staticFile/frame/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/frame/paging/paging.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/common/scroll-bar.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/singer/singer.css" media="all">
</head>
<body>

<div>
    <div style="margin: 5px 15px">
        <div>
            <ul class="nav" id="ul0">
                <span>推荐</span>
                <li>入驻歌手</li>
            </ul>
        </div>
        <div style="padding-top: 10px">
            <ul class="nav" id="ul1">
                <span>全部</span>
                <li>男单</li>
                <li>女单</li>
                <li>组合</li>
            </ul>
        </div>
        <div style="padding-top: 10px">
            <ul class="nav" id="ul2">
                <span>全部</span>
                <li>华语</li>
                <li>欧美</li>
                <li>日本</li>
                <li>韩国</li>
                <li>其他</li>
            </ul>
        </div>
        <div style="padding-top: 10px">
            <ul class="nav" id="ul3">
                <span>全部</span>
                <li>流行</li>
                <li>嘻哈</li>
                <li>摇滚</li>
                <li>民谣</li>
                <li>电子</li>
                <li>乡村</li>
                <li>爵士</li>
                <li>古典</li>
                <li>蓝调</li>
                <li>轻音乐</li>
            </ul>
        </div>
        <ul id="singer_box"></ul>
        <div class="pagger-box pagger" id="box"></div>
    </div>
</div>

<script src="../staticFile/frame/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/frame/paging/paging.js" charset="utf-8"></script>
<script src="../staticFile/frame/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/js/singer/singer.js" charset="utf-8"></script>
<script id="data" type="text/x-jquery-tmpl">
    <li>
       <div style="background: #F0F0F0;box-shadow: 4px 9px 15px #88887A;padding-bottom:10px">
         <i style="display: none;">{{= id}}</i>
         <b style="display: none;">{{= name}}</b>
         <div style="text-align: center;padding-top:10px">
             <img src="{{= picUrl}}" style="border-radius: 50%;width: 110px">
         </div>
         <div style="text-align: center;padding-top:5px;padding-bottom:10px">
            <span>{{= name}}</span>
         </div>
       </div>
    </li>
</script>
</body>
</html>