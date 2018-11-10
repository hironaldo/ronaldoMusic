(function ($, window, document) {
    let timestamp = Date.parse(new Date()); //时间戳
    let abId = $('#abId').text().trim();
    let siId = $('#siId').text().trim();
    /*获取专辑基本信息*/
    $.ajax({
        url: 'http://localhost:3000/album?id=' + abId + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#albuminfo_box").html('');
            $("#c-info").tmpl(data.album).appendTo('#albuminfo_box');
        }
    });

    /*获取专辑歌曲*/
    let url = 'https://api.bzqll.com/music/netease/album?key=579621905&id=' + abId;
    $.get(url, function (data) {
        $("#song").html('');
        $("#c-song").tmpl(data.data).appendTo('#song');
    });

    /*获取相关专辑*/
    $.ajax({
        url: 'http://localhost:3000/artist/album?id=' + siId + "&limit=10" + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#album_box").html('');
            $("#c-album").tmpl(data.hotAlbums).appendTo('#album_box');
            setTimeout(function () {
                $('img').lazyload();
            }, 500);
        }
    });

    /*获取评论*/
    $.ajax({
        url: 'http://localhost:3000/comment/album?id=' + abId + '&timestamp=' + timestamp,
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
                url: 'http://localhost:3000/comment/album?id=' + abId + "&offset=" + page + "&limit=10" + '&timestamp=' + timestamp,
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
            let url = 'http://localhost:3000/comment?t=1' + '&type=3' + '&id=' + abId + '&content=' + content;
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
    /*---------------------------- DOM加载完后的点击事件 ----------------------------*/
    /*切换专辑信息*/
    $(document).on('click', "#album_box li >div", function () {
        window.location.href = 'album_info.jsp?abId=' + $(this).find('h1').text().trim() + "&siId=" + $('#siId').text().trim();
    });
    /*查看歌手资料*/
    $(document).on('click', "#siName", function () {
        window.location.href = "singer_info.jsp?siId=" + $('#siId').text().trim() + "&siName=" + $(this).text();
    });
})(jQuery, window, document);
