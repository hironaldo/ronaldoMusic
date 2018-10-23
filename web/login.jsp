<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="staticFile/css/login.css" media="all">
</head>
<body>

<form id="login_form">
    <div id="login" style="width: 300px;margin: 0 auto;padding-top: 35px">
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
                        <input name="password" type="password" placeholder="输入密码" style="width: 100%;" id="pwd"
                               autocomplete="off" maxlength="16">
                    </div>
                    <div class="form-row" id="code_box">
                        <input name="checkcode" type="text" placeholder="验证码" style="width: 100%;" autocomplete="off"
                               maxlength="4">
                        <button id="getcode">获取</button>
                    </div>
                    <div class="form-row">
                        <button id="login_btn" style="width: 100%; height: 34px;">Go</button>
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
            }, blur: function () {
                $(".form-error-tip").hide();
            }
        });
        $('form').submit(function () {
            var flag = false;
            if ($("#phone").val() == "" || $("#pwd").val() == "") {
                layer.msg('该项不能为空');
                flag = false;
                return flag;
            } else {
                $.ajax({
                    type: 'post', url: 'login', data: $('#login_form').serialize(), async: false, cache: true,
                    success: function (result) {
                        if (result == "ok") parent.layer.close(parent.layer.getFrameIndex(window.name));
                    }
                });
                flag = true;
                return flag;
            }
            return flag;
        });
    });
</script>

</body>
</html>
