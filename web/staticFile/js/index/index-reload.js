window.onload = function () {
    /*左侧导航栏*/
    let $ul_li = $(".list ul li");
    let $iframe = $(".riht_body iframe");
    $(document).on('click', ".list #ul1 >li", function () {
        $($iframe).attr("src", $(this).attr("url"));
        $($ul_li).removeClass("act");
        $(this).addClass("act");
    });
    $(document).on('click', ".list #ul2 >li", function () {
        if (undefined === $.cookie('nickname')) {
            layer.msg('请先登陆 🙃', function () {
            });
        } else {
            $($iframe).attr("src", $(this).attr("url"));
            $($ul_li).removeClass("act");
            $(this).addClass("act");
        }
    });
    $(document).on('click', ".list #ul3 >li", function () {
        let slistId = $(this).find('h1').text().trim();
        let picurl = $(this).find('h2').text().trim();
        let nickname = $(this).find('h3').text().trim();
        let userId = $(this).find('h4').text().trim();
        let tags = $(this).find('h5').text().trim();
        let url = "Effect/songsheet_info.jsp?slistId=" + slistId + "&picurl=" + picurl + "&nickname=" + nickname + "&userId=" + userId + "&tags=" + tags;
        $($ul_li).removeClass("act");
        $(this).addClass("act");
        $($iframe).attr("src", url);
    });

    /*搜索框*/
    $(document).on('click', "#hot_search >li", function () {
        let url = 'Effect/search_result.jsp?keyStr=' + $(this).text().trim();
        $($iframe).attr("src", url);
        $('#search_tips').hide();
    });

    $('#search').on({
        blur: function () {
            setTimeout(function () {
                $('#search_tips').hide();
            }, 100)
        }
    });

};