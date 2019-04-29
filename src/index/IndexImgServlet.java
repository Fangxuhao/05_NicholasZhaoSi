package index;

import dao.ImagesDao;
import domain.Images;
import service.ImagesService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @Author: 方徐浩
 * @Date: 2019/4/28 9:23
 */
@WebServlet(name = "IndexImgServlet")
public class IndexImgServlet extends HttpServlet {
    Images images=null;
    String src;
    String position;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        position = request.getParameter("position");
        response.setContentType("text/html;charset=UTF-8");



        System.out.println(position);


        try {
            String jsonAllImges = new ImagesService().getJsonAllImgByPosition(position);

            response.getWriter().print(jsonAllImges);
        } catch (SQLException e) {
            e.printStackTrace();
        }
//        try {
//            images = new ImagesDao().imgById(position);
//            if (images != null) {
//                System.out.println(images.getSrc());
//                response.getWriter().print(images.getSrc());
//            } else {
//                System.out.println("空aysdisahfisudhfiuhuifs");
//            }





    }
}
