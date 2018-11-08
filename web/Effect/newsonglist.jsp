<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script>
    $(function () {
        let url = 'http://localhost:3000/playlist/create?name=' + '666';
        $.get(url, function (data) {
            alert(url + "--" + data);
            console.log(data);
        });
    });
</script>
</body>
</html>
