(function ($, window, document) {
    let timestamp = Date.parse(new Date()); //时间戳
    let userId = $('#userId').text().trim();
    /*加载首页基本数据*/
    $.ajax({
        url: 'http://localhost:3000/user/detail?uid=' + userId + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#user_info").html('');
            $("#u-info").tmpl(data.profile).appendTo('#user_info');
            setTimeout(function () {
                $('img').lazyload({
                    threshold: 200, effect: "fadeIn", failure_limit: 20, skip_invisible: false
                });
            }, 1000);
        }
    });

    /*加载用户的歌单*/
    $.ajax({
        url: 'http://localhost:3000/user/playlist?uid=' + userId + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#ssheet_box").html('');
            $("#u-songlist").tmpl(data.playlist).appendTo('#ssheet_box');
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
                /*加载用户的歌单*/
                $.ajax({
                    url: 'http://localhost:3000/user/playlist?uid=' + userId + '&timestamp=' + timestamp,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#ssheet_box").html('');
                        $("#u-songlist").tmpl(data.playlist).appendTo('#ssheet_box');
                        setTimeout(function () {
                            $('img').lazyload({
                                threshold: 200, effect: "fadeIn", failure_limit: 20, skip_invisible: false
                            });
                        }, 1000);
                    }
                });
                break;
            case 1:
                /*获取用户关注*/
                $.ajax({
                    url: 'http://localhost:3000/user/follows?uid=' + userId + '&timestamp=' + timestamp,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#follow_box").html('');
                        $("#u-follow").tmpl(data.follow).appendTo('#follow_box');
                        setTimeout(function () {
                            $('img').lazyload({
                                threshold: 200, effect: "fadeIn", failure_limit: 20, skip_invisible: false
                            });
                        }, 1000);
                    }
                });
                break;
            case 2:
                /*获取用户粉丝*/
                $.ajax({
                    url: 'http://localhost:3000/user/followeds?uid=' + userId + '&timestamp=' + timestamp,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#followed_box").html('');
                        $("#u-followed").tmpl(data.followeds).appendTo('#followed_box');
                        setTimeout(function () {
                            $('img').lazyload({
                                threshold: 200, effect: "fadeIn", failure_limit: 20, skip_invisible: false
                            });
                        }, 1000);
                    }
                });
                break;
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