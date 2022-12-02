<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: junbo
  Date: 2022/11/30
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>黄俊博第三个File对象程序：遍历目录</title>
</head>
<body>
<h1>黄俊博第三个File对象程序：遍历目录</h1>
<%
    File file = new File("D:\\apache-tomcat-9.0.65");
    if (file.exists()) {
        out.println("文件夹名称：" + file.getName());
        out.println("<br>");
        String[] names = file.list();
        out.println(file + "目录下文件有：");
        out.println("<br>");
        for (String s : names) {
            out.println(s);
            out.println("<br>");
        }
    } else {
        out.println("目录不存在");
    }
%>
</body>
</html>
