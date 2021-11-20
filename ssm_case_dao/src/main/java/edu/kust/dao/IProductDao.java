package edu.kust.dao;

import edu.kust.domain.Product;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("productDao")
public interface IProductDao {

    /**
     * 查询所有的产品信息
     * @return
     */
    @Select("select * from product")
    List<Product> findAll();

    /**
     * 新建产品
     * @param product
     */
    @Insert("insert into product(productNum,productName,cityName,departureTime,productPrice,productDesc,productStatus) values (#{productNum},#{productName},#{cityName},#{departureTime},#{productPrice},#{productDesc},#{productStatus})")
    void save(Product product);

    /**
     * 根据id查询产品
     * @param id
     * @return
     */
    @Select("select * from product where id=#{id}")
    Product findById(int id);

    @Select("select * from product where cityName like #{cityName}")
    List<Product> findBycity(String cityName);

    @Update("update product set productName = #{productName},cityName = #{cityName},DepartureTime = #{departureTime},productPrice = #{productPrice},productDesc = #{productDesc},productStatus = #{productStatus} where id = #{id}")
    void updateProduct(Product product);
}
