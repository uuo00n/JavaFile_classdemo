<%--
  Created by IntelliJ IDEA.
  User: junbo
  Date: 2022/12/2
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.io.*" %>
<%! String readname = "D:\\workspace\\第五学期\\java_web_file\\web\\txt\\Readercontent.txt";%>
<%! String writername = "D:\\workspace\\第五学期\\java_web_file\\web\\txt\\Writecontent.txt";%>
<html>
<head>
    <title>黄俊博的第一个JSP程序</title>
</head>
<body>
<%
    try {
        FileReader reader = new FileReader(readname);
        FileWriter writer = new FileWriter(writername);
        int ch;
        while ((ch = reader.read()) != -1) {
            writer.write(ch);
        }
        reader.close();
        writer.close();
    } catch (FileNotFoundException e) {
        e.printStackTrace();
    } catch (IOException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
