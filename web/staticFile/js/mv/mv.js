(function ($, window, document) {
    let timestamp = Date.parse(new Date()); //时间戳
    let userId = $.cookie('nickname');  //当前用户id
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

    /*获取评论*/
    function getComment(offset, iden) {
        let url;
        if (0 == offset && 0 == iden) {
            url = 'http://localhost:3000/comment/mv?id=' + plId + '&timestamp=' + timestamp;
        } else if (1 == iden) {
            url = 'http://localhost:3000/comment/mv?id=' + plId + '&offset=' + (offset - 1) + '&timestamp=' + timestamp;
        }
        $.ajax({
            url: url,
            xhrFields: {withCredentials: true},
            success: function (data) {
                $('#total').empty();
                $('#content_new').empty();
                $('#content_top').empty();
                $('#c-total').tmpl(data).appendTo('#total');
                $('#n-comment').tmpl(data.comments).appendTo('#content_new');
                $('#t-comment').tmpl(data.hotComments).appendTo('#content_top');
            }
        });
    }

    /*获取评论总数*/
    getComment(0, 0);
    /*获取评论分页*/
    setTimeout(function () {
        $('#box').paging({
            initPageNo: 1,
            totalPages: Math.ceil($('#total span b').text().trim() / 20),
            slideSpeed: 600,
            jump: true,
            callback: function (page) {
                getComment(page, 1);
            }
        });
    }, 500);

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
        if (undefined == userId) {
            layer.msg('请先登陆 🙃', function () {
            });
        } else {
            if (content.length > 0) {
                let url = 'http://localhost:3000/comment?t=1' + '&type=1' + '&id=' + plId + '&content=' + content;
                $.ajax({
                    url: url,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        if (data.comment != null || data.comment != '') {
                            $('#comment').val('');
                            layer.msg('评论成功');
                            getComment(0, 0);
                        }
                        getComment(0, 0);
                    }
                });
            } else {
                layer.msg('评论不能为空噢', function () {
                });
            }
        }
    });

    /*刷新评论*/
    $('#refresh').click(function () {
        layer.load(2);
        setTimeout(function () {
            layer.closeAll('loading');
        }, 400);
        getComment(0, 0);
    });

    /*---------------------------- DOM加载完后的点击事件 ----------------------------*/
    /*获取播放地址*/
    setTimeout(function () {
        const mvUrl = $('#mvurl').text().trim();
        new DPlayer({
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
    /*点赞*/
    $(document).on('click', '#content_top li,#content_new li', function () {
        let commentId = $(this).find('h1').text().trim();
        let liked = $(this).find('h2').text().trim();
        let mvId = $(this).find('h3').text().trim();
        if (undefined == userId) {
            layer.msg('请先登陆 🙃', function () {
            });
        } else {
            if (liked == 'false') {
                let url = 'http://localhost:3000/comment/like?id=' + mvId + '&cid=' + commentId + '&t=1&type=1';
                $.ajax({
                    url: url,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        if (data.code === 200) {
                            getComment(0, 0);
                        }
                    }
                });
            } else if (liked == 'true') {
                let url = 'http://localhost:3000/comment/like?id=' + mvId + '&cid=' + commentId + '&t=0&type=1';
                $.ajax({
                    url: url,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        if (data.code === 200) {
                            getComment(0, 0);
                        }
                    }
                });
            }
        }
    });

})(jQuery, window, document);