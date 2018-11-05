$(function () {
    let siId = $('#siId').text().trim();    //歌手id
    /*加载首页基本数据*/
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
                    url: 'http://127.0.0.1:3000/artist/album?id=' + siId + '&limit=15',
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#album_box").html('');
                        $("#c-album").tmpl(data.hotAlbums).appendTo('#album_box');
                    }
                });
                break;
            case 2:
                $.ajax({
                    url: 'http://127.0.0.1:3000/artist/mv?id=' + siId,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#mv_box").html('');
                        $("#c-mv").tmpl(data.mvs).appendTo('#mv_box');
                    }
                });
                break;
            case 3:
                $.ajax({
                    url: 'http://127.0.0.1:3000/artist/desc?id=' + siId,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $("#introduce_box").html('');
                        $("#c-introduce").tmpl(data.introduction).appendTo('#introduce_box');
                    }
                });
                break;
        }
    });
});


