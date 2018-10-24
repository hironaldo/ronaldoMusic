<%@ tag pageEncoding="UTF-8" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ tag body-content="scriptless" %>
<%@ attribute name="title" required="true" type="java.lang.String" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootpath" value="${ pageContext.request.contextPath}" scope="request"/>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>${title}</title>
</head>

<body>
<div class="main">
    <div class="top">this is my first layout jsp</div>
    <div class="mbody">
        <jsp:doBody></jsp:doBody>
    </div>
    <div class="bright">
        this is bottom for page
    </div>
</div>
</body>
</html>
