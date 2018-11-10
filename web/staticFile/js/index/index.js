(function ($, window, document) {
    let url;
    /*搜索框*/
    $('.layui-nav input').on({
        focus: function () {
            if ($(this).val().trim() == null || $(this).val().trim() == '') {
                $('#search-img').css({'width': '20px', 'position': 'relative', 'right': '30px'});
                $('.h-search').show();
                let url = 'http://localhost:3000/search/hot';
                $.get(url, function (data) {
                    $("#hot_search").empty();
                    $("#h-search").tmpl(data.result).appendTo('#hot_search');
                });
            }
        }, blur: function () {
            $('#search-img').css({'width': '20px', 'position': 'relative', 'right': '250px'});
            setTimeout(function () {
                $('.h-search').hide();
            }, 100)
        }, keyup: function () {
            let keyStr = $(this).val().trim();
            console.log(keyStr);
            if (keyStr.length === 0) {
                $('.h-search').show();
                $('.t-search').hide();
            } else if (keyStr != null) {
                $('.t-search').show();
                /*单曲*/
                url = 'http://localhost:3000/search?keywords= ' + keyStr + '&type=1&limit=4';
                $.get(url, function (data) {
                    $(".online_music").empty();
                    $("#h-song").tmpl(data.result).appendTo('.online_music');
                });
                /*歌手*/
                url = 'http://localhost:3000/search?keywords= ' + keyStr + '&type=100&limit=2';
                $.get(url, function (data) {
                    $(".online_singer").empty();
                    $("#h-singer").tmpl(data.result).appendTo('.online_singer');
                });
            }
        }
    });

    /*加载用户歌单*/
    if ($.cookie('userId') != undefined) {
        let url = 'http://localhost:3000/user/playlist?uid=' + $.cookie('userId');
        $.get(url, function (data) {
            $('#ul3').html('');
            $('#m-songlist').tmpl(data.playlist).appendTo('#ul3');
        });
    }
    /*获得登陆信息*/
    if (null != $.cookie('nickname')) {
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
            shade: 0.8,
            area: ['330px', '365px'],
            content: 'login.jsp'
        });
    });

    /*新建歌单*/
    $('.right').click(function () {
        alert('11');
        layer.open({
            type: 2,
            title: '',
            shadeClose: false,
            shade: 0.8,
            area: ['330px', '365px'],
            content: 'Effect/newsonglist.jsp'
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