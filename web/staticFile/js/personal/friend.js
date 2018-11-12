(function ($, window, document) {
    let timestamp = Date.parse(new Date()); //时间戳
    let userId = $('#userId').text().trim();

    function lazyLoad() { //懒加载
        setTimeout(function () {
            $('img').lazyload({
                threshold: 200, effect: "fadeIn", failure_limit: 20, skip_invisible: false
            });
        }, 500);
    }

    /*加载用户基本信息*/
    $.ajax({
        url: 'http://localhost:3000/user/detail?uid=' + userId + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#user_info").empty();
            $("#u-info").tmpl(data.profile).appendTo('#user_info');
        }
    });

    /*加载用户的歌单*/
    $.ajax({
        url: 'http://localhost:3000/user/playlist?uid=' + userId + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $('#ssheet_box').empty();
            $('#u-songlist').tmpl(data.playlist).appendTo('#ssheet_box');
            lazyLoad();
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
                /*获取用户关注*/
                $.ajax({
                    url: 'http://localhost:3000/user/follows?uid=' + userId + '&timestamp=' + timestamp,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#follow_box').empty();
                        $('#u-follow').tmpl(data.follow).appendTo('#follow_box');
                        lazyLoad();
                    }
                });
                break;
            case 2:
                /*获取用户粉丝*/
                $.ajax({
                    url: 'http://localhost:3000/user/followeds?uid=' + userId + '&timestamp=' + timestamp,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#followed_box').empty();
                        $('#u-followed').tmpl(data.followeds).appendTo('#followed_box');
                        lazyLoad();
                    }
                });
                break;
        }
    });

    /*关注取关用户*/
    $(document).on('click', '#follow', function () {
        let timestamp = Date.parse(new Date());
        let userId = $('#userId').text().trim();
        let followed = $(this).find('b').text().trim();
        if (undefined == $.cookie('nickname')) {
            layer.msg('请先登陆 🙃', function () {
            });
        } else {
            if (followed == 'false') {
                $.ajax({
                    url: 'http://localhost:3000/follow?id=' + userId + '&t=1&timestamp=' + timestamp,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        if (data.code === 200) {
                            $.ajax({
                                url: 'http://localhost:3000/user/detail?uid=' + userId + '&timestamp=' + timestamp,
                                xhrFields: {withCredentials: true},
                                success: function (data) {
                                    $("#user_info").empty();
                                    $("#u-info").tmpl(data.profile).appendTo('#user_info');
                                }
                            });
                            layer.msg('关注成功');
                        } else {
                            layer.msg('出现缓存异常请稍后');
                        }
                    }
                });
            } else if (followed == 'true') {
                $.ajax({
                    url: 'http://localhost:3000/follow?id=' + userId + '&t=0&timestamp=' + timestamp,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        if (data.code === 200) {
                            $.ajax({
                                url: 'http://localhost:3000/user/detail?uid=' + userId + '&timestamp=' + timestamp,
                                xhrFields: {withCredentials: true},
                                success: function (data) {
                                    $("#user_info").empty();
                                    $("#u-info").tmpl(data.profile).appendTo('#user_info');
                                }
                            });
                            layer.msg('取关成功');
                        } else {
                            layer.msg('出现缓存异常请稍后');
                        }
                    }
                });
            }
        }
    });

    /*歌单详情*/
    $(document).on('click', "#ssheet_box li >div", function () {
        let slistId = $(this).find('h1').text().trim();
        let picurl = $(this).find('h2').text().trim();
        let nickname = $(this).find('h3').text().trim();
        let userId = $(this).find('h4').text().trim();
        let tags = $(this).find('h5').text().trim();
        window.location.href = "songsheet_info.jsp?slistId=" + slistId + "&picurl=" + picurl + "&nickname=" + nickname + "&userId=" + userId + "&tags=" + tags;
    });

    /*关注的信息*/
    $(document).on('click', "#follow_box li >div", function () {
        window.location.href = 'friendpage.jsp?userId=' + $(this).find('h1').text();
    });

    /*粉丝的信息*/
    $(document).on('click', "#followed_box li >div", function () {
        window.location.href = 'friendpage.jsp?userId=' + $(this).find('h1').text();
    });
})(jQuery, window, document);