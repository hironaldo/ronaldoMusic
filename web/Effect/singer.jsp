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
            font-family: -apple-system, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Microsoft YaHei, Source Han Sans SC, Noto Sans CJK SC, WenQuanYi Micro Hei, sans-serif;
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

        #paging ul{
            display: inline;
        }

        #paging ul li{
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

        .hot{
            display: block;
            position: absolute;
            top: 205px;
            left: 175px;
            background-position: -190px 0;
        }

    </style>
</head>
<body>
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
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m1.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m2.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m3.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m3.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m4.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m1.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m2.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m3.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m3.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m4.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m1.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m2.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m3.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m3.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="../staticFile/img/m4.jpg">
                                </div>
                                <div style="text-align: center">邓紫棋</div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="paging" style="text-align: center">
                <ul style="list-style: none;">
                    <li style="background: #31b876;padding-left: 10px;padding-right: 10px;padding-top: 1px;padding-bottom: 1px">1</li>
                    <li style="border: 1px;background: white;padding-left: 10px;padding-right: 10px;padding-top: 1px;padding-bottom: 1px">2</li>
                    <li style="border: 1px;background: white;padding-left: 10px;padding-right: 10px;padding-top: 1px;padding-bottom: 1px">3</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
</body>
</html>