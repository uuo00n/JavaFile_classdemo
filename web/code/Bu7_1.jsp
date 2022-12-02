<%--
  Created by IntelliJ IDEA.
  User: junbo
  Date: 2022/11/30
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.File" %>
<html>
<head>
    <title>Bu7-1</title>
</head>
<body>
<h1>黄俊博第二个File对象程序</h1>
<%
    File f = new File("D:\\workspace\\第五学期\\java_web_file\\web\\code");
    File file = new File(f, "7_1.jsp");
    //判断是否粗奴在
    out.println(file.exists() ? "文件存在" : "文件不存在");
    out.println("<br>");
    //获取文件名称
    out.println("文件名称：" + file.getName());
    out.println("<br>");
    //获取文件的绝对路径
    out.println("文件的绝对路径" + file.getAbsolutePath());
    out.println("<br>");
    //判断文件是否可读
    out.println(file.canRead() ? "文件可读" : "文件不可读");
    out.println("<br>");
    //判断文件是否可写
    out.println(file.canWrite() ? "文件可写" : "文件不可写");
    out.println("<br>");
    //判断是否是一个文件
    out.println(file.isFile() ? "是一个文件" : "不是一个文件");
    out.println("<br>");
    //判断是否是一个目录
    out.println(file.isDirectory() ? "是一个目录" : "不是一个目录");
    out.println("<br>");
    //得到文件的大小
    out.println("文件大小为：" + file.length() + "bytes");
    out.println("<br>");
%>
</body>
</html>
