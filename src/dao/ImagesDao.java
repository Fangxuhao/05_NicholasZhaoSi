package dao;

import dbutils.DataSourceUtils;
import domain.Images;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.List;

/**
 * @Author: 方徐浩
 * @Date: 2019/4/28 9:43
 */
public class ImagesDao  implements IImagesDao{


    public Images imgById(String id) throws SQLException {

        DataSource ds= DataSourceUtils.getDataSource();

        QueryRunner queryRunner = new QueryRunner(ds);

        String  sql="select * from images where id = ?";

        return queryRunner.query(sql, new BeanHandler<>(Images.class), id);
    }

    /**
     * 获取某一页面所有图片数据
     * @return 某一页面所有图片数据集合
     * @throws SQLException
     */
    public List<Images> getAllImgByPosition(String position) throws SQLException {
        DataSource ds= DataSourceUtils.getDataSource();
        QueryRunner queryRunner = new QueryRunner(ds);
        String  sql="select * from images where position = ?";
        return  queryRunner.query(sql, new BeanListHandler<>(Images.class),position);
    }

}
