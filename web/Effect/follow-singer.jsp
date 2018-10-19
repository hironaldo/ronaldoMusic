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

<%--<div class="layui-tab-content" style="height: 100%;">--%>
<%--<blockquote class="layui-elem-quote">--%>
<%--<button class="layui-btn layui-btn-xs layui-btn-primary">--%>
<%--<i class="layui-icon">&#xe702;</i>共88首--%>
<%--</button>--%>
<%--<button class="layui-btn layui-btn-xs layui-btn-primary">--%>
<%--<i class="layui-icon">&#xe652;</i>播放全部--%>
<%--</button>--%>
<%--<button class="layui-btn layui-btn-xs layui-btn-primary">--%>
<%--<i class="layui-icon">&#xe601;</i>下载--%>
<%--</button>--%>
<%--<button class="layui-btn layui-btn-xs layui-btn-primary">--%>
<%--<i class="layui-icon">&#x1006;</i>移除喜欢--%>
<%--</button>--%>
<%--<span style="float: right;padding-right: 10px">--%>
<%--<input type="text" autocomplete="off" placeholder="搜索"--%>
<%--maxlength="10"--%>
<%--onkeyup="this.value=this.value.replace(/\s/g,'');"--%>
<%--style="border: 0px;height: 23px;text-align:center">--%>
<%--</span>--%>
<%--</blockquote>--%>
<%--</div>--%>

<div style="overflow: auto;width: 1017px">
    <div style="display: none;height: 500px;border-right : 1px solid #ddd">
        <table>
            <tr style="background: #F2F2F2;">
                <td style="padding-right: 5px;padding-top: 3px;padding-bottom: 3px;padding-left:21px">
                    <img src="http://p.qpic.cn/music_cover/az4TLJ60PVdO54ZsMQeKYqlvibHsP1VyZhg3bbWEpSLl87F8E8lz3kw/300?n=1"
                         width="55">
                </td>
                <td style="padding-left: 10px;padding-right: 40px">
                    <ul>
                        <li>
                            <span style="color: #666;font-size: 12px;">Adele</span>
                        </li>
                        <li style="padding-top: 5px">
                            <button class="layui-btn layui-btn-primary layui-btn-xs"><i class="layui-icon">&#x1006;</i>取关
                            </button>
                        </li>
                    </ul>
                </td>
            <tr>
            <tr>
                <td style="padding-right: 5px;padding-top: 3px;padding-bottom: 3px;padding-left: 21px">
                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000"
                         width="55">
                </td>
                <td style="padding-left: 10px;padding-right: 80px">
                    <ul>
                        <li>
                            <span style="color: #666;font-size: 12px;">Taylor Swift</span>
                        </li>
                        <li style="padding-top: 5px">
                            <button class="layui-btn layui-btn-primary layui-btn-xs"><i class="layui-icon">&#x1006;</i>取关
                            </button>
                        </li>
                    </ul>
                </td>
            <tr>
        </table>
    </div>

</div>


<div style="display: inline-block;float: right">
    <table style="margin: 15px 0 0 30px ">
        <tr>
            <td>
                <img src="http://p.qpic.cn/music_cover/az4TLJ60PVdO54ZsMQeKYqlvibHsP1VyZhg3bbWEpSLl87F8E8lz3kw/300?n=1" style="width: 160px;border-radius: 50%"/>
            </td>
            <td style="padding-left: 20px">
                <ul>
                    <li>
                        <span style="font-size: 22px;">陈奕迅</span>
                    </li>
                    <li style="padding-top: 10px">
                            <span style="font-size: 10px;color: #666">
                                泰勒•斯威夫特（Taylor Swift），美国乡村音乐著名创作女歌手。1989年出生于美国宾州。2006年与独立唱片公司Big Machine签约并发行首张个人专辑《Taylor Swift》。
                            </span>
                    </li>
                    <li style="padding-top: 20px">
                        <button class="layui-btn layui-btn-sm layui-btn-primary">
                            <i class="layui-icon">&#xe652;</i>播放全部
                        </button>
                        <button class="layui-btn layui-btn-sm layui-btn-primary">
                            <i class="layui-icon">&#xe601;</i>下载
                        </button>
                        <button class="layui-btn layui-btn-sm layui-btn-primary">
                            <i class="layui-icon">&#x1006;</i>删除
                        </button>
                        <button class="layui-btn layui-btn-sm layui-btn-primary">
                            <i class="layui-icon">&#xe67b;</i>喜欢
                        </button>
                        <button class="layui-btn layui-btn-sm layui-btn-primary">
                            <i class="layui-icon">&#xe642;</i>编辑
                        </button>
                    </li>
                </ul>
            </td>
        <tr>
    </table>
    <table class="layui-table" lay-skin="nob" style="margin: 15px 0 0 30px;width: 740px;">
        <thead>
        <tr>
            <th>歌曲
            </th>
            <th>专辑</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                <img src="../staticFile/images/love.svg" width="16px">
                Hello
            </td>
            <th>Roanldo</th>
        </tr>
        <tr>
            <td>
                <img src="../staticFile/images/love.svg" width="16px">
                Hello
            </td>
            <th>Roanldo</th>
        </tr>
        </tbody>
    </table>
</div>


<div>
    <div class="layui-tab-content" style="height: 100%;">
        <!-- 关注的歌手 -->
        <div class="layui-tab-item layui-show">
            <div>
                <table>
                    <tr>
                        <td>
                            <div>
                                <div>
                                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Taylor Swift</div>
                                    <div style="padding-top: 5px;color: #666;font-size: 12px;">627.7万人关注</div>
                                    <div style="padding-top: 5px">
                                        <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#x1006;</i>取消关注
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="http://p.qpic.cn/music_cover/az4TLJ60PVdO54ZsMQeKYqlvibHsP1VyZhg3bbWEpSLl87F8E8lz3kw/300?n=1">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Adele</div>
                                    <div style="padding-top: 5px;color: #666;font-size: 12px;">627.7万人关注</div>
                                    <div style="padding-top: 5px">
                                        <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#x1006;</i>取消关注
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Taylor Swift</div>
                                    <div style="padding-top: 5px;color: #666;font-size: 12px;">627.7万人关注</div>
                                    <div style="padding-top: 5px">
                                        <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#x1006;</i>取消关注
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Taylor Swift</div>
                                    <div style="padding-top: 5px;color: #666;font-size: 12px;">627.7万人关注</div>
                                    <div style="padding-top: 5px">
                                        <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#x1006;</i>取消关注
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Taylor Swift</div>
                                    <div style="padding-top: 5px;color: #666;font-size: 12px;">627.7万人关注</div>
                                    <div style="padding-top: 5px">
                                        <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#x1006;</i>取消关注
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <div>
                                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Taylor Swift</div>
                                    <div style="padding-top: 5px;color: #666;font-size: 12px;">627.7万人关注</div>
                                    <div style="padding-top: 5px">
                                        <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#x1006;</i>取消关注
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Taylor Swift</div>
                                    <div style="padding-top: 5px;color: #666;font-size: 12px;">627.7万人关注</div>
                                    <div style="padding-top: 5px">
                                        <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#x1006;</i>取消关注
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Taylor Swift</div>
                                    <div style="padding-top: 5px;color: #666;font-size: 12px;">627.7万人关注</div>
                                    <div style="padding-top: 5px">
                                        <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#x1006;</i>取消关注
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Taylor Swift</div>
                                    <div style="padding-top: 5px;color: #666;font-size: 12px;">627.7万人关注</div>
                                    <div style="padding-top: 5px">
                                        <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#x1006;</i>取消关注
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Taylor Swift</div>
                                    <div style="padding-top: 5px;color: #666;font-size: 12px;">627.7万人关注</div>
                                    <div style="padding-top: 5px">
                                        <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">&#x1006;</i>取消关注
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

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