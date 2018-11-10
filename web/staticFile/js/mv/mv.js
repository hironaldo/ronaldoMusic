(function ($, window, document) {
    let plId = $('#plId').text().trim();    //歌单id
    let siId = $('#siId').text().trim();    //歌手id
    /*当前MV*/
    let url = 'https://api.bzqll.com/music/netease/mv?key=579621905&id=' + plId;
    $.get(url, function (data) {
        $('#mv_info').empty();
        $('#mv').tmpl(data.data).appendTo('#mv_info');
    });

    /*相关MV*/
    $.ajax({
        url: 'http://localhost:3000/artist/mv?id=' + siId,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $('#mv_box').empty();
            $('#c-mv').tmpl(data.mvs).appendTo('#mv_box');
        }
    });

    /*评论*/
    $.ajax({
        url: 'http://localhost:3000/comment/mv?id=' + plId,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $('#content_top').empty();
            $('#t-comment').tmpl(data.hotComments).appendTo('#content_top');
        }
    });
    $('#box').paging({
        initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
        callback: function (page) {
            $.ajax({
                url: 'http://localhost:3000/comment/mv?id=' + plId + '&offset=' + (page - 1),
                xhrFields: {withCredentials: true},
                success: function (data) {
                    $('#content_new').empty();
                    $('#n-comment').tmpl(data.comments).appendTo('#content_new');
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
    /*---------------------------- DOM加载完后的点击事件 ----------------------------*/
    /*获取播放地址*/
    setTimeout(function () {
        const mvUrl = $('#mvurl').text();
        let dp = new DPlayer({
            container: document.getElementById('dplayer'),
            autoplay: true,
            video: {url: mvUrl}
        });
    }, 500);
    /*切换播放*/
    $(document).on('click', '#mv_box li >div', function () {
        window.location.href = "play-mv.jsp?plId=" + $(this).find('h1').text() + '&siId=' + $('#siId').text().trim();
    });
    /*查看歌手信息*/
    $(document).on('click', '#siName', function () {
        window.location.href = 'singer_info.jsp?siId=' + $('#siId').text().trim() + '&siName=' + $(this).text();
    });
})(jQuery, window, document);