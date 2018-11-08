$(function () {
    let userId = $.cookie('userId');
    /*加载首页基本数据*/
    $.ajax({
        url: 'http://localhost:3000/user/detail?uid=' + userId,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#user_info").html('');
            $("#u-info").tmpl(data.profile).appendTo('#user_info');
        }
    });

    /*加载喜欢的歌曲*/
    let url = 'https://api.bzqll.com/music/netease/songList?key=579621905&id=' + 2490125966;
    $.get(url, function (data) {
        $("#song").html('');
        $("#u-likemusic").tmpl(data.data.songs).appendTo('#song');
    });

    /*选项卡*/
    $('.layui-tab-title li').click(function () {
        layer.load();
        setTimeout(function () {
            layer.closeAll('loading');
        }, 1500);
        let index = $(this).index();
        switch (index) {
            case 0:
                $('#nav').show();
                break;
            case 1:
                $('#nav').hide();
                /*加载用户的歌单*/
                $.ajax({
                    url: 'http://localhost:3000/user/playlist?uid=' + userId,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#mssheet_box").html('');
                        $("#u-songlist").tmpl(data.playlist).appendTo('#mssheet_box');
                    }
                });
                break;
            case 2:
                $('#nav').hide();
                /*获取用户关注*/
                $.ajax({
                    url: 'http://localhost:3000/user/follows?uid=' + userId,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#follow_box").html('');
                        $("#u-follow").tmpl(data.follow).appendTo('#follow_box');
                    }
                });
                break;
            case 3:
                $('#nav').hide();
                /*获取用户粉丝*/
                $.ajax({
                    url: 'http://localhost:3000/user/followeds?uid=' + userId,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#followed_box").html('');
                        $("#u-followed").tmpl(data.followeds).appendTo('#followed_box');
                    }
                });
                break;
        }
    });

    /*我喜欢栏下的标签*/
    $('#nav span').click(function () {
        let index = $(this).index();
        if (index == 0) {
            let url = 'https://api.bzqll.com/music/netease/songList?key=579621905&id=' + 2490125966;
            $.get(url, function (data) {
                $("#song").html('');
                $("#u-likemusic").tmpl(data.data.songs).appendTo('#song');
            });
            $('#o-ele').show();
            $('#ssheet_box').hide();
            $('#singer_box').hide();
            $(this).attr('style', 'font-size: 12px;color: #009688;');
            $('#t-span').attr('style', 'font-size: 12px;');
            $('#r-span').attr('style', 'font-size: 12px;');
        } else if (index == 1) {
            $.ajax({
                url: 'http://localhost:3000/artist/sublist',
                xhrFields: {withCredentials: true},
                success: function (data) {
                    $("#singer_box").html('');
                    $("#s-follow").tmpl(data.data).appendTo('#singer_box');
                }
            });
            $('#o-ele').hide();
            $('#ssheet_box').hide();
            $('#singer_box').show();
            $(this).attr('style', 'font-size: 12px;color: #009688;');
            $('#o-span').attr('style', 'font-size: 12px;');
            $('#r-span').attr('style', 'font-size: 12px;');
        } else if (index == 2) {
            $.ajax({
                url: 'http://localhost:3000/user/playlist?uid=' + userId,
                xhrFields: {withCredentials: true},
                success: function (data) {
                    $("#ssheet_box").html('');
                    $("#s-songlist").tmpl(data.playlist).appendTo('#ssheet_box');
                }
            });
            $('#o-ele').hide();
            $('#ssheet_box').show();
            $('#singer_box').hide();
            $(this).attr('style', 'font-size: 12px;color: #009688;');
            $('#o-span').attr('style', 'font-size: 12px;');
            $('#t-span').attr('style', 'font-size: 12px;');
        }
    });
});