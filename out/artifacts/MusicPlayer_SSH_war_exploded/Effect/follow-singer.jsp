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

        table {
            margin: 0 auto;
        }

        table tr td {
            padding: 30px;
        }

        table tr td > div img {
            width: 140px;
            border-radius: 50%
        }
    </style>
</head>
<body>

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
<script type="text/javascript" src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
</body>
</html>