package edu.kust.dao;

import edu.kust.domain.Orders;
import edu.kust.domain.Product;
import edu.kust.domain.UserInfo;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("ordersDao")
public interface IOrdersDao {

    /**
     * 查询所有的订单信息
     * @return 订单结果集
     */
    @Select("select * from orders")
    @Results(value = {
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "orderNum",column = "orderNum"),
            @Result(property = "orderTime",column = "orderTime"),
            @Result(property = "orderStatus",column = "orderStatus"),
            @Result(property = "peopleCount",column = "peopleCount"),
            @Result(property = "peopleCount",column = "peopleCount"),
            @Result(property = "payType",column = "payType"),
            @Result(property = "orderDesc",column = "orderDesc"),
            @Result(property = "product",column = "productId",javaType = Product.class,one = @One(select = "edu.kust.dao.IProductDao.findById")),
    })
    List<Orders> findAll();

    //多表操作
    @Select("select * from orders where id = #{ordersId}")
    @Results(value = {
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "orderNum",column = "orderNum"),
            @Result(property = "orderTime",column = "orderTime"),
            @Result(property = "orderStatus",column = "orderStatus"),
            @Result(property = "peopleCount",column = "peopleCount"),
            @Result(property = "peopleCount",column = "peopleCount"),
            @Result(property = "payType",column = "payType"),
            @Result(property = "orderDesc",column = "orderDesc"),
            @Result(property = "product",column = "productId",javaType = Product.class,one = @One(select = "edu.kust.dao.IProductDao.findById")),
            @Result(property = "user",column = "userId",javaType = UserInfo.class,one = @One(select = "edu.kust.dao.IUserDao.findById")),
    })
    Orders findById(int ordersId);

    //删除订单  将订单状态修改为0
    @Update("update orders set orderStatus = 0 where id = #{ordersId}")
    void upsetById(Integer ordersId);

    @Insert("insert into orders(orderNum,orderTime,peopleCount,orderDesc,payType,orderStatus,productId,userId) values (#{orderNum},#{orderTime},#{peopleCount},#{orderDesc},#{payType},#{orderStatus},#{productId},#{userId})")
    void save(Orders orders);

    @Select("select * from orders where userId = #{userId}")
    @Results(value = {
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "orderNum",column = "orderNum"),
            @Result(property = "orderTime",column = "orderTime"),
            @Result(property = "orderStatus",column = "orderStatus"),
            @Result(property = "peopleCount",column = "peopleCount"),
            @Result(property = "payType",column = "payType"),
            @Result(property = "orderDesc",column = "orderDesc"),
            @Result(property = "product",column = "productId",javaType = Product.class,one = @One(select = "edu.kust.dao.IProductDao.findById")),
    })
    List<Orders> findOrderByUserId(Integer id);

}
