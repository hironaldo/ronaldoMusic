(function ($, window, document) {
    let keyCat = $('#key').text().trim();   //歌单关键字
    /*获取总数*/
    $.ajax({
        url: 'http://localhost:3000/top/playlist?cat=' + keyCat,
        xhrFields: {withCredentials: true},
        success: function (data) {
            $('#total').empty();
            $('#c-total').tmpl(data).appendTo('#total');
        }
    });
    setTimeout(function () {
        $('#box').paging({
            initPageNo: 1,
            totalPages: Math.ceil($('#total').text().trim() / 50),
            slideSpeed: 600,
            jump: true,
            callback: function (page) {
                $.ajax({
                    url: 'http://localhost:3000/top/playlist?offset=' + (page - 1) * 50 + '&cat=' + keyCat,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#ssheet_box').empty();
                        $('#data').tmpl(data.playlists).appendTo('#ssheet_box');
                        setTimeout(function () {
                            $('img').lazyload({
                                threshold: 200, effect: "fadeIn", failure_limit: 20, skip_invisible: false
                            });
                        }, 500);
                    }
                });
            }
        });
    }, 500);

    switch (keyCat) {
        case '流行':
            $('.classify-nav p').html('Pop起源于19世纪末20年代初的美国，通常是指那些流行于一时，甚至是流传于后世的器乐乐曲和歌曲。由于其内容通俗，形式活泼，情感真挚，具有很大的易传播性，并且被大众所喜爱，因此亦被称作“大众音乐”。与此同时它具有很大的商业化盈利的目标价值，有时易被称为“商业音乐”，艺术性已然是其次，商业性的价值比重占据主体位置。\n');
            break;
        case '欧美':
            $('.classify-nav p').html('潮流英文歌曲的风向标，不用找了! 关于欧美的都在这。');
            break;
        case '华语':
            $('.classify-nav p').html('国语流行好歌不容错过!');
            break;
    }
    /*---------------------------- DOM加载完后的点击事件 ----------------------------*/
    $(document).on('click', '#ssheet_box li >div', function () {
        let slistId = $(this).find('h1').text().trim();
        let picurl = $(this).find('h2').text().trim();
        let nickname = $(this).find('h3').text().trim();
        let userId = $(this).find('h4').text().trim();
        let tags = $(this).find('h5').text().trim();
        window.location.href = 'songsheet_info.jsp?slistId=' + slistId + '&picurl=' + picurl + '&nickname=' + nickname + '&userId=' + userId + '&tags=' + tags;
    });
})(jQuery, window, document);