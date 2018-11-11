(function ($, window, document) {
    let timestamp = (new Date()).getTime(); //时间戳
    let slistId = $('#slistId').text().trim();    //歌单id
    /*获取歌单信息和歌曲*/
    let url = 'https://api.bzqll.com/music/netease/songList?key=579621905&id=' + slistId;
    $.get(url, function (data) {
        $("#ssheetinfo_box").html('');
        $("#c-info").tmpl(data.data).appendTo('#ssheetinfo_box');
        $("#song").html('');
        $("#c-song").tmpl(data.data.songs).appendTo('#song');
    });

    /*获取评论总数*/
    $.ajax({
        url: 'http://localhost:3000/comment/playlist?id=' + slistId + '&offset=0' + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#total").empty();
            $("#c-total").tmpl(data).appendTo('#total');
        }
    });

    /*获取评论*/
    $('.layui-tab-title li').click(function () {
        layer.load();
        setTimeout(function () {
            layer.closeAll('loading');
        }, 1000);
        if ($(this).index() == 1) {
            setTimeout(function () {
                $('#box').paging({
                    initPageNo: 1,
                    totalPages: Math.ceil($('#total span b').text().trim() / 20),
                    slideSpeed: 600,
                    jump: true,
                    callback: function (page) {
                        $.ajax({
                            url: 'http://localhost:3000/comment/playlist?id=' + slistId + '&offset=' + (page - 1) + '&timestamp=' + timestamp,
                            xhrFields: {withCredentials: true},
                            success: function (data) {
                                $("#content_new").empty();
                                $("#content_top").empty();
                                $("#n-comment").tmpl(data.comments).appendTo('#content_new');
                                $("#t-comment").tmpl(data.hotComments).appendTo('#content_top');
                            }
                        });
                    }
                });
            }, 500);
        }
    });
    /*字数统计*/
    $('#comment').keyup(function () {
        let content = $('#comment').val().trim().length;
        for (let i = 0; i < content.length; i++) {
            let a = content.charAt(i);
            if (a.match(/[^\x00-\xff]/ig) != null) content += 2;
            else content += 1;
        }
        $('#num').text(content + '/140')
    });
    /*发送评论*/
    $('#send').click(function () {
        let content = $('#comment').val().trim();
        console.log(content);
        if (undefined == $.cookie('nickname')) {
            layer.msg('请先登陆 🙃', function () {
            });
        } else {
            let url = 'http://localhost:3000/comment?t=1' + '&type=2' + '&id=' + slistId + '&content=' + content + '&timestamp=' + timestamp;
            if (content.length > 0) {
                $.ajax({
                    url: url,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        if (data.comment != null || data.comment != '') {
                            layer.msg('评论成功');
                            $('#comment').val('');
                            $.ajax({
                                url: 'http://localhost:3000/comment/playlist?id=' + slistId + '&offset=0&timestamp=' + timestamp.toFixed(2) + "123",
                                xhrFields: {withCredentials: true},
                                success: function (data) {
                                    console.log("重新请求成功-->>>" + data);
                                    $("#content_new").empty();
                                    $("#content_top").empty();
                                    $("#total").empty();
                                    $("#n-comment").tmpl(data.comments).appendTo('#content_new');
                                    $("#t-comment").tmpl(data.hotComments).appendTo('#content_top');
                                    $("#c-total").tmpl(data).appendTo('#total');
                                }
                            });
                        }
                    }
                });
            } else {
                layer.msg('评论不能为空噢', function () {
                });
            }
        }

    });

    /*点赞*/

    /*---------------------------- DOM加载完后的点击事件 ----------------------------*/
    /*跳转到歌曲创作者主页*/
    $(document).on('click', '#uinfo', function () {
        window.location.href = 'friendpage.jsp?userId=' + $('#userId').text();
    });
    /*点赞*/
    $(document).on('click', '#content_top li div p >span', function () {
        alert('11');

        //window.location.href = 'friendpage.jsp?userId=' + $('#userId').text();
    });

})(jQuery, window, document);