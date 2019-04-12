package register;

import dao.AdminDao;
import domain.Admin;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "registerServlet")
public class RegisterServlet extends javax.servlet.http.HttpServlet {
    String username;
    String pwd;
    String email;
    String code;
    List<Admin> adminList = new ArrayList<>();

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        username = request.getParameter("name");
        pwd = request.getParameter("pwd");
        email = request.getParameter("email");
        code = request.getParameter("code");

        System.out.println(pwd + username + email + code);
        response.setContentType("text/html;charset=utf-8");
        //验证码判断
        String sessionCode = request.getSession().getAttribute("code").toString();

        if (code != null && !"".equals(code) && sessionCode != null && !"".equals(sessionCode)) {
            if (!code.equalsIgnoreCase(sessionCode)) {
                //验证码错误返回-2
                response.getWriter().println(-2);
            } else {
                try {
                    //如果邮箱重复则返回-1
                    if (!new AdminDao().IsAvailableByEmail(email)) {
                        PrintWriter out = response.getWriter();
                        out.print(-1);
                        out.close();
                    } else {//注册成功，返回1
                        new AdminDao().Register(username, pwd, email);
                        PrintWriter out = response.getWriter();
                        out.print(1);
                        out.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            response.getWriter().println("验证失败！");

        }








    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
