<%@ page import="java.io.*" %><%--
  Created by IntelliJ IDEA.
  User: junbo
  Date: 2022/12/2
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! String readname = "D:\\workspace\\第五学期\\java_web_file\\web\\txt\\Readercontent2.txt";%>
<%! String writername = "D:\\workspace\\第五学期\\java_web_file\\web\\txt\\Writecontent2.txt";%>
<html>
<head>
    <title>create Directory</title>
</head>
<body>
<%
    try {
        FileReader fileReader = new FileReader(readname);
        BufferedReader bufferedReader = new BufferedReader(fileReader);
        File file = new File(writername);
        if (!file.exists()) {
            file.createNewFile();
        }
        FileWriter fileWriter = new FileWriter(file);
        BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
        String str = null;
        while ((str = bufferedReader.readLine()) != null) {
            bufferedWriter.write(str);
            bufferedWriter.newLine();
            bufferedWriter.flush();
        }
        bufferedWriter.close();
        bufferedReader.close();
    } catch (FileNotFoundException e) {
        e.printStackTrace();
    } catch (IOException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
