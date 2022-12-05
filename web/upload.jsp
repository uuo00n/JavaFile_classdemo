<%--
  Created by IntelliJ IDEA.
  User: junbo
  Date: 2022/12/2
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>form</title>
</head>
<body>
<form action="uploadservlet" method="post" enctype="multipart/form-data">
    <input type="file" name="im">
    <br>
    <input type="submit" value="开始上传">
</form>
</body>
</html>
