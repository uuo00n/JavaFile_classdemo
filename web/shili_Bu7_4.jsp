<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/10/25
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <title>upload</title>
</head>
<body>
<form action="upload" method="post" enctype="multipart/form-data">
        <table width="600px">
                <tr>
                        <td>上传者</td>
                        <td><input type="text" value="hjb"></td>
                </tr>
                <tr>
                        <td>上传文件</td>
                        <td><input type="file" name="file"></td>
                </tr>
                <tr>
                        <td colspan="2"><input type="submit" value="上传"></td>
                </tr>
        </table>
</form>
</body>
</html>
