(function ($, window, document) {
    let userId = $.cookie('userId');
    let url;

    /*在线搜索*/
    function onlineSearch(keyStr) {
        if (keyStr.length === 0) {
            $('#search_tips').show();
            $('.h-search').show();
            $('.t-search').hide();
        } else if (keyStr != null) {
            $('#search_tips').show();
            $('.t-search').show();
            $('.h-search').hide();
            /*单曲*/
            url = 'http://localhost:3000/search?keywords= ' + keyStr + '&type=1&limit=4';
            $.get(url, function (data) {
                $('.online_music').empty();
                $('#h-song').tmpl(data.result).appendTo('.online_music');
            });
            /*歌手*/
            url = 'http://localhost:3000/search?keywords= ' + keyStr + '&type=100&limit=2';
            $.get(url, function (data) {
                $('.online_singer').empty();
                $('#h-singer').tmpl(data.result).appendTo('.online_singer');
            });
            /*专辑*/
            url = 'http://localhost:3000/search?keywords= ' + keyStr + '&type=10&limit=2';
            $.get(url, function (data) {
                $('.online_album').empty();
                $('#h-album').tmpl(data.result).appendTo('.online_album');
            });
            /*歌单*/
            url = 'http://localhost:3000/search?keywords= ' + keyStr + '&type=1000&limit=2';
            $.get(url, function (data) {
                $('.online_sheet').empty();
                $('#h-sheet').tmpl(data.result).appendTo('.online_sheet');
            });
        }
    }

    /*搜索框*/
    $('.layui-nav input').on({
        focus: function () {
            if ($(this).val().trim() == null || $(this).val().trim() == '') {
                $('#search-img').css({'width': '20px', 'position': 'relative', 'right': '30px'});
                $('#search_tips').show();
                $('.h-search').show();
                $('.t-search').hide();
                let url = 'http://localhost:3000/search/hot';
                $.get(url, function (data) {
                    $('#hot_search').empty();
                    $('#h-search').tmpl(data.result).appendTo('#hot_search');
                });
            } else {
                $('#search-img').css({'width': '20px', 'position': 'relative', 'right': '30px'});
                onlineSearch($(this).val().trim());
            }
        }, blur: function () {
            $('#search-img').css({'width': '20px', 'position': 'relative', 'right': '250px'});
            setTimeout(function () {
                $('#search_tips').hide();
            }, 100)
        }, keyup: function (event) {
            let keyStr = $(this).val().trim();
            onlineSearch(keyStr);
            if (event.keyCode == 13) {
                $('#search_tips').hide();
                let url = 'Effect/search_result.jsp?keyStr=' + keyStr;
                $('.layui-nav input').val(keyStr);
                $($(".riht_body iframe")).attr("src", url);
            }
        }
    });

    function getUserSongsheet() {
        if (undefined != userId) {
            url = 'http://localhost:3000/user/playlist?uid=' + userId;
            $.get(url, function (data) {
                $('#ul3').empty();
                $('#m-songlist').tmpl(data.playlist).appendTo('#ul3');
                $.each(data.playlist, function (i, time) {
                    if (i != 0) {
                        return false;
                    }
                    $.cookie('likeId', time.id, {expires: 1});
                });
            });
        }
    }

    /*加载用户歌单*/
    getUserSongsheet();

    /*刷新用户歌单*/
    $('h4 .right').click(function () {
        layer.load(2);
        setTimeout(function () {
            layer.closeAll('loading');
        }, 400);
        getUserSongsheet();
    });

    /*获得登陆信息*/
    if (undefined != userId) {
        $('#userinfo li:eq(1) img').attr('src', $.cookie('userpic'));
        $('#userinfo li:eq(2)').attr('id', '');
        $('#userinfo li:eq(2)').text($.cookie('nickname'));
    }
    /*加载登陆页面*/
    $("#login_popup").click(function () {
        layer.open({
            type: 2,
            title: '',
            shadeClose: false,
            shade: 0.3,
            area: ['330px', '365px'],
            content: 'login.jsp'
        });
    });

    /*开始程序隐藏 双击后显示*/
    //$("#content").hide();
    $("#music").dblclick(function () {
        $("#content").fadeIn();
    });
    $("#ppt").dblclick(function () {
        window.open("index.html");
    });

    /*顶部导航栏*/
    $('#ul_left .layui-nav-item >img').click(function () {
        let index = $(this).index();
        if (index == 0) {
            history.go(-1);
        } else if (index == 1) {
            history.go(1);
        } else {
            window.location.reload();
        }
    });
    /*关闭程序*/
    $('#ul_right li img').click(function () {
        $("#content").fadeOut();
    });

})(jQuery, window, document);