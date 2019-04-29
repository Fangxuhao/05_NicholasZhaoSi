package dao;

import domain.Images;

import java.sql.SQLException;

/**
 * @Author: 方徐浩
 * @Date: 2019/4/28 14:07
 */
public interface IImagesDao {
    public Images imgById(String id) throws SQLException;
}
