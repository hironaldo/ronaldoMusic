$(function () {
    /*歌单*/
    $.get('http://127.0.0.1:3000/personalized?limit=10', function (data) {
        $("#song_sheet").tmpl(data.result).appendTo('#songsheet_top');
    });

    /*乐人*/
    $.get('http://127.0.0.1:3000/top/artists?offset=2&limit=5', function (data) {
        $("#singer").tmpl(data.artists).appendTo('#singer_top');
    });

    /*音乐排行榜*/
    $.get('http://localhost:3000/top/list?idx=0', function (data) {
        $("#ranking").tmpl(data.playlist.tracks).appendTo('#pop_song');
    });
    $.get('http://localhost:3000/top/list?idx=1', function (data) {
        $("#ranking").tmpl(data.playlist.tracks).appendTo('#hot_song');
    });
    $.get('http://localhost:3000/top/list?idx=3', function (data) {
        $("#ranking").tmpl(data.playlist.tracks).appendTo('#new_song');
    });
    $.get('http://localhost:3000/top/list?idx=6', function (data) {
        $("#ranking").tmpl(data.playlist.tracks).appendTo('#eur_song');
    });

    /*mv*/
    $.get('http://localhost:3000/top/mv?limit=4', function (data) {
        $("#mv").tmpl(data.data).appendTo('#mv_beg');
    });
    $.get('http://localhost:3000/top/mv?offset=5&limit=4', function (data) {
        $("#mv").tmpl(data.data).appendTo('#mv_end');
    });
});