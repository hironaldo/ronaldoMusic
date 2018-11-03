$(function () {
    let siId = $('#siId').text().trim();    //歌手id
    let url;
    /*加载首页基本数据*/
    url = 'http://127.0.0.1:3000/artists?id=' + siId;
    $.get(url, function (data) {
        $("#singer_info").html('');
        $("#song").html('');
        $("#c-info").tmpl(data.artist).appendTo('#singer_info');
        $("#c-song").tmpl(data.hotSongs).appendTo('#song');
    });

    $('.layui-tab-title li').click(function () {
        layer.load();
        setTimeout(function () {
            layer.closeAll('loading');
        }, 1500);
        let index = $(this).index();
        switch (index) {
            case 0:
                url = 'http://127.0.0.1:3000/artists?id=' + siId;
                $.get(url, function (data) {
                    $("#singer_info").html('');
                    $("#song").html('');
                    $("#c-info").tmpl(data.artist).appendTo('#singer_info');
                    $("#c-song").tmpl(data.hotSongs).appendTo('#song');
                });
                break;
            case 1:
                url = 'http://127.0.0.1:3000/artist/album?id=' + siId + '&limit=20';
                $.get(url, function (data) {
                    $("#album_box").html('');
                    $("#c-album").tmpl(data.hotAlbums).appendTo('#album_box');
                });
                break;
            case 2:
                url = 'http://127.0.0.1:3000/artist/mv?id=' + siId;
                $.get(url, function (data) {
                    $("#mv_box").html('');
                    $("#c-mv").tmpl(data.mvs).appendTo('#mv_box');
                });
                break;
            case 3:
                url = 'http://127.0.0.1:3000/artist/desc?id=' + siId;
                $.get(url, function (data) {
                    $("#introduce_box").html('');
                    $("#c-introduce").tmpl(data.introduction).appendTo('#introduce_box');
                });
                break;
        }
    });
});


