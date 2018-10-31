$(function () {
    /*初始化*/
    $('#box').paging({
        initPageNo: 1, totalPages: 10, slideSpeed: 600, jump: true,
        callback: function (page) {
            let url = "http://localhost:3000/top/playlist?offset=" + page * 5 + "&limit=20";
            $.get(url, function (data) {
                $("#ssheet_box").html('');
                $("#data").tmpl(data.playlists).appendTo('#ssheet_box');
            });
        }
    });

    /*指定查询*/
    $('.classify-nav ul li >span').click(function () {
        window.location.href = "songsheet_genre.jsp?keyStr=" + $(this).text().trim();
    });
});