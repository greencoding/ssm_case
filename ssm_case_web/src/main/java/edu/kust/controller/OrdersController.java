package edu.kust.controller;

import com.github.pagehelper.PageInfo;
import edu.kust.domain.Orders;
import edu.kust.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrdersController {

    @Autowired
    private IOrdersService ordersService;

    @RequestMapping("/findAll.do")
    @PreAuthorize(value = "hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    public ModelAndView findAll(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page, @RequestParam(name = "size", required = true,defaultValue = "4") Integer size) {
        ModelAndView mv = new ModelAndView();
        List<Orders> ordersList = ordersService.findAll(page, size);
        //PageInfo就是一个分页Bean
        PageInfo pageInfo=new PageInfo(ordersList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("orders-page-list");
        return mv;
    }

    @RequestMapping("findById.do")
    @PreAuthorize(value = "hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    public ModelAndView findById(@RequestParam(name = "id",required = true) Integer ordersId){
        ModelAndView mv = new ModelAndView();
        Orders orders = ordersService.findById(ordersId);
        mv.addObject("orders",orders);
        mv.setViewName("orders-show");
        return mv;
    }


    @RequestMapping("deleteById.do")
    @PreAuthorize(value = "hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    public String deleteById(@RequestParam(name = "id",required = true) Integer ordersId){
        ordersService.upsetById(ordersId);
        return "redirect:findAll.do";
    }

    @RequestMapping("save.do")
    public String save(Orders orders){
        ordersService.save(orders);
        return "redirect:findOrderByUserId.do?id="+orders.getUserId().toString();
    }

    @RequestMapping("findOrderByUserId.do")
    public ModelAndView findOrderByUserId(Integer id){
        ModelAndView mv = new ModelAndView();
        List<Orders> orders = ordersService.findOrderByUserId(id);
        mv.addObject("orders",orders);
        mv.setViewName("myOrders");
        return mv;
    }
}
