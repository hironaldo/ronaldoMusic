$(function () {
    $("input").bind({
        focus: function () {
            $(".form-error-tip").hide();
        }, blur: function () {
            $(".form-error-tip").hide();
        }
    });
    let pwd = '';
    $('input[type=password]').blur(function () {
        pwd = $(this).val().trim();
    });
    let phone = $('input[type=text]').val().trim();
    /*登陆*/
    $('#login_btn').click(function () {
        $.ajax({
            url: "http://localhost:3000/login/cellphone?phone=" + phone + "&password=" + pwd,
            xhrFields: {
                withCredentials: true
            },
            success: function (data) {
                console.log(data);
            },
            error: function (err) {
                console.log(err)
            }
        });
        if (phone === "" || pwd === "" || phone == null || pwd == null) {
            layer.msg('所有项都不能为空');
        } else {
            $.ajax({
                url: 'http://127.0.0.1:3000/login/cellphone?phone=' + phone + '&password=' + pwd,
                xhrFields: {withCredentials: true},
                success: function (data) {
                    if (data.code === 200) {
                        let account = data.account;
                        let profile = data.profile;
                        $.cookie('nickname', profile.nickname, {expires: 1});
                        $.cookie('userpic', profile.avatarUrl, {expires: 1});
                        $.cookie('userId', account.id, {expires: 1});
                        parent.location.reload();
                        parent.layer.close(parent.layer.getFrameIndex(window.name));
                    }
                }, error: function () {
                    $('.form-error-tip').show();
                }
            });
        }
    });
});