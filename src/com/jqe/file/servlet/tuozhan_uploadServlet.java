package com.jqe.file.servlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;
import java.util.UUID;

@WebServlet("/upload")
public class tuozhan_uploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        try {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            File f = new File("D:\\hjb_test_demo_dir\\shili_dir");
            if (!f.exists()) {
                f.mkdir();
            }
            factory.setRepository(f);
            ServletFileUpload fileUpload = new ServletFileUpload(factory);
            fileUpload.setHeaderEncoding("utf-8");
            List<FileItem> fileitems = fileUpload.parseRequest(request);
            PrintWriter writer = response.getWriter();
            for (FileItem fileitem : fileitems) {
                if (fileitem.isFormField()) {
                    String name = fileitem.getFieldName();
                    String value = fileitem.getString("utf-8");
                    writer.print("上传者" + value + "<br>");
                } else {
                    String filename = fileitem.getName();
                    if (fileitem != null && !fileitem.equals("")) {
                        writer.print("文件来源：" + filename + "<br>");
                        filename = filename.substring(filename.lastIndexOf("\\") + 1);
                        filename = UUID.randomUUID().toString() + "_" + filename;
                        String webPath = "/upload/";
                        String filePath = getServletContext().getRealPath(webPath + filename);
                        File file = new File(filePath);
                        file.getParentFile().mkdirs();
                        file.createNewFile();
                        InputStream in = fileitem.getInputStream();
                        OutputStream out = new FileOutputStream(file);
                        byte[] buffer = new byte[1024];
                        int len;
                        while ((len = in.read(buffer)) > 0)
                            out.write(buffer, 0, len);
                        in.close();
                        out.close();
                        writer.print("文件上传成功!<br>");
                        writer.print("文件上传路径是：" + filePath + "<br>");
                    } else {
                        writer.print("文件上传失败！<br>");
                    }
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
