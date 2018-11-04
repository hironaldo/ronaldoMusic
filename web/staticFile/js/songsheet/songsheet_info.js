$(function () {
    let slistId = $('#slistId').text().trim();    //歌单id
    let url;
    /*获取歌单信息和歌曲*/
    url = 'https://api.bzqll.com/music/netease/songList?key=579621905&id=' + slistId;
    $.get(url, function (data) {
        $("#ssheetinfo_box").html('');
        $("#c-info").tmpl(data.data).appendTo('#ssheetinfo_box');
    });
    url = 'https://api.bzqll.com/music/netease/songList?key=579621905&id=' + slistId;
    $.get(url, function (data) {
        $("#song").html('');
        $("#c-song").tmpl(data.data.songs).appendTo('#song');
    });

    /*获取评论*/
    $('.layui-tab-title li').click(function () {
        layer.load();
        setTimeout(function () {
            layer.closeAll('loading');
        }, 1500);
        let index = $(this).index();
        switch (index) {
            case 0:
                break;
            case 1:
                let url = 'http://localhost:3000/comment/playlist?id=' + slistId;
                $.get(url, function (data) {
                    $("#content_top").html('');
                    $("#t-comment").tmpl(data.hotComments).appendTo('#content_top');
                });
                $('#box').paging({
                    initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
                    callback: function (page) {
                        url = 'http://localhost:3000/comment/playlist?id=' + slistId + "&offset=" + page + "&limit=10";
                        $.get(url, function (data) {
                            $("#content_new").html('');
                            $("#n-comment").tmpl(data.comments).appendTo('#content_new');
                        });
                    }
                });
                break;
        }
    });

    /*发送评论*/
    layui.use('layedit', function () {
        let index = layui.layedit.build('comment', {height: 80, tool: ['|']});
        $('#send').click(function () {
            let content = layui.layedit.getText(index);
            url = 'http://localhost:3000/comment?t=1' + '&type=2' + '&id=' + slistId + '&content=' + content;
            alert(url);
            $.get(url, function (data) {
                alert(data.msg);
                if(data.code === 302){
                    alert('123');
                }
            });
        });
    });


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