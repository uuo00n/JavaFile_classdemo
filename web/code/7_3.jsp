<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.io.FileNotFoundException" %>
<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: junbo
  Date: 2022/12/1
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! String rename = "D:\\workspace\\第五学期\\java_web_file\\web\\txt\\contentread.txt";%>
<%! String wrname = "D:\\workspace\\第五学期\\java_web_file\\web\\txt\\contentwrite.txt";%>
<html>
<head>
    <title>creat Directory</title>
</head>
<body>
<%
    try {
        FileInputStream fileInputStream = new FileInputStream(rename);
        FileOutputStream fileOutputStream = new FileOutputStream(wrname);
        int len = 0;
        while ((len = fileInputStream.read()) != -1) {
            fileOutputStream.write(len);
        }
        fileInputStream.close();
        fileOutputStream.close();
    } catch (FileNotFoundException e) {
        e.printStackTrace();
    } catch (IOException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
