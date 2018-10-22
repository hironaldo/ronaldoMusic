<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>歌单页面</title>
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
            background-color: #f5f5f7;
        }

    </style>
</head>
<body>


<table style="margin: 15px 0 0 30px ">
    <tr>
        <td>
            <img src="https://p.qpic.cn/music_cover/7XEVurTOuWkv53uNkwvuomrxE7KxgibjV124luMWkNn5pjrbcfIxlUA/300?n=1"
                 width="150"/>
        </td>
        <td style="padding-left: 20px">
            <ul>
                <li>
                    <span style="font-size: 22px;">Shake It Off</span>
                </li>
                <li style="padding-top: 10px">
                    <span style="font-size: 10px;color: #666">
                        <img src="../staticFile/img/head.jpg " width="30" style="border-radius: 50%">&nbsp;Taylor Swift
                    </span>
                </li>
                <li style="padding-top: 10px">
                    <span style="font-size: 10px;color: #666">introduce：这是我第一个歌单哈哈哈哈哈</span>
                </li>
                <li style="padding-top: 20px">
                    <button class="layui-btn layui-btn-sm layui-btn-primary">
                        <i class="layui-icon">&#xe652;</i>播放全部
                    </button>
                    <button id="download" style="display: none;" class="layui-btn layui-btn-sm layui-btn-primary">
                        <i class="layui-icon">&#xe601;</i>下载
                    </button>
                    <button id="like" style="display: none;" class="layui-btn layui-btn-sm layui-btn-primary">
                        <i class="layui-icon">&#xe67b;</i>喜欢
                    </button>
                    <button id="delete" style="display: none;" class="layui-btn layui-btn-sm layui-btn-primary">
                        <i class="layui-icon">&#x1006;</i>删除
                    </button>
                    <button class="layui-btn layui-btn-sm layui-btn-primary">
                        <i class="layui-icon">&#xe642;</i>编辑
                    </button>
                    <button id="action" class="layui-btn layui-btn-sm layui-btn-primary">批量操作</button>
                </li>
            </ul>
        </td>
    <tr>
</table>

<div class="layui-tab layui-tab-brief" style="background-color: white;">
    <ul class="layui-tab-title">
        <li class="layui-this">歌曲</li>
        <li>评论</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <table class="layui-table" lay-skin="nob">
                <thead>
                <tr>
                    <th>
                        <div style="display: none;" class="layui-unselect header layui-form-checkbox"
                             lay-skin="primary"><i
                                class="layui-icon">&#xe605;</i>
                        </div>&nbsp;歌曲
                    </th>
                    <th>歌手</th>
                    <th>时长</th>
                    <th>语种</th>
                    <th>专辑</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <div style="display: none;" class="layui-unselect layui-form-checkbox" lay-skin="primary"
                             data-id="">
                            <i class="layui-icon">&#xe605;</i>
                        </div>
                        Hello
                    </td>
                    <th>Roanldo</th>
                    <td>04:33</td>
                    <td>英语</td>
                    <td>Some love</td>
                    <td>
                        <img src="../staticFile/images/love.svg" width="16px">
                        <img src="../staticFile/img/delete.svg" width="16px">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="layui-tab-item">
            <textarea id="comment" maxlength="5"></textarea>
            <button class="layui-btn layui-btn-xs" style="float: right">发表评论</button>
        </div>
    </div>
</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script>
    $(function () {
        $("#action").click(function () {
            if ($(this).text() == "批量操作") {
                $('.layui-form-checkbox').show();
                $('#delete').show();
                $('#download').show();
                $('#like').show();
                $(this).text('退出批量操作');
            } else {
                $('.layui-form-checkbox').hide();
                $('#delete').hide();
                $('#download').hide();
                $('#like').hide();
                $(this).text('批量操作');
            }
        });

        layui.use('layedit', function () {
            var layedit = layui.layedit;
            layedit.build('comment', {
                height: 100,
                tool: [
                    'face'
                ]
            });
        });

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
</script>
</body>
</html>