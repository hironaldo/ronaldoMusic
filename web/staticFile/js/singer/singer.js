(function ($, window, document) {
    function getsingerBycat(page, cat) {
        let url;
        if (cat == 0) {
            url = "http://localhost:3000/top/artists?offset=" + (page - 1) * 15 + "&limit=15";
        } else {
            url = "http://localhost:3000/artist/list?cat=" + cat + "&offset=" + (page - 1) * 15 + "&limit=15";
        }
        $.ajax({
            url: url,
            xhrFields: {withCredentials: true},
            success: function (data) {
                $("#singer_box").html('');
                $("#data").tmpl(data.artists).appendTo('#singer_box');
            }
        });
    }

    /*初始化*/
    $('#box').paging({
        initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
        callback: function (page) {
            getsingerBycat(page, 0);
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
                initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
                callback: function (page) {
                    getsingerBycat(page, 5001);
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
                initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
                callback: function (page) {
                    getsingerBycat(page, 1001);
                }
            });
        } else if (keyStr === '女单') {
            $('#box').paging({
                initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
                callback: function (page) {
                    getsingerBycat(page, 1002);
                }
            });
        } else if (keyStr === '组合') {
            $('#box').paging({
                initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
                callback: function (page) {
                    getsingerBycat(page, 1003);
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
                initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
                callback: function (page) {
                    getsingerBycat(page, 2002);
                }
            });
        }
    });
    /*---------------------------- DOM加载完后的点击事件 ----------------------------*/
    $(document).on('click', "#singer_box li >div", function () {
        window.location.href = "singer_info.jsp?siId=" + $(this).find('i').text() + "&siName=" + $(this).find('b').text();
    });
})(jQuery, window, document);