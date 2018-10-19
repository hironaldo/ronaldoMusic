<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="staticFile/css/login.css" media="all">
</head>
<body>

<form id="login_form">
    <div id="login" style="width: 300px;margin: 0 auto;padding-top: 40px">
        <div class="popout">
            <div style="position: relative;">
                <h4 class="popout-title zh" data-v-7997c758="">登录</h4>
                <div class="form-error-tip" style="display: none;">${tips}</div>
                <div>
                    <div class="form-row">
                        <input name="phone" type="text" placeholder="手机号码" style="width: 100%;" id="phone"
                               value="17673461751" autocomplete="off" maxlength="11">
                    </div>
                    <div class="form-row" id="pwd_box">
                        <input name="password" type="password" placeholder="输入密码" style="width: 100%;"
                               autocomplete="off" maxlength="16">
                    </div>
                    <div class="form-row" id="code_box">
                        <input name="checkcode" type="text" placeholder="验证码" style="width: 100%;" autocomplete="off"
                               maxlength="6">
                        <button id="getcode">获取</button>
                    </div>
                    <div class="form-row">
                        <button id="login_btn" style="width: 100%; height: 34px;">Go</button>
                    </div>
                    <div class="form-row">
                        <label for="remember" style="font-size: 12px; color: rgb(104, 104, 104);">
                            <input type="checkbox" id="remember"
                                   style="width: 12px; height: 12px; vertical-align: middle;">记住我
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<script type="text/javascript" src="staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
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
            }
        });
        $("#getcode").click(function () {
            var phone =
                $.ajax({
                    type: "post",
                    url: "http://127.0.0.1:82/phones.php",
                    data: {"phone": $phone},
                    success: function (result) {
                        alert(result);
                    }
                });
        });
        $("#login_btn").click(function () {
            $.ajax({
                type: 'post',
                url: 'login.php',
                data: $('#login_form').serialize(),
                async: false,
                cache: true,
                success: function (result) {
                    if (result == "ok") {
                        setTimeout(parent.layer.close(parent.layer.getFrameIndex(window.name)), 3000);
                    }
                }
            });
        });
    });
</script>

</body>
</html>
