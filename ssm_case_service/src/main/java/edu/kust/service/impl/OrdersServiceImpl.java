package edu.kust.service.impl;

import com.github.pagehelper.PageHelper;
import edu.kust.dao.IOrdersDao;
import edu.kust.domain.Orders;
import edu.kust.service.IOrdersService;
import edu.kust.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("ordersService")
public class OrdersServiceImpl implements IOrdersService {

    @Autowired
    private IOrdersDao ordersDao;


    @Override
    public List<Orders> findAll(int page,int size) {
        //参数page是页码值   参数size 代表是每页显示条数
        PageHelper.startPage(page, size);
        return ordersDao.findAll();
    }

    @Override
    public Orders findById(int ordersId) {
        return ordersDao.findById(ordersId);
    }

    @Override
    public void upsetById(Integer ordersId) {
        ordersDao.upsetById(ordersId);
    }

    @Override
    public void save(Orders orders) {
        ordersDao.save(orders);
    }

    @Override
    public List<Orders> findOrderByUserId(Integer id) {
        return ordersDao.findOrderByUserId(id);
    }

}
