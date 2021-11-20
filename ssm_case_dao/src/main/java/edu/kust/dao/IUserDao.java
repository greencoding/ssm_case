package edu.kust.dao;

import edu.kust.domain.Role;
import edu.kust.domain.UserInfo;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public interface IUserDao {

    @Select("select * from users where username = #{username}")
    @Results({
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "username", property = "username"),
            @Result(column = "email", property = "email"),
            @Result(column = "password", property = "password"),
            @Result(column = "phoneNum",property = "phoneNum"),
            @Result(column = "status",property = "status"),
            @Result(property = "roles",column = "id",javaType = java.util.List.class,many = @Many(select = "edu.kust.dao.IRoleDao.findRoleByUserId"))
    }
    )
    UserInfo findByUsername(String username);


    @Select("select * from users")
    List<UserInfo> findAll() throws Exception;

    @Insert("insert into users(email,username,password,phoneNum,status) values (#{email},#{username},#{password},#{phoneNum},#{status})")
    void save(UserInfo userInfo);

    @Select("select * from users where id = #{userid}")
    @Results({
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "username", property = "username"),
            @Result(column = "email", property = "email"),
            @Result(column = "password", property = "password"),
            @Result(column = "phoneNum",property = "phoneNum"),
            @Result(column = "status",property = "status"),
            @Result(property = "roles",column = "id",javaType = java.util.List.class,many = @Many(select = "edu.kust.dao.IRoleDao.findRoleByUserId"))
    }
    )
    UserInfo findById(int userId);

    @Select("select * from role where id not in (select roleId from users_role where userId = #{id})")
    List<Role> findOtherRoles(Integer id);

    @Insert("insert into users_role(userId,roleId) values (#{userId},#{roleId})")
    void addRoleToUser(@Param("userId") Integer userId,@Param("roleId")Integer roleId);

}
