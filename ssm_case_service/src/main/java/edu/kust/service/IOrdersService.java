package edu.kust.service;

import edu.kust.domain.Orders;
import org.aspectj.weaver.ast.Or;

import java.util.List;

public interface IOrdersService {

    /**
     * 查询所有的订单信息
     * @return
     */
    List<Orders> findAll(int page ,int size);

    Orders findById(int ordersId);

    void upsetById(Integer ordersId);

    void save(Orders orders);

    List<Orders> findOrderByUserId(Integer id);
}
