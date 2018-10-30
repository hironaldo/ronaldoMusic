$(function () {
    /*根据url请求数据*/
    function request(url) {
        $.get(url, function (data) {
            $("#ssheet_box").html('');
            $("#data").tmpl(data.playlists).appendTo('#ssheet_box');
        });
    }

    /*初始化*/
    $('#box').paging({
        initPageNo: 1, totalPages: 10, slideSpeed: 600, jump: true,
        callback: function (page) {
            console.log(page);
            let url = "http://localhost:3000/top/playlist?offset=" + page * 5 + "&limit=20";
            request(url);
        }
    });

    /*指定查询*/
    $('.classify-nav ul li >span').click(function () {
        let keyStr = $(this).text().trim();
        let url = "http://127.0.0.1:3000/top/playlist?limit=10&cat=" + keyStr;
        window.location.href = "songsheet_genre.jsp?keyStr=" + keyStr;
    });
});