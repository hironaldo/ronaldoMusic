window.onload = function () {
    let $ul_li = $(".list ul li");
    let $iframe = $(".riht_body iframe");
    $("body").on('click', ".list #ul1 >li", function () {
        $($iframe).attr("src", $(this).attr("url"));
        $($ul_li).removeClass("act");
        $(this).addClass("act");
    });
    $("body").on('click', ".list #ul2 >li", function () {
        let index = $(this).index("li");
        if (index === 27 && undefined === $.cookie('nickname')) {
            layer.msg('请先登陆 🙃', function () {
            });
        } else if (index === 28 && undefined === $.cookie('nickname')) {
            layer.msg('请先登陆 🙃', function () {
            });
        } else {
            $($iframe).attr("src", $(this).attr("url"));
            $($ul_li).removeClass("act");
            $(this).addClass("act");
        }
    });
    $("body").on('click', ".list #ul3 >li", function () {
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
};