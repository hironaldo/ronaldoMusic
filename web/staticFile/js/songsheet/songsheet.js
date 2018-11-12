(function ($, window, document) {
    /*获取歌单总数*/
    $.ajax({
        url: 'http://localhost:3000/top/playlist',
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
                    url: 'http://localhost:3000/top/playlist?offset=' + (page - 1) * 50,
                    xhrFields: {withCredentials: true},
                    success: function (data) {
                        $('#ssheet_box').empty();
                        $('#total').empty();
                        $('#c-songlist').tmpl(data.playlists).appendTo('#ssheet_box');
                        $('#c-total').tmpl(data).appendTo('#total');
                        /*懒加载*/
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

    /*根据分类查询*/
    $('.classify-nav ul li >span').click(function () {
        window.location.href = 'songsheet_genre.jsp?keyStr=' + $(this).text().trim();
    });

    /*---------------------------- DOM加载完后的点击事件 ----------------------------*/
    $(document).on('click', '#ssheet_box li >div', function () {
        let slistId = $(this).find('h1').text().trim();
        let userId = $(this).find('h4').text().trim();
        let tags = $(this).find('h5').text().trim();
        window.location.href = 'songsheet_info.jsp?slistId=' + slistId + '&userId=' + userId + '&tags=' + tags;
    });
})(jQuery, window, document);

