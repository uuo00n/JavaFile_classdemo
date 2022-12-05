<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/12/5
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>download</title>
</head>
<body>
<form action="downloadservlet" method="post">
    选择需要下载的文件：
    <br>
    <select name="filePath" size="3">
        <option selected value="D:/workspace/第五学期/java_web_file/web/txt/a.txt">a.txt</option>
        <option value="D:/workspace/第五学期/java_web_file/web/txt/b.txt">b.txt</option>
        <option value="D:/workspace/第五学期/java_web_file/web/txt/c.txt">c.txt</option>
    </select>
    <input type="submit" value="download">
</form>
</body>
</html>
