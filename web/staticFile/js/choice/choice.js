$(function () {
    let timestamp = Date.parse(new Date()); //时间戳
    /*歌单*/
    $.ajax({
        url: 'http://127.0.0.1:3000/personalized?limit=10' + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#song_sheet").tmpl(data.result).appendTo('#songsheet_top');
        }
    });

    /*乐人*/
    $.ajax({
        url: 'http://127.0.0.1:3000/top/artists?offset=2&limit=5' + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#singer").tmpl(data.artists).appendTo('#singer_top');
        }
    });

    /*音乐排行榜*/
    $.ajax({
        url: 'http://localhost:3000/top/list?idx=0' + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#ranking").tmpl(data.playlist.tracks).appendTo('#pop_song');
        }
    });
    $.ajax({
        url: 'http://localhost:3000/top/list?idx=1' + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#ranking").tmpl(data.playlist.tracks).appendTo('#hot_song');
        }
    });
    $.ajax({
        url: 'http://localhost:3000/top/list?idx=3' + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#ranking").tmpl(data.playlist.tracks).appendTo('#new_song');
        }
    });
    $.ajax({
        url: 'http://localhost:3000/top/list?idx=6' + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#ranking").tmpl(data.playlist.tracks).appendTo('#eur_song');
        }
    });

    /*mv*/
    $.ajax({
        url: 'http://localhost:3000/top/mv?limit=4' + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#mv").tmpl(data.data).appendTo('#mv_beg');
        }
    });
    $.ajax({
        url: 'http://localhost:3000/top/mv?offset=5&limit=4' + '&timestamp=' + timestamp,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $("#mv").tmpl(data.data).appendTo('#mv_end');
        }
    });

    /*轮播*/
    new zturn({
        id: "zturn",
        opacity: 0.9,
        width: 382,
        Awidth: 1024,
        scale: 0.9
    });
    $('#zturn li').click(function () {
        let tips = $(this).css("opacity");
        if (tips == 1 && $(this).attr("data_n") == 1) {
            window.location.href = 'album_info.jsp?abId=' + 73876805 + "&siId=" + 189873;
        }
    });


});