package com.jqe.file.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * @author uuo00_n(Hwang Jumbo)
 * @Date 2022/12/2 10:44
 */
@WebServlet(name = "UploadServlet")
public class UploadServlet extends HttpServlet {
    private PrintWriter out;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("utf-8");
            response.setContentType("text/html;charset=utf-8");
            out = response.getWriter();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(request.getInputStream()));
            File file = new File("D:\\workspace\\第五学期\\java_web_file\\web\\txt\\save.txt");
            if (!file.exists()) {
                file.createNewFile();
            }
            File fileTemp = new File("D:\\workspace\\第五学期\\java_web_file\\web\\txt\\temp.txt");
            if (!fileTemp.exists()) {
                fileTemp.createNewFile();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(fileTemp));
            String str = null;
            int maxNumLine = 0;
            while ((str = bufferedReader.readLine()) != null) {
                maxNumLine++;
                bufferedWriter.write(str);
                bufferedWriter.newLine();
                bufferedWriter.flush();
            }
            bufferedWriter.close();
            bufferedReader.close();
            BufferedReader bufferedReader1 = new BufferedReader(new FileReader(new File("D:\\workspace\\第五学期\\java_web_file\\web\\txt\\temp.txt")));
            BufferedWriter bufferedWriter1 = new BufferedWriter(new FileWriter(file));
            String str1 = null;
            int num = 0;
            while ((str1 = bufferedReader1.readLine()) != null) {
                num++;
                if (num > 4 && num < maxNumLine) {
                    bufferedWriter1.write(str1);
                    bufferedWriter1.newLine();
                    bufferedWriter1.flush();
                }
            }
            out.println("文件提交成功");
            bufferedReader1.close();
            bufferedWriter1.close();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
