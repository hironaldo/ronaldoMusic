$(function () {
    let keyCat = $("#key").text().trim();   //歌单关键字
    /*初始化*/
    $('#box').paging({
        initPageNo: 1, totalPages: 8, slideSpeed: 600, jump: true,
        callback: function (page) {
            console.log(page);
            let url = "http://localhost:3000/top/playlist?offset=" + page * 33 + "&cat=" + keyCat + "&limit=20";
            $.get(url, function (data) {
                $("#ssheet_box").html('');
                $("#data").tmpl(data.playlists).appendTo('#ssheet_box');
            });
        }
    });
    switch (keyCat) {
        case '流行':
            $('.classify-nav p').html('Pop起源于19世纪末20年代初的美国，通常是指那些流行于一时，甚至是流传于后世的器乐乐曲和歌曲。由于其内容通俗，形式活泼，情感真挚，具有很大的易传播性，并且被大众所喜爱，因此亦被称作“大众音乐”。与此同时它具有很大的商业化盈利的目标价值，有时易被称为“商业音乐”，艺术性已然是其次，商业性的价值比重占据主体位置。\n');
            break;
        case '欧美':
            $('.classify-nav p').html('潮流英文歌曲的风向标，不用找了! 关于欧美的都在这。');
            break;
    }
});