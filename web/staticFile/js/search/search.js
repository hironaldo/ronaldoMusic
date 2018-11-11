(function ($, window, document) {
    /*懒加载*/
    function lazyLoad() {
        setTimeout(function () {
            $('img').lazyload();
        }, 500);
    }

    /*单曲*/
    $.ajax({
        url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=1',
        xhrFields: {withCredentials: true},
        success: function (data) {
            $('#song').html('');
            $('#p-song').tmpl(data.result).appendTo('#song');
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
                break;
            case 1:
                /*专辑*/
                $.ajax({
                    url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=10',
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#album_box').html('');
                        $('#p-album').tmpl(data.result).appendTo('#album_box');
                        lazyLoad();
                    }
                });
                break;
            case 2:
                /*歌单*/
                $.ajax({
                    url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=1000',
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#songlist_box').html('');
                        $('#p-songlist').tmpl(data.result).appendTo('#songlist_box');
                        lazyLoad();
                    }
                });
                break;
            case 3:
                /*mv*/
                $.ajax({
                    url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=1004',
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#mv_box').html('');
                        $('#p-mv').tmpl(data.result).appendTo('#mv_box');
                        lazyLoad();
                    }
                });
                break;
            case 4:
                /*歌手*/
                $.ajax({
                    url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=100',
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#singer_box').html('');
                        $('#p-singer').tmpl(data.result).appendTo('#singer_box');
                        lazyLoad();
                    }
                });
                break;
            case 5:
                /*用户*/
                $.ajax({
                    url: 'http://localhost:3000/search?keywords= ' + $('#keyStr').text().trim() + '&type=1002',
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#user_box').html('');
                        $('#p-user').tmpl(data.result).appendTo('#user_box');
                        lazyLoad();
                    }
                });
                break;
        }
    });
    /*---------------------------- DOM加载完后的点击事件 ----------------------------*/
    /*专辑*/
    $(document).on('click', '#album_box li', function () {
        window.location.href = 'album_info.jsp?abId=' + $(this).find('h1').text().trim() + "&siId=" + $(this).find('h2').text().trim();
    });
    /*歌单*/
    $(document).on('click', '#songlist_box li >div', function () {
        let slistId = $(this).find('h1').text().trim();
        let picurl = $(this).find('h2').text().trim();
        let nickname = $(this).find('h3').text().trim();
        let userId = $(this).find('h4').text().trim();
        let tags = $(this).find('h5').text().trim();
        window.location.href = 'songsheet_info.jsp?slistId=' + slistId + '&picurl=' + picurl + '&nickname=' + nickname + '&userId=' + userId + '&tags=' + tags;
    });
    /*mv*/
    $(document).on('click', '#mv_box li >div', function () {
        window.location.href = 'play-mv.jsp?plId=' + $(this).find('h1').text().trim() + '&siId=' + $(this).find('h2 span:eq(0)').text().trim();
    });
    /*歌手*/
    $(document).on('click', '#singer_box li >div', function () {
        window.location.href = 'singer_info.jsp?siId=' + $(this).find('h1').text() + '&siName=' + $(this).find('h2').text();
    });
    /*用户*/
    $(document).on('click', '#user_box li >div', function () {
        window.location.href = 'friendpage.jsp?userId=' + $(this).find('h1').text();
    });
})(jQuery, window, document);