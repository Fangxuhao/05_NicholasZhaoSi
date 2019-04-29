package service;

import dao.ImagesDao;
import domain.Images;
import net.sf.json.JSONArray;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

/**
 * @Author: 方徐浩
 * @Date: 2019/4/28 19:16
 */
public class ImagesService {

    public String getJsonAllImgByPosition(String position) throws SQLException {
        ImagesDao imagesDao=new ImagesDao();
        List<Images> list=imagesDao.getAllImgByPosition(position);
        return JSONArray.fromObject(list).toString();
    }
@Test
    public void asd1() throws SQLException {
        ImagesDao imagesDao=new ImagesDao();
        List<Images> list=imagesDao.getAllImgByPosition("index");
        String json=JSONArray.fromObject(list).toString();
        System.out.println(json);
    }
}
