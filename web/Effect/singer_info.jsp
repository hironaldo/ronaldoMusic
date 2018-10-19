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
            overflow-y: hidden;
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

<div style="display: inline-block;float: right">
    <table style="margin: 15px 0 0 30px ">
        <tr>
            <td>
                <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000"
                     style="width: 200px;border-radius: 50%"/>
            </td>
            <td style="padding-left: 20px">
                <ul>
                    <li>
                        <span style="font-size: 20px;">泰勒•斯威夫特</span>
                    </li>
                    <li style="padding-top: 10px">
                        <span style="font-size: 10px;color: #666">
                             <p>中文名：泰勒•斯威夫特</p>
                             <p>国籍：美国</p>
                             <p>  出生地：美国，宾夕法尼亚，怀奥米辛</p>
                             <p>  生日：1989年12月13日</p>
                             <p> 职业：歌手、演员、制作人、慈善家</p>
                             <p>代表作：《Our Song》、《Love Story》、《You Belong With Me》</p>
                             <p>简介：美国乡村音乐著名创作女歌手。1989年出生于美国宾州,2006年与独立唱片公司Big Machine签约并发行首张个人专辑《Taylor Swift》。</p>
                        </span>
                    </li>
                </ul>
            </td>
        <tr>
    </table>
</div>


<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script>

    $(function () {
        $("#bt").click(function () {
            layer.tips('泰勒•斯威夫特（Taylor Swift），美国乡村音乐著名创作女歌手。1989年出生于美国宾州。2006年与独立唱片公司Big Machine签约并发行首张个人专辑《Taylor Swift》。', '#bt', {
                tips: [1, '#3595CC'],
                time: 4000
            });

        });
    });


</script>


</body>
</html>
