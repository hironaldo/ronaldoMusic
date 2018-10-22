<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>歌手音乐歌单页面</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <style>

        * {
            margin: 0px;
            padding: 0px;
            /*font-family: -apple-system, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Microsoft YaHei, Source Han Sans SC, Noto Sans CJK SC, WenQuanYi Micro Hei, sans-serif;*/
        }

        body {
            overflow-x: hidden;
            overflow-y: auto;
            height: 100%;
            background-color: #F1F1F1;
        }

        body::-webkit-scrollbar {
            -webkit-border-radius: 2em;
            -moz-border-radius: 2em;
            border-radius: 2em;
            background-color: #D4D4D4;
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
            background-color: #f5f5f7;
        }

        .nav {
            display: inline;
            white-space: nowrap;
        }

        .nav li {
            display: inline-block;
            padding-left: 25px
        }

        .nav span {
            color: #31C27C;
        }

        #song div {
            padding-top: 8px
        }

        #paging ul {
            display: inline;
        }

        #paging ul li {
            display: inline-block;
        }

        table {
            margin: 0 auto;
        }

        table tr td {
            padding: 20px;
        }

        table tr td > div {
            background: #F0F0F0;
            padding-left: 25px;
            padding-right: 25px;
            padding-bottom: 15px;
            box-shadow: 4px 9px 15px #88887A;
        }

        table tr td > div img {
            width: 100px;
            border-radius: 50%
        }

        .downnav {
            display: inline;
            white-space: nowrap;
        }

        .downnav li {
            display: inline-block;
            padding-left: 85px
        }

        .hot {
            display: block;
            position: absolute;
            top: 205px;
            left: 175px;
            background-position: -190px 0;
        }

    </style>
</head>
<body>

<%--<c:forEach var="singer" items="${singerList}">--%>
<%--${singer.siName}--%>
<%--</c:forEach>--%>

<%--${pageCount}--%>

<%--${pageNo}--%>

<%--${dataCount}--%>

<%--${pageData}--%>

<div id="aaa">

</div>

<button id="bbbb">111</button>


<div class="layui-tab layui-tab-brief">
    <div class="layui-tab-content" style="height: 100%;">
        <!-- 歌手 -->
        <div class="layui-tab-item layui-show" id="song">
            <div>
                <ul class="nav">
                    <span>全部</span>
                    <li>&nbsp;A</li>
                    <li>B</li>
                    <li>C</li>
                    <li>D</li>
                    <li>E</li>
                    <li>F</li>
                    <li>G</li>
                    <li>H</li>
                    <li>I</li>
                    <li>J</li>
                    <li>K</li>
                    <li>L</li>
                    <li>M</li>
                    <li>N</li>
                    <li>O</li>
                    <li>P</li>
                    <li>Q</li>
                    <li>R</li>
                    <li>#</li>
                </ul>
            </div>
            <div>
                <ul class="nav">
                    <span>全部</span>
                    <li>男单</li>
                    <li>女单</li>
                    <li>组合</li>
                </ul>
            </div>
            <div>
                <ul class="nav">
                    <span>全部</span>
                    <li>内地</li>
                    <li>港台</li>
                    <li>欧美</li>
                    <li>日本</li>
                    <li>韩国</li>
                    <li>其他</li>
                </ul>
            </div>
            <div>
                <ul class="nav">
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
            <div>
                <table>
                    <tr>
                        <%--<c:forEach var="singer" items="${singerList}" begin="0" end="4">--%>
                        <%--<td>--%>
                        <%--<div>--%>
                        <%--<div>--%>
                        <%--<img src="../staticFile/imgDT/singer/${singer.siPic}.jpg">--%>
                        <%--</div>--%>
                        <%--<div style="text-align: center">${singer.siName}</div>--%>
                        <%--</div>--%>
                        <%--</td>--%>
                        <%--</c:forEach>--%>
                    </tr>
                    <tr>
                        <%--<c:forEach var="singer" items="${singerList}" begin="5" end="9">--%>
                        <%--<td>--%>
                        <%--<div>--%>
                        <%--<div>--%>
                        <%--<img src="../staticFile/imgDT/singer/${singer.siPic}.jpg">--%>
                        <%--</div>--%>
                        <%--<div style="text-align: center">${singer.siName}</div>--%>
                        <%--</div>--%>
                        <%--</td>--%>
                        <%--</c:forEach>--%>
                    </tr>
                    <tr>
                        <%--<c:forEach var="singer" items="${singerList}" begin="10" end="14">--%>
                        <%--<td>--%>
                        <%--<div>--%>
                        <%--<div>--%>
                        <%--<img src="../staticFile/imgDT/singer/${singer.siPic}.jpg">--%>
                        <%--</div>--%>
                        <%--<div style="text-align: center">${singer.siName}</div>--%>
                        <%--</div>--%>
                        <%--</td>--%>
                        <%--</c:forEach>--%>
                    </tr>
                </table>
            </div>
            <div id="paging" style="text-align: center">
                <ul style="list-style: none;">
                    <li style="background: #31b876;padding: 3px 7px;color: white">
                        ☚
                    </li>
                    <li style="background: #31b876;padding: 4px 8px;color: white">
                        <a href="getSinger?pageNo=1" style="color:black;">1</a>
                    </li>
                    <li style="background: #FFFFFF;padding: 4px 8px;border: 2px #f1f1f1 solid">
                        <a href="getSinger?pageNo=2" style="color:black;">2</a>
                    </li>
                    <li style="background: #31b876;padding: 3px 7px;color: white">
                        ☛
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script>
    $(function () {

        $("#bbbb").click(function () {
            $.ajax({
                type: 'post',
                url: 'getSinger?pageNo=2',
                async: false,
                cache: true,
                dataType: 'text',
                success: function (result) {
                    // if (result == "ok") {
                    //     setTimeout(parent.layer.close(parent.layer.getFrameIndex(window.name)), 3000);
                    // }

                    // $("#aaa").html(result);

                    console.log(result);

                }
            });
        });


    });
</script>


</body>
</html>