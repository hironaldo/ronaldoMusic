<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/singer/style.css" media="all">
    <link rel="stylesheet" href="../staticFile/UIframe/paging/paging.css" media="all">
    <style>
        #singer_box {
            padding-top: 14px;
        }

        #singer_box li {
            display: inline-block;
            width: 155px;
            padding-bottom: 20px;
            padding-left: 30px;
        }
    </style>
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

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/paging/paging.js" charset="utf-8"></script>
<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"
        charset="utf-8"></script>
<script id="data" type="text/x-jquery-tmpl">
    <li>
       <i style="display: none;">{{= id}}</i>
       <div style="background: #F0F0F0;box-shadow: 4px 9px 15px #88887A;padding-bottom:10px">
         <div style="text-align: center;padding-top:10px">
             <img src="{{= picUrl}}" style="border-radius: 50%;width: 110px">
         </div>
         <div style="text-align: center;padding-top:5px;padding-bottom:10px">{{= name}}</div>
       </div>
    </li>
</script>
<script src="../staticFile/js/singer/singer.js" charset="utf-8"></script>
</body>
</html>