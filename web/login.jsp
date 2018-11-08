<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="staticFile/css/login.css" media="all">
</head>
<body>

<div id="login" style="width: 300px;margin: 0 auto;padding-top: 30px">
    <div class="popout">
        <div style="position: relative;">
            <h4 class="popout-title zh" data-v-7997c758="">登录</h4>
            <div class="form-error-tip" style="display: none;">😫 账户信息错误</div>
            <div>
                <div class="form-row">
                    <input type="text" placeholder="手机号码" style="width: 100%;"
                           value="17673117052" autocomplete="off" maxlength="11">
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

<script src="staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="staticFile/UIframe/jquery.cookie.js" charset="utf-8"></script>
<script src="staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script src="staticFile/js/login.js" charset="utf-8"></script>
</body>
</html>
