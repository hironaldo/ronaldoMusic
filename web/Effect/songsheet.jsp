<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分类歌单</title>
    <link rel="stylesheet" href="../staticFile/UIframe/public.css"/>
    <style>
        * {
            padding: 0;
            margin: 0;
            background-color: #F1F1F1;
            font-family: -apple-system, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Microsoft YaHei, Source Han Sans SC, Noto Sans CJK SC, WenQuanYi Micro Hei, sans-serif;
        }

        body {
            overflow-x: hidden;
            overflow-y: auto;
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

        #classify-nav {
            padding-left: 35px;
        }

        #classify-nav ul {
            list-style: none;
            margin: 0px;
            padding: 0px;
            width: auto;
        }

        #classify-nav ul li {
            float: left;
            padding: 0px 10px;
        }

        #classify-nav ul li span {
            font-size: 12px;
            padding: 6px 43px;
            background: #FFFFFF;
        }

        #content table tr td > div img {
            width: 167px;
        }

        #content {
            padding-top: 10px;
            padding-left: 25px
        }

        #content table tr td {
            padding-left: 20px;
            padding-top: 25px;
        }

        .box_img {
            overflow: hidden;
            padding-bottom: 10px;
        }

        .aaa {
            background-image: url("../staticFile/img/播放.svg");
            position: absolute;
            left: 50%;
            top: 50%;
            margin: -35px;
            width: 70px;
            height: 70px;
            filter: alpha(opacity=0);
            opacity: 0;
            -webkit-transform: scale(.7) translateZ(0);
            -webkit-transition-property: opacity, -webkit-transform;
            -webkit-transition-duration: .5s;
            transform: scale(.7) translateZ(0);
            transition-property: opacity, transform;
            transition-duration: .5s;
            zoom: 1;
        }

    </style>
</head>
<body>

<div>
    <div id="classify-nav">
        <span style="font-size: 16px;padding-left: 10px">热 门 分 类</span>
        <div style="padding-top: 10px">
            <ul>
                <li><span>经典</span></li>
                <li><span>城市</span></li>
                <li><span>英语</span></li>
                <li><span>运动</span></li>
                <li><span>情歌</span></li>
                <li><span>官方歌单</span></li>
                <li><span>KTV热歌</span></li>
            </ul>
        </div>
        <br>
        <div style="padding-top: 20px">
            <ul>
                <li><span>寂寞</span></li>
                <li><span>国语</span></li>
                <li><span>伤感</span></li>
                <li><span>心情</span></li>
                <li><span>清新</span></li>
                <li><span>背景音乐</span></li>
                <li><span>全部分类</span></li>
            </ul>
        </div>
    </div>
    <div id="content">
        <table>
            <tr>
                <c:forEach var="songsheet" items="${playlist}" begin="0" end="4">
                    <td>
                        <div>
                            <div class="box_img">
                                <img src="../staticFile/imgDT/songsheet/${songsheet.detail.dePic}">
                            </div>
                            <div>
                                <div><span style="font-size: 14px">${songsheet.detail.deName}</span></div>
                                <div><span style="font-size: 10px;color: #666">${songsheet.user.userName}</span></div>
                            </div>
                        </div>
                    </td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach var="songsheet" items="${playlist}" begin="5" end="9">
                    <td>
                        <div>
                            <div class="box_img">
                                <img src="../staticFile/imgDT/songsheet/${songsheet.detail.dePic}">
                            </div>
                            <div>
                                <div><span style="font-size: 14px">${songsheet.detail.deName}</span></div>
                                <div><span style="font-size: 10px;color: #666">${songsheet.user.userName}</span></div>
                            </div>
                        </div>
                    </td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach var="songsheet" items="${playlist}" begin="10" end="14">
                    <td>
                        <div>
                            <div class="box_img">
                                <img src="../staticFile/imgDT/songsheet/${songsheet.detail.dePic}">
                            </div>
                            <div>
                                <div><span style="font-size: 14px">${songsheet.detail.deName}</span></div>
                                <div><span style="font-size: 10px;color: #666">${songsheet.user.userName}</span></div>
                            </div>
                        </div>
                    </td>
                </c:forEach>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
