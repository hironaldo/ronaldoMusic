(function ($, window, document) {
    let siId = $('#siId').text().trim();    //歌手id
    function lazyLoad() { //懒加载
        setTimeout(function () {
            $('img').lazyload({
                threshold: 200, effect: "fadeIn", failure_limit: 20, skip_invisible: false
            });
        }, 500);
    }

    /*加载首页基本数据*/
    $.ajax({
        url: 'http://127.0.0.1:3000/artists?id=' + siId,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $('#singer_info').empty();
            $('#song').empty();
            $('#c-info').tmpl(data.artist).appendTo('#singer_info');
            $('#c-song').tmpl(data.hotSongs).appendTo('#song');
        }
    });

    $('.layui-tab-title li').click(function () {
        layer.load();
        setTimeout(function () {
            layer.closeAll('loading');
        }, 1500);
        let index = $(this).index();
        switch (index) {
            case 0:
                $.ajax({
                    url: 'http://127.0.0.1:3000/artists?id=' + siId,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#singer_info").html('');
                        $("#song").html('');
                        $("#c-info").tmpl(data.artist).appendTo('#singer_info');
                        $("#c-song").tmpl(data.hotSongs).appendTo('#song');
                    }
                });
                break;
            case 1:
                $.ajax({
                    url: 'http://127.0.0.1:3000/artist/album?id=' + siId + '&limit=20',
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#album_box').empty();
                        $('#c-album').tmpl(data.hotAlbums).appendTo('#album_box');
                        lazyLoad();
                    }
                });
                break;
            case 2:
                $.ajax({
                    url: 'http://127.0.0.1:3000/artist/mv?id=' + siId,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#mv_box').empty();
                        $("#c-mv").tmpl(data.mvs).appendTo('#mv_box');
                        lazyLoad();
                    }
                });
                break;
            case 3:
                $.ajax({
                    url: 'http://127.0.0.1:3000/artist/desc?id=' + siId,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#introduce_box").empty();
                        $("#c-introduce").tmpl(data.introduction).appendTo('#introduce_box');
                    }
                });
                break;
        }
    });

    /*---------------------------- DOM加载完后的点击事件 ----------------------------*/
    /*查看相关专辑信息*/
    $(document).on('click', '#album_box li >div', function () {
        window.location.href = 'album_info.jsp?abId=' + $(this).find('h1').text().trim() + '&siId=' + $('#siId').text().trim();
    });
    /*查看mv信息*/
    $(document).on('click', '#mv_box li >div', function () {
        window.location.href = 'play-mv.jsp?plId=' + $(this).find('h1').text() + '&siId=' + $('#siId').text().trim();
    });

    /*关注 取关歌手*/
    $(document).on('click', '#singer_info ul li .def', function () {
        let siId = $(this).find('strong').text().trim();
        if (undefined === $.cookie('nickname')) {
            layer.msg('请先登陆 🙃', function () {
            });
        } else {
            if ($(this).find('button').text().trim() == '关注') {
                $.ajax({
                    url: 'http://localhost:3000/artist/sub?id=' + siId + '&t=1',
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        if (data.code === 200) {
                            layer.msg('关注成功');
                        }
                    }
                });
            } else {
                $.ajax({
                    url: 'http://localhost:3000/artist/sub?id=' + siId + '&t=0',
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        if (data.code === 200) {
                            layer.msg('取关成功');
                        }
                    }
                });
            }
        }
    });
})(jQuery, window, document);



