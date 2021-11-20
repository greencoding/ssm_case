package edu.kust.controller;

import com.github.pagehelper.PageInfo;
import edu.kust.domain.Product;
import edu.kust.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfiguration;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@PreAuthorize(value = "hasAnyRole('ROLE_ADMIN','ROLE_USER')")
@RequestMapping("/product")
public class ProductController{

    @Autowired
    private IProductService productService;

    //查询产品信息
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1") Integer page,@RequestParam(name = "size",required = true,defaultValue = "4") Integer size){
        ModelAndView mv = new ModelAndView();
        List<Product> list = productService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(list);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("product-list");
        return mv;
    }

    //保存产品信息
    @RequestMapping("/save.do")
    public String saveProduct(Product product){
        productService.save(product);
        return "redirect:findAll.do";
    }

    //更新产品信息
    @RequestMapping("updateProduct.do")
    public String updateProduct(Product product){
        productService.updateProduct(product);
        return "redirect:findAll.do";
    }

    //根据id查询产品信息
    @RequestMapping("findById.do")
    public ModelAndView findById(Integer id){
        ModelAndView mv = new ModelAndView();
        Product product = productService.findOne(id);
        mv.addObject("product",product);
        mv.setViewName("product-edit");
        return mv;
    }
}
