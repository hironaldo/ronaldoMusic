$(function () {
    /*初始化*/
    $('#box').paging({
        initPageNo: 1, totalPages: 10, slideSpeed: 600, jump: true,
        callback: function (page) {
            $.ajax({
                url: 'http://localhost:3000/top/playlist?offset=' + (page -1) + '&limit=20',
                xhrFields: {withCredentials: true},
                success: function (data) {
                    $("#ssheet_box").html('');
                    $("#data").tmpl(data.playlists).appendTo('#ssheet_box');
                    /*懒加载*/
                    setTimeout(function () {
                        $('img').lazyload({
                            threshold : 200,effect : "fadeIn",failure_limit : 20,skip_invisible : false
                        });
                    }, 1000);
                }
            });
        }
    });

    /*指定查询*/
    $('.classify-nav ul li >span').click(function () {
        window.location.href = "songsheet_genre.jsp?keyStr=" + $(this).text().trim();
    });
});