package dao;

import dbutils.DataSourceUtils;
import domain.Admin;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.sql.DataSource;
import java.sql.SQLException;

public class AdminDao implements IAdminDao {
    /**
     * 注册
     * @param name 名字
     * @param pwd 密码
     * @param email 邮箱
     * @throws SQLException
     */
    public void Register(String name, String pwd, String email) throws SQLException {
        DataSource ds=new DataSourceUtils().getDataSource();
        QueryRunner queryRunner=new QueryRunner(ds);

        String sql="insert into user values(?,?,?,?,?,?,?)";

        queryRunner.update(sql,name,pwd,0,email,null,null,null);

    }

    @Override
    public Admin LoginByEmailAndPwd(String email, String pwd) throws SQLException {
        DataSource ds= DataSourceUtils.getDataSource();

        QueryRunner queryRunner = new QueryRunner(ds);

        //编写sql
        String  sql="select * from user where email = ? and pwd = ?";

        return queryRunner.query(sql, new BeanHandler<>(Admin.class), email, pwd);

    }
}
