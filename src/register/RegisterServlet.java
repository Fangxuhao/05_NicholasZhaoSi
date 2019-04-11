package register;

import dao.AdminDao;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "registerServlet")
public class RegisterServlet extends javax.servlet.http.HttpServlet {
    String username;
    String pwd;
    String email;
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        username = request.getParameter("name");
        pwd = request.getParameter("pwd");
        email=request.getParameter("email");
        System.out.println(pwd + username+email);
        response.setContentType("text/html;charset=utf-8");

        try {
              new AdminDao().Register(username,pwd,email);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
