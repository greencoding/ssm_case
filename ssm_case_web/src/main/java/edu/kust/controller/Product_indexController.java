package edu.kust.controller;

import com.github.pagehelper.PageInfo;
import edu.kust.domain.Product;
import edu.kust.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/product-index")
public class Product_indexController {

    @Autowired
    private IProductService productService;

    //查询产品信息
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(){
        ModelAndView mv = new ModelAndView();
        List<Product> ProductList = productService.findAll();
        mv.addObject("pageInfo",ProductList);
        mv.setViewName("index1");
        return mv;
    }

    @RequestMapping("/findone")
    public ModelAndView findOne(Integer id){
        ModelAndView mv = new ModelAndView();
        Product product = productService.findOne(id);
//        相关产品推荐
        List<Product> productRela = productService.findBycity(id, product.getCityName());
        mv.addObject("productRela",productRela);
        mv.addObject("product",product);
        mv.setViewName("product-details");
        return mv;
    }
}
