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
            /*font-family: -apple-system, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Microsoft YaHei, Source Han Sans SC, Noto Sans CJK SC, WenQuanYi Micro Hei, sans-serif;*/
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

<div class="layui-tab layui-tab-brief">
    <ul class="layui-tab-title">
        <li class="layui-this">歌手9</li>
        <li>歌曲8</li>
        <li>歌单7</li>
    </ul>
    <div class="layui-tab-content" style="height: 100%;">

        <!-- 关注的歌曲 -->
        <div class="layui-tab-item layui-show">
            <blockquote class="layui-elem-quote">
                <button class="layui-btn layui-btn-xs layui-btn-primary">
                    <i class="layui-icon">&#xe652;</i>播放全部
                </button>
                <button class="layui-btn layui-btn-xs layui-btn-primary">
                    <i class="layui-icon">&#xe601;</i>下载
                </button>

                <button id="test" class="layui-btn layui-btn-xs layui-btn-primary">批量操作</button>

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
                    <th>
                        <div class="layui-unselect header layui-form-checkbox" style="display: none;"
                             lay-skin="primary">
                            <i class="layui-icon">&#xe605;</i>
                        </div>&nbsp;歌曲
                    </th>
                    <th>歌手</th>
                    <th>时长</th>
                    <th>语种</th>
                    <th>发行公司</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <div class="layui-unselect header layui-form-checkbox" style="display: none;"
                             lay-skin="primary">
                            <i class="layui-icon">&#xe605;</i>
                        </div>
                        <span>
                            <img src="../staticFile/images/fulllove.svg" width="18px" style="padding-bottom: 5px">
                        </span>
                        Hello
                    </td>
                    <th>Roanldo</th>
                    <td>04:33</td>
                    <td>英语</td>
                    <td>环球唱片</td>
                    <td>
                        <img src="../staticFile/img/delete.svg" width="16px">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <!-- 关注的歌曲 -->

        <!-- 关注的歌手 -->
        <div class="layui-tab-item ">
            <div>
                <table>
                    <tr>
                        <td>
                            <div>
                                <div id="img">
                                    <img src="http://y.gtimg.cn/music/photo_new/T001R150x150M000000qrPik2w6lDr.jpg?max_age=2592000">
                                </div>
                                <div style="text-align: center"><br>
                                    <div style="padding-top: 5px">Taylor Swift</div>
                                    <div style="padding-top: 5px">627.7万人关注</div>
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
                                    <div style="padding-top: 5px">627.7万人关注</div>
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
                                    <div style="padding-top: 5px">627.7万人关注</div>
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
                                    <div style="padding-top: 5px">627.7万人关注</div>
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
                                    <div style="padding-top: 5px">627.7万人关注</div>
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
                                    <div style="padding-top: 5px">627.7万人关注</div>
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
                                    <div style="padding-top: 5px">627.7万人关注</div>
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
                                    <div style="padding-top: 5px">627.7万人关注</div>
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
                                    <div style="padding-top: 5px">627.7万人关注</div>
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
                                    <div style="padding-top: 5px">627.7万人关注</div>
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
        <!-- 关注的歌手 -->


        <!-- 关注的歌单 -->
        <div class="layui-tab-item">

        </div>
        <!-- 关注的歌单 -->
    </div>

</div>
<script type="text/javascript" src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script>
    $(document).ready(function () {
        $("#test").click(function () {
            if ($(this).text() == "批量操作") {
                $('.layui-form-checkbox').show();
                $(this).text('退出批量操作');
            } else {
                $('.layui-form-checkbox').hide();
                $(this).text('批量操作');
            }
        });

        $("#img").click(function () {
            layer.open({
                type: 2,
                title: '',
                shadeClose: true,
                scrollbar: false,
                shade: 0.000001,
                closeBtn: 0,
                moveOut: false,
                area: ['700px', '240px'],
                content: 'singer_info.jsp'
            });
        });


        //加载弹出层
        $(function () {
            layui.use(['form', 'element'],
                function () {
                    layer = layui.layer;
                    element = layui.element;
                });
            tableCheck = {
                init: function () {
                    $(".layui-form-checkbox").click(function (event) {
                        if ($(this).hasClass('layui-form-checked')) {
                            $(this).removeClass('layui-form-checked');
                            if ($(this).hasClass('header')) {
                                $(".layui-form-checkbox").removeClass('layui-form-checked');
                            }
                        } else {
                            $(this).addClass('layui-form-checked');
                            if ($(this).hasClass('header')) {
                                $(".layui-form-checkbox").addClass('layui-form-checked');
                            }
                        }

                    });
                },
                getData: function () {
                    var obj = $(".layui-form-checked").not('.header');
                    var arr = [];
                    obj.each(function (index, el) {
                        arr.push(obj.eq(index).attr('data-id'));
                    });
                    return arr;
                }
            }
            //开启表格多选
            tableCheck.init();
            $('.container .left_open i').click(function (event) {
                if ($('.left-nav').css('left') == '0px') {
                    $('.left-nav').animate({left: '-221px'}, 100);
                    $('.page-content').animate({left: '0px'}, 100);
                    $('.page-content-bg').hide();
                } else {
                    $('.left-nav').animate({left: '0px'}, 100);
                    $('.page-content').animate({left: '221px'}, 100);
                    if ($(window).width() < 768) {
                        $('.page-content-bg').show();
                    }
                }

            });
            $('.page-content-bg').click(function (event) {
                $('.left-nav').animate({left: '-215px'}, 100);
                $('.page-content').animate({left: '0px'}, 100);
                $(this).hide();
            });

            $('.layui-tab-close').click(function (event) {
                $('.layui-tab-title li').eq(0).find('i').remove();
            });
        });
    });
</script>
</body>
</html>















