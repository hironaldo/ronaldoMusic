<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="staticFile/css/login.css" media="all">
</head>
<body>

<div id="login" style="width: 300px;margin: 0 auto;padding-top: 35px">
    <div class="popout">
        <div style="position: relative;">
            <h4 class="popout-title zh" data-v-7997c758="">登录</h4>
            <div class="form-error-tip" style="display: none;">${tips}</div>
            <div>
                <div class="form-row">
                    <input type="text" placeholder="手机号码" style="width: 100%;"
                           value="18692345390" autocomplete="off" maxlength="11">
                </div>
                <div class="form-row">
                    <input type="password" placeholder="输入密码" style="width: 100%;"
                           autocomplete="off" maxlength="16">
                </div>
                <div class="form-row">
                    <label for="remember" style="font-size: 12px; color: rgb(104, 104, 104);">
                        <input type="checkbox" id="remember"
                               style="width: 12px; height: 12px; vertical-align: middle;">
                        记住我
                    </label>
                    <span style="float: right; font-size: 12px; color: rgb(104, 104, 104); cursor: pointer;">
                            忘记密码
                    </span>
                </div>
                <div class="form-row">
                    <button id="login_btn" style="width: 100%; height: 34px;">Go</button>
                </div>
                <div>
                    <div style="margin-top: 10px; text-align: center;">
                        <span style="display: inline-block; width: 40px; height: 1px; background: rgb(224, 224, 224); vertical-align: middle;"></span>
                        <span style="margin: 0px 12px; font-size: 12px; color: rgb(180, 180, 180);">Call Me CR7</span>
                        <span style="display: inline-block; width: 40px; height: 1px; background: rgb(224, 224, 224); vertical-align: middle;"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript" src="staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="staticFile/UIframe/jquery.cookie.js" charset="utf-8"></script>
<script type="text/javascript" src="staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script>
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
                let loginUrl = 'http://127.0.0.1:3000/login/cellphone?phone=' + phone + '&password=' + pwd;
                $.get(loginUrl, function (data) {
                    if (data.code === 200) {
                        let account = data.account;
                        let bindings = data.bindings;
                        let profile = data.profile;
                        $.cookie('nickname', profile.nickname, {expires: 1});
                        $.cookie('userpic', profile.avatarUrl, {expires: 1});
                        $.cookie('userId', account.id, {expires: 1});
                        parent.location.reload();
                        parent.layer.close(parent.layer.getFrameIndex(window.name));
                    } else {
                        $('.form-error-tip').text('😫 账户信息错误');
                    }
                });
            }
            console.log(phone + "--" + pwd);
        });
    });


</script>

</body>
</html>
