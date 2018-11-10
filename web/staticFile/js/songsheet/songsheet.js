(function ($, window, document) {
    /*初始化*/
    $('#box').paging({
        initPageNo: 1, totalPages: 8, slideSpeed: 600, jump: true,
        callback: function (page) {
            $.ajax({
                url: 'http://localhost:3000/top/playlist?offset=' + (page - 1) * 50,
                xhrFields: {withCredentials: true},
                success: function (data) {
                    $('#ssheet_box').empty();
                    $('#data').tmpl(data.playlists).appendTo('#ssheet_box');
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

    /*指定查询*/
    $('.classify-nav ul li >span').click(function () {
        window.location.href = 'songsheet_genre.jsp?keyStr=' + $(this).text().trim();
    });

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

