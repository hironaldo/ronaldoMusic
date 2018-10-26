<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分类歌单</title>
    <link rel="stylesheet" type="text/css" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="../staticFile/css/songsheet/style.css" media="all">
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

<div id="a">

</div>

<button id="btn">111</button>


<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>



</body>
</html>
