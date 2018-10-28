$(function () {
    /*加载登陆页面*/
    $("#login_popup").click(function () {
        layer.open({
            type: 2,
            title: '',
            shadeClose: false,
            shade: 0.8,
            area: ['330px', '365px'],
            content: 'login.jsp'
        });
    });

    $("#ul2 >li").click(function () {
            let index = $(this).index("li");
            if (index === 27 && $("#login_popup").length > 0) {
                layer.msg('请先登陆 🙃', function () {
                });
            } else if (index === 28 && $("#login_popup").length > 0) {
                layer.msg('请先登陆 🙃', function () {
                });
            }
        }
    );


    /*开始程序隐藏 双击后显示*/
    //$("#content").hide();
    $("#music").dblclick(function () {
        $("#content").fadeIn();
    });

    /*导航栏*/
    let $ul_li = $(".list ul li");
    let $iframe = $(".riht_body iframe");
    $(".list #ul1 >li").click(function () {
        $($iframe).attr("src", $(this).attr("url"));
        $($ul_li).removeClass("act");
        $(this).addClass("act");
    });
    $(".list #ul2 >li").click(function () {
        let index = $(this).index("li");
        if (index === 27 && $("#login_popup").length > 0) {
            layer.msg('请先登陆 🙃', function () {
            });
        } else if (index === 28 && $("#login_popup").length > 0) {
            layer.msg('请先登陆 🙃', function () {
            });
        } else {
            $($iframe).attr("src", $(this).attr("url"));
            $($ul_li).removeClass("act");
            $(this).addClass("act");
        }
    });
    $(".list #ul3 >li").click(function () {
        $($iframe).attr("src", $(this).attr("url"));
        $($ul_li).removeClass("act");
        $(this).addClass("act");
    });

})
;