package com.appinfo.controller;

import com.appinfo.entity.backend_user;
import com.appinfo.service.backend_userService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/user")
public class backend_userController {
    @Resource
    backend_userService backendUserMapperService;
    @RequestMapping("/login")
    @ResponseBody
    public ModelAndView login(backend_user user, HttpServletRequest request, HttpServletResponse response,ModelAndView modelAndView){
        backend_user login = backendUserMapperService.login(user);
        if (login!=null){
            System.out.println("后台登陆成功！");
            request.getSession().setAttribute("login",login);
            modelAndView.setViewName("/backend/main");
        }else {
            modelAndView.setViewName("backendlogin");
        }
        return modelAndView;
    }

    /*退出转发到登陆*/
    @RequestMapping("/loginOut")
    public Object loginOut(){
        return "backendlogin";
    }

    /*转发登陆页面*/
    @RequestMapping("/goLogin")
    public Object goLogin(){
        return "backendlogin";
    }

    /*转发后台审核页面*/
    @RequestMapping("/goAppList")
    public Object goAppList(){
        return "/backend/applist";
    }
}
