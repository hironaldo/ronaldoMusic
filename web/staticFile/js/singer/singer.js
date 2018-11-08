$(function () {
    /*根据url请求数据*/
    function request(url) {
        $.ajax({
            url: url,
            xhrFields: {withCredentials: true},
            success: function (data) {
                $("#singer_box").html('');
                $("#data").tmpl(data.artists).appendTo('#singer_box');
            }
        });
    }

    /*初始化 + 分页*/
    $('#box').paging({
        initPageNo: 1, totalPages: 15, slideSpeed: 600, jump: true,
        callback: function (page) {
            let url = "http://127.0.0.1:3000/top/artists?offset=" + (page -1) * 15 + "&limit=15";
            request(url);
        }
    });

    /*指定查询*/
    let $ul_li = $("div ul li");
    $("div #ul0 >li").click(function () {
        let keyStr = $(this).text();
        $($ul_li).removeClass("act");
        $(this).addClass("act");
        if (keyStr === '入驻歌手') {
            $('#box').paging({
                initPageNo: 1, totalPages: 15, slideSpeed: 600, jump: true,
                callback: function (page) {
                    let url = "http://localhost:3000/artist/list?cat=5001&offset=" + page * 5 + "&limit=15";
                    request(url);
                }
            });
        }
    });
    $("div #ul1 >li").click(function () {
        let keyStr = $(this).text();
        $($ul_li).removeClass("act");
        $(this).addClass("act");
        if (keyStr === '男单') {
            $('#box').paging({
                initPageNo: 1, totalPages: 15, slideSpeed: 600, jump: true,
                callback: function (page) {
                    let url = "http://localhost:3000/artist/list?cat=1001&offset=" + page * 5 + "&limit=15";
                    request(url);
                }
            });
        } else if (keyStr === '女单') {
            $('#box').paging({
                initPageNo: 1, totalPages: 15, slideSpeed: 600, jump: true,
                callback: function (page) {
                    let url = "http://localhost:3000/artist/list?cat=1002&offset=" + page * 5 + "&limit=15";
                    request(url);
                }
            });
        } else if (keyStr === '组合') {
            $('#box').paging({
                initPageNo: 1, totalPages: 15, slideSpeed: 600, jump: true,
                callback: function (page) {
                    let url = "http://localhost:3000/artist/list?cat=1003&offset=" + page * 5 + "&limit=15";
                    request(url);
                }
            });
        }
    });
    $("div #ul2 >li").click(function () {
        let keyStr = $(this).text();
        $($ul_li).removeClass("act");
        $(this).addClass("act");
        if (keyStr === '欧美') {
            $('#box').paging({
                initPageNo: 1, totalPages: 15, slideSpeed: 600, jump: true,
                callback: function (page) {
                    let url = "http://localhost:3000/artist/list?cat=2002&offset=" + page * 5 + "&limit=15";
                    request(url);
                }
            });
        }
    });
});
