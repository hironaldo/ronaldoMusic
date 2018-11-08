$(function () {
    let plId = $('#plId').text().trim();    //歌单id
    let siId = $('#siId').text().trim();    //歌手id

    /*当前MV*/
    let url = 'https://api.bzqll.com/music/netease/mv?key=579621905&id=' + plId;
    $.get(url, function (data) {
        $("#mv_info").html('');
        $("#mv").tmpl(data.data).appendTo('#mv_info');
    });

    /*相关MV*/
    $.ajax({
        url: 'http://localhost:3000/artist/mv?id=' + siId,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#mv_box").html('');
            $("#c-mv").tmpl(data.mvs).appendTo('#mv_box');
        }
    });

    /*评论*/
    $.ajax({
        url: 'http://localhost:3000/comment/mv?id=' + plId,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#content_top").html('');
            $("#t-comment").tmpl(data.hotComments).appendTo('#content_top');
        }
    });
    $('#box').paging({
        initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
        callback: function (page) {
            $.ajax({
                url: 'http://localhost:3000/comment/mv?id=' + plId + '&offset=' + (page - 1),
                xhrFields: {withCredentials: true},
                success: function (data) {
                    $("#content_new").html('');
                    $("#n-comment").tmpl(data.comments).appendTo('#content_new');
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
            let url = 'http://localhost:3000/comment?t=1' + '&type=1' + '&id=' + plId + '&content=' + content;
            if (undefined != $.cookie('nickname')) {
                $.ajax({
                    url: url,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        if (data.comment != null || data.comment != '') {
                            layer.msg('评论成功');
                            $('#comment').val('');
                            window.location.reload();
                            alert('11');
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