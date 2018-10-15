$(function () {
    /*加载登陆页面*/
    $(".p_body ul li:eq(2)").click(function () {
        layer.open({
            type: 2,
            title: '',
            shadeClose: false,
            shade: 0.8,
            area: ['350px', '410px'],
            content: 'Effect/login.jsp'
        });
    });

    /*开始程序隐藏 双击后显示*/
    //$("#content").hide();
    $("#music").dblclick(function () {
        $("#content").show();
    });

    var $ul_li = $(".list ul li");
    var $iframe = $(".riht_body iframe");
    $(".list #ul1 >li").click(function () {
        $($iframe).attr("src", $(this).attr("url"));
        $($ul_li).removeClass("act");
        $(this).addClass("act");
    });
    $(".list #ul2 >li").click(function () {
        $($iframe).attr("src", $(this).attr("url"));
        $($ul_li).removeClass("act");
        $(this).addClass("act");
    });
    $(".list #ul3 >li").click(function () {
        $($iframe).attr("src", $(this).attr("url"));
        $($ul_li).removeClass("act");
        $(this).addClass("act");
    });

});