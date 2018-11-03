$(document).ready(function () {
    $("#action").click(function () {
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