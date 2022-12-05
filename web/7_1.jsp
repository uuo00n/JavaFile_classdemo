<%--
  Created by IntelliJ IDEA.
  User: junbo
  Date: 2022/11/30
  Time: 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.io.*" %>
<html>
<head>
    <title>黄俊博第一个File对象程序</title>
</head>
<body>
<%
    File file = new File("D:\\workspace\\第五学期\\ts_dir\\hjb");
    if (file.exists()) {
        file.delete();
        out.println("目录已存在，现被删除");
    } else {
        file.mkdir();
        out.println("目录不存在，现被创建");
    }
%>
</body>
</html>
