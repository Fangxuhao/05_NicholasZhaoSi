package dao;

import domain.Admin;

import java.sql.SQLException;

/**
 * 用户DAO接口
 */
public interface IAdminDao {
    /**
     * 注册方法
     * @param name
     * @param pwd
     * @param email
     */
    public void Register(String name, String pwd, String email) throws SQLException;

    /**
     *通过邮箱密码判断是否存在该用户
     * @param email
     * @param pwd
     * @return
     */
    public Admin LoginByEmailAndPwd(String email, String pwd) throws SQLException;

}
