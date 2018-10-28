<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/singer/style.css" media="all">
    <style>
        #img_box ul {
            padding-top: 30px;
        }

        #img_box ul li {
            display: inline-block;
            width: 155px;
            padding-bottom: 15px;
            padding-left: 30px;
        }
    </style>
</head>
<body>

<%--<div id="img_box">--%>
<%--<ul>--%>
<%--<li v-for="item in list">--%>
<%--<div style="background: #F0F0F0;box-shadow: 4px 9px 15px #88887A;">--%>
<%--<div style="text-align: center;padding-top:10px">--%>
<%--&lt;%&ndash;<img :src="img + item.siPic" style="border-radius: 50%;width: 100px">&ndash;%&gt;--%>
<%--</div>--%>
<%--<div style="text-align: center;padding-top:5px;padding-bottom:10px">{{ item.siName}}</div>--%>
<%--</div>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>

<div id="app">

    {{ mes}}
    {{ data}}

    <div v-for="item in data">
        {{ item.siName}}
    </div>
</div>


<button id="aaa">666</button>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js"></script>
<script src="../staticFile/UIframe/vue.min.js"></script>
<script>
    $(function () {
        new Vue({
            el: '#app',
            data: {
                mes : 'vue!!',
                data: ""
            },
            function () {
                let url = "/getSinger?pageNo=1";
                $.ajax(url, function (data) {
                    alert(data);
                })
            }
        });


        // let app = new Vue({
        //     el: '#app',
        //     data: {
        //         info: {},
        //         list: [],
        //     },
        //     ready: function () {
        //         $.ajax({
        //             url: '/getSinger?pageNo=1',
        //             dataType: 'JSON',
        //             success: function (data) {
        //                 app.info = data;
        //                 app.list = data;
        //             }, error: function (data) {
        //                 console.log("读取jsonName error!" + data);
        //             }
        //         });
        //     }
        // });
    });


</script>
</body>
</html>
