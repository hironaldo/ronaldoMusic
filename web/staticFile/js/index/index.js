$(document).ready(function () {
    /*加载歌单*/
    let url = 'http://localhost:3000/user/playlist?uid=' + $.cookie('userId');
    $.get(url, function (data) {
        $("#ul3").html('');
        $("#m-songlist").tmpl(data.playlist).appendTo('#ul3');
    });

    /*获得登陆信息*/
    if (null != $.cookie('nickname')) {
        $('#userinfo li:eq(1) img').attr('src', $.cookie('userpic'));
        $('#userinfo li:eq(2)').attr('id', '');
        $('#userinfo li:eq(2)').text($.cookie('nickname'));
        $('#userinfo li:eq(2)').append($('<i style="padding-left: 5px" class="layui-icon layui-icon-face-surprised"></i>'));
    }
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

    /*开始程序隐藏 双击后显示*/
    //$("#content").hide();
    $("#music").dblclick(function () {
        $("#content").fadeIn();
    });

    $("#ppt").dblclick(function () {
        window.open("index.html");
    });


    /*顶部导航栏*/
    $('#ul_left li img').click(function () {
        let index = $(this).index();
        switch (index) {
            case 0:
                history.go(-1);
                break;
            case 1:
                history.go(1);
                break;
            case 2:
                window.location.reload();
                break;
        }
    });
    $('#ul_right li img').click(function () {
        $("#content").fadeOut();
    });
});