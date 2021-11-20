package edu.kust.controller;


import com.sun.deploy.net.HttpResponse;
import edu.kust.domain.Role;
import edu.kust.domain.UserInfo;
import edu.kust.service.IUserService;
import edu.kust.utils.BCryptPasswordEncoderUtils;
import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/findAll.do")
    @PreAuthorize(value = "hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<UserInfo> userList = userService.findAll();
        mv.addObject("userList",userList);
        mv.setViewName("user-list");
        return mv;
    }

    //保存用户信息
    @RequestMapping("/save.do")
    @PreAuthorize(value = "hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    public String saveUser(UserInfo userInfo){
        userService.save(userInfo);
        return "redirect:findAll.do";
    }

    //查询用户详情
    @RequestMapping("/findById.do")
    @PreAuthorize(value = "hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    public ModelAndView findById(@RequestParam(name = "id",required = true) Integer userId){
        ModelAndView mv = new ModelAndView();
        UserInfo user = userService.findById(userId);
        mv.addObject("user",user);
        mv.setViewName("user-show");
        return mv;
    }

    //查询用户以及用户可以添加的角色
    @RequestMapping("/findUserByIdAndAllRole.do")
    @PreAuthorize(value = "hasAnyRole('ROLE_ADMIN')")
    public ModelAndView findUserByIdAndAllRole(Integer id){
        ModelAndView mv = new ModelAndView();

        //根据用户id查询用户
        UserInfo userInfo = userService.findById(id);

        //根据用户id查询可以添加的角色
        List<Role> roles = userService.findOtherRoles(id);

        mv.addObject("userInfo",userInfo);
        mv.addObject("roleList",roles);

        mv.setViewName("user-role-add");

        return mv;
    }

    /**
     *  用户添加角色
     * @param userId
     * @param ids 可以添加的角色id
     */
    @RequestMapping("/addRoleToUser.do")
    @PreAuthorize(value = "hasAnyRole('ROLE_ADMIN')")
    public String addRoleToUser(Integer userId,Integer[] ids){
        userService.addRoleToUser(userId,ids);
        return "redirect:findById.do?id="+userId.toString();
    }


    @RequestMapping("register.do")
    public String register(UserInfo userInfo) {
        String username = userInfo.getUsername();
        UserInfo userInfo1 = userService.findByUsername(username);
        if (userInfo1 != null){
            return "registerfail";
        }else {
            userService.save(userInfo);
        }
        return "login";
    }
}
