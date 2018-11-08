$(function () {
    let timestamp = Date.parse(new Date()); //时间戳
    let slistId = $('#slistId').text().trim();    //歌单id
    /*获取歌单信息和歌曲*/
    let url = 'https://api.bzqll.com/music/netease/songList?key=579621905&id=' + slistId;
    $.get(url, function (data) {
        $("#ssheetinfo_box").html('');
        $("#c-info").tmpl(data.data).appendTo('#ssheetinfo_box');
        $("#song").html('');
        $("#c-song").tmpl(data.data.songs).appendTo('#song');
    });

    /*获取评论*/
    $('.layui-tab-title li').click(function () {
        layer.load();
        setTimeout(function () {
            layer.closeAll('loading');
        }, 1000);
        let index = $(this).index();
        if (index == 1) {
            $.ajax({
                url: 'http://localhost:3000/comment/playlist?id=' + slistId + '&timestamp=' + timestamp,
                xhrFields: {withCredentials: true},
                success: function (data) {
                    $("#content_top").html('');
                    $("#t-comment").tmpl(data.hotComments).appendTo('#content_top');
                    $("#total").html('');
                    $("#c-total").tmpl(data).appendTo('#total');
                }
            });
            $('#box').paging({
                initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
                callback: function (page) {
                    $.ajax({
                        url: 'http://localhost:3000/comment/playlist?id=' + slistId + '&offset=' + (page - 1) + '&timestamp=' + timestamp,
                        xhrFields: {withCredentials: true},
                        success: function (data) {
                            $("#content_new").html('');
                            $("#n-comment").tmpl(data.comments).appendTo('#content_new');
                        }
                    });
                }
            });
        }
    });
    /*字数统计*/
    $('#comment').keydown(function () {
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
        if (content.length == 0) {
            layer.msg('评论不能为空噢', function () {
            });
        } else {
            let url = 'http://localhost:3000/comment?t=1' + '&type=2' + '&id=' + slistId + '&content=' + content + '&timestamp=' + timestamp;
            if (undefined != $.cookie('nickname')) {
                $.ajax({
                    url: url,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        console.log(data);
                        if (data.comment != null || data.comment != '') {
                            layer.msg('评论成功');
                            $('#comment').val('');
                        }
                    }
                });
            } else {
                layer.msg('请先登陆 🙃', function () {
                });
            }
        }
    });
});