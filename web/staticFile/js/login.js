$(function () {
    if ("" != $(".form-error-tip").html()) {
        $(".form-error-tip").show();
    } else {
        $(".form-error-tip").hide();
    }
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
    $('body').on('click', '#login_btn', function () {
        if (phone === "" || pwd === "" || phone == null || pwd == null) {
            layer.msg('所有项都不能为空');
        } else {
            $.ajax({
                url: 'http://127.0.0.1:3000/login/cellphone?phone=' + phone + '&password=' + pwd,
                xhrFields: {
                    withCredentials: true
                },
                success: function (data) {
                    if (data.code === 200) {
                        let account = data.account;
                        let profile = data.profile;
                        $.cookie('nickname', profile.nickname, {expires: 1});
                        $.cookie('userpic', profile.avatarUrl, {expires: 1});
                        $.cookie('userId', account.id, {expires: 1});
                        parent.location.reload();
                        parent.layer.close(parent.layer.getFrameIndex(window.name));
                    } else {
                        $('.form-error-tip').text('😫 账户信息错误');
                    }
                },
                error: function () {
                    console.log('***请求错误啦***');
                }
            });
        }
    });
});