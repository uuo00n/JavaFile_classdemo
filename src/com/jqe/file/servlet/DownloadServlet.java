package com.jqe.file.servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@WebServlet("/downloadservlet")
public class DownloadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("utf-8");
            response.setContentType("text/html;charset=utf-8");
            String filePath = request.getParameter("filePath");
            String fileName = filePath.substring(filePath.lastIndexOf("/") + 1);
            response.setHeader("Content-disposition", "attachment;filename=" + fileName);
            FileInputStream fileInputStream = new FileInputStream(new File(filePath));
            ServletOutputStream outputStream = response.getOutputStream();
            int len = 0;
            byte[] arr = new byte[1024];
            while ((len = fileInputStream.read(arr)) != -1) {
                outputStream.write(arr, 0, len);
                outputStream.flush();
            }
            fileInputStream.close();
            outputStream.close();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
