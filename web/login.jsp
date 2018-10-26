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
                    <%--<div class="form-row" id="code_box">--%>
                    <%--<input name="checkcode" type="text" placeholder="验证码" style="width: 100%;" autocomplete="off"--%>
                    <%--maxlength="4">--%>
                    <%--<button id="getcode">获取</button>--%>
                    <%--</div>--%>
                    <div data-v-7997c758="" class="form-row"><label data-v-7997c758="" for="remember"
                                                                    style="font-size: 12px; color: rgb(104, 104, 104);"><input
                            data-v-7997c758="" type="checkbox" id="remember"
                            style="width: 12px; height: 12px; vertical-align: middle;">
                        记住我
                    </label><span data-v-7997c758=""
                                  style="float: right; font-size: 12px; color: rgb(104, 104, 104); cursor: pointer;">忘记密码</span>
                    </div>
                    <div class="form-row">
                        <button id="login_btn" style="width: 100%; height: 34px;">Go</button>
                    </div>
                    <div>
                        <div style="margin-top: 10px; text-align: center;"><span
                                style="display: inline-block; width: 40px; height: 1px; background: rgb(224, 224, 224); vertical-align: middle;"></span><span
                                style="margin: 0px 12px; font-size: 12px; color: rgb(180, 180, 180);">Call Me CR7</span><span
                                style="display: inline-block; width: 40px; height: 1px; background: rgb(224, 224, 224); vertical-align: middle;"></span>
                        </div>
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
                        if (result == "ok") {
                            window.parent.location.href = "index.jsp";
                            parent.layer.close(parent.layer.getFrameIndex(window.name));
                        }
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
