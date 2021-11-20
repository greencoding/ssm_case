package edu.kust.controller;

import edu.kust.domain.Permission;
import edu.kust.domain.Role;
import edu.kust.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequestMapping("/role")
@Controller
@PreAuthorize(value = "hasAnyRole('ROLE_ADMIN')")
public class RoleController {

    @Autowired
    private IRoleService roleService;


    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        List<Role> roleList = roleService.findAll();
        ModelAndView mv = new ModelAndView();
        mv.addObject("roleList", roleList);
        mv.setViewName("role-list");
        return mv;
    }

    //添加角色
    @RequestMapping("/save.do")
    public String save(Role role){
        roleService.save(role);
        return "redirect:findAll.do";
    }

    //根据RoleId查询角色并且查询出可以添加权限
    @RequestMapping("/findRoleByIdAndAllPermission.do")
    public ModelAndView findRoleByIdAndAllPermission(Integer id){
        ModelAndView modelAndView = new ModelAndView();

        Role role =  roleService.findById(id);

        List<Permission> permissionList = roleService.findOtherPermissions(id);

        modelAndView.setViewName("role-permission-add");
        modelAndView.addObject("role",role);
        modelAndView.addObject("permissionList",permissionList);

        return modelAndView;
    }

    @RequestMapping("/addPermissionToRole.do")
    public String addPermissionToRole(Integer roleId,Integer[] ids){
        roleService.addPermissionToRole(roleId,ids);
        return "redirect:findAll.do";
    }

    //查询角色详情
    @RequestMapping("/findById.do")
    public ModelAndView findById(Integer id){
        ModelAndView mv = new ModelAndView();
        Role role = roleService.findById(id);
        mv.addObject("role",role);
        mv.setViewName("role-show");
        return mv;
    }
}
