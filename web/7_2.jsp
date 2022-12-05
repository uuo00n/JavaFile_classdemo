<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.FileNotFoundException" %>
<%@ page import="java.io.IOException" %>
<%! String name = "D:\\workspace\\第五学期\\java_web_file\\web\\txt\\txtdemo.txt";%><%--
  Created by IntelliJ IDEA.
  User: junbo
  Date: 2022/12/1
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>creat Directory</title>
</head>
<body>
<%
    try {
        //创建指向源的输入流
//        FileInputStream fileInputStream = new FileInputStream("D:\\workspace\\第五学期\\ts_dir\\txtdemo.txt");
        FileInputStream fileInputStream = new FileInputStream(name);
        int len = 0;
        //循环读取文件内容，直到返回-1(返回-1，说明到达文件末尾)
        while ((len = fileInputStream.read()) != -1) { %>
<%=(char) len%>
<%
        }
        fileInputStream.close();//关闭输入流
    } catch (FileNotFoundException e) {
        e.printStackTrace();
        out.println("文件不存在");
    } catch (IOException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
