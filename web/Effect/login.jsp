<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/login.css" media="all">
</head>
<body>
<form id="myform" action="#" method="post">
    <div id="login" style="width: 300px;margin: 0 auto;padding-top: 30px">
        <div data-v-7997c758="" data-v-339e84a5="" class="popout">
            <div data-v-7997c758="" style="position: relative;">
                <h4 data-v-7997c758="" class="popout-title zh">登录</h4>
                <div data-v-7997c758="">
                    <div data-v-7997c758="" class="form-row">
                        <input data-v-7997c758="" name="phone" type="text" placeholder="手机号码" style="width: 100%;"
                               autocomplete="off"
                               maxlength="11"
                        />
                    </div>
                    <div data-v-7997c758="" class="form-row">
                        <input data-v-7997c758="" name="password" type="password" placeholder="输入密码" style="width: 100%;"
                               autocomplete="off"
                               maxlength="16"
                        />
                    </div>
                    <div data-v-7997c758="" class="form-row">
                        <input data-v-7997c758="" type="text" placeholder="验证码" style="width: 100%;"
                               autocomplete="off"
                               maxlength="6"
                        />
                        <button id="getcode">获取</button>
                    </div>
                    <div data-v-7997c758="" class="form-row">
                        <button data-v-7997c758="" onclick="login()" style="width: 100%; height: 34px;">Go</button>
                    </div>
                    <div data-v-7997c758="" class="form-row">
                        <label data-v-7997c758="" for="remember"
                               style="font-size: 12px; color: rgb(104, 104, 104);"><input
                                data-v-7997c758="" type="checkbox" id="remember"
                                style="width: 12px; height: 12px; vertical-align: middle;"/> 记住我 </label>
                        <span data-v-7997c758=""
                              style="float: right; font-size: 12px; color: rgb(104, 104, 104); cursor: pointer;">忘记密码</span>
                    </div>
                    <div data-v-7997c758="">
                        <div data-v-7997c758="">
                            <div>
                                <div style="margin-top: 10px; text-align: center;">
                                    <span style="display: inline-block; width: 40px; height: 1px; background: rgb(224, 224, 224); vertical-align: middle;"></span>
                                    <span style="margin: 0px 12px; font-size: 12px; color: rgb(180, 180, 180);">立即注册</span>

                                    <span style="display: inline-block; width: 40px; height: 1px; background: rgb(224, 224, 224); vertical-align: middle;"></span>
                                </div>
                                <div style="margin-top: 12px; text-align: center;">
                                    <i class="layui-icon layui-icon-release"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<script type="text/javascript" src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script>
    function login(){
        $.ajax({
            cache: true,
            url: '${basePath}login.php',
            data: $('#myform').serialize(),
            async: false,
            success: function (result) {
                if (result != "") {
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                }
            }
        });
    }
</script>
</body>
</html>
