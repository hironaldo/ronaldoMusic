<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我喜欢页面</title>
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
            background-color: #D8D8D8;
        }

    </style>
</head>
<body>

<div>
    <div class="layui-tab-content" style="height: 100%;">
        <blockquote class="layui-elem-quote">
            <button class="layui-btn layui-btn-xs layui-btn-primary">
                <i class="layui-icon">&#xe652;</i>播放全部
            </button>
            <button class="layui-btn layui-btn-xs layui-btn-primary">
                <i class="layui-icon">&#xe601;</i>下载
            </button>
            <span style="float: right;padding-right: 10px">
                    <input type="text" autocomplete="off" placeholder="搜索"
                           maxlength="10"
                           onkeyup="this.value=this.value.replace(/\s/g,'');"

                           style="border: 0px;height: 23px;text-align:center">
                </span>
        </blockquote>
        <table class="layui-table" lay-skin="nob">
            <thead>
            <tr>
                <th>歌曲</th>
                <th>歌手</th>
                <th>时长</th>
                <th>语种</th>
                <th>专辑</th>
                <th>关注量</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">Hello</td>
                <th>Roanldo</th>
                <td>04:33</td>
                <td>英语</td>
                <td>Some love</td>
                <td>7.6万</td>
            </tr>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">Hi</td>
                <th>Messi</th>
                <td>02:50</td>
                <td>英语</td>
                <td>Full love</td>
                <td>7.6万</td>
            </tr>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">爱了很久的朋友</td>
                <th>田馥甄</th>
                <td>04:50</td>
                <td>国语</td>
                <td>爱了很久的朋友</td>
                <td>12.6万</td>
            </tr>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">Hello</td>
                <th>Roanldo</th>
                <td>04:33</td>
                <td>英语</td>
                <td>Some love</td>
                <td>7.6万</td>
            </tr>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">Hi</td>
                <th>Messi</th>
                <td>02:50</td>
                <td>英语</td>
                <td>Full love</td>
                <td>7.6万</td>
            </tr>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">爱了很久的朋友</td>
                <th>田馥甄</th>
                <td>04:50</td>
                <td>国语</td>
                <td>爱了很久的朋友</td>
                <td>12.6万</td>
            </tr>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">Hello</td>
                <th>Roanldo</th>
                <td>04:33</td>
                <td>英语</td>
                <td>Some love</td>
                <td>7.6万</td>
            </tr>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">Hi</td>
                <th>Messi</th>
                <td>02:50</td>
                <td>英语</td>
                <td>Full love</td>
                <td>7.6万</td>
            </tr>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">爱了很久的朋友</td>
                <th>田馥甄</th>
                <td>04:50</td>
                <td>国语</td>
                <td>爱了很久的朋友</td>
                <td>12.6万</td>
            </tr>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">Hello</td>
                <th>Roanldo</th>
                <td>04:33</td>
                <td>英语</td>
                <td>Some love</td>
                <td>7.6万</td>
            </tr>
            <tr>
                <td><img src="../staticFile/images/fulllove.svg" width="20px" style="padding-bottom: 4px">Hi</td>
                <th>Messi</th>
                <td>02:50</td>
                <td>英语</td>
                <td>Full love</td>
                <td>7.6万</td>
            </tr>
            </tbody>
        </table>
    </div>

</div>
<script type="text/javascript" src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
</body>
</html>