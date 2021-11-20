package edu.kust.dao;

import edu.kust.domain.Message;
import edu.kust.domain.Product;
import edu.kust.domain.UserInfo;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
留言dao接口
 */
@Repository("messageDao")
public interface IMessage {

    @Insert("insert into message(content,userId) values(#{content},#{userId})")
    void save(Message message);


    @Select("select * from message")
    @Results(value = {
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "content",column = "content"),
            @Result(property = "user",column = "userId",javaType = UserInfo.class,one = @One(select = "edu.kust.dao.IUserDao.findById")),
    })
    List<Message> findAll();
}
