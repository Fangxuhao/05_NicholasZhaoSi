package register;

import dao.AdminDao;
import domain.Admin;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends javax.servlet.http.HttpServlet {

    Admin admin = null;
    String email;
    String pwd;
    String code;

    @Override
    public void init() throws ServletException {
        //获取全局管理者
        ServletContext context = getServletContext();
        context.setAttribute("count", 0);
        super.init();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        email = request.getParameter("email");
        pwd = request.getParameter("pwd");
        code = request.getParameter("code");
        response.setContentType("text/html;charset=utf-8");

        System.out.println(email + "   " + pwd + "   " + code);


        //验证码判断
        String sessionCode = request.getSession().getAttribute("code").toString();

        if (code != null && !"".equals(code) && sessionCode != null && !"".equals(sessionCode)) {
            if (!code.equalsIgnoreCase(sessionCode)) {
                //验证码错误返回-2
                response.getWriter().println(-2);
            } else {
                //账号密码判断
                try {
                    admin = new AdminDao().LoginByEmailAndPwd(email, pwd);
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                if (admin != null) {
                    //获取全局管理者
                    ServletContext context = this.getServletContext();
                    //获取次数
                    Integer count = (Integer) context.getAttribute("count");
                    //+1
                    count++;
                    //写入
                    context.setAttribute("count", count);
                    response.getWriter().print(admin.getName() + "   第  " + count + "次成功登陆");
                }else {
                    response.getWriter().print(-1);
                }
            }
        } else {
            response.getWriter().println("验证失败！");

        }


    }

}
