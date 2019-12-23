package com.appinfo.controller;

import com.appinfo.entity.app_info;
import com.appinfo.entity.app_version;
import com.appinfo.entity.dev_user;
import com.appinfo.service.app_infoService;
import com.appinfo.service.dev_userService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/devUser")
public class dev_userController {
    @Resource
    app_infoService appInfoService;
    @Resource
    dev_userService devUserMapperService;
    @RequestMapping("/devLogin")
    @ResponseBody
    public ModelAndView devLogin(dev_user user, HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView){
        dev_user devLogin = devUserMapperService.login(user);
        if (devLogin!=null){
            System.out.println("前台登陆成功！");
            request.getSession().setAttribute("devLogin",devLogin);
            modelAndView.setViewName("/developer/main");
        }else {
            modelAndView.setViewName("devlogin");
        }
        return modelAndView;
    }

    /*转发到滑块页面*/
    @RequestMapping("/goHua")
    public ModelAndView goHua(ModelAndView modelAndView,HttpServletRequest request){
        String devcode=request.getParameter("devcode");
        String devpassword=request.getParameter("devpassword");
        request.getSession().setAttribute("devcode",devcode);
        request.getSession().setAttribute("devpassword",devpassword);
        modelAndView.setViewName("hua");
        return modelAndView;
    }

    /*退出转到登陆*/
    @RequestMapping("/loginOut")
    public Object loginOut(){
        return "devlogin";
    }

    /*转发登陆页面*/
    @RequestMapping("/goLogin")
    public Object goLogin(){
        return "devlogin";
    }

    /*转发前台审核页面*/
    @RequestMapping("/goAppinfolist")
    public Object goAppinfolist(){
        return "/developer/appinfolist";
    }

    //转发到前台添加页面
    @RequestMapping("/goAppInfoAdd")
    public Object goAppInfoAdd(){
        return "/developer/appinfoadd";
    }

    //转发到前台查询页面
    @RequestMapping("/goAppCheck")
    public Object goAppCheck(){
        return "/backend/appcheck";
    }

    //新增
    @RequestMapping("/goAppVer/{id}")
    public Object goAppVer(@PathVariable("id") Integer id,app_info appInfo,HttpServletRequest request){
        app_info oneInfo = appInfoService.getOneInfo(id);
        request.getSession().setAttribute("oneInfo",oneInfo);
        return "/developer/appversionadd";
    }
    //新增
    @RequestMapping("/updateAppVersion/{id}")
    public Object updateAppVersion(@PathVariable("id") Integer id,app_info appInfo,HttpServletRequest request){
        app_version allVer = appInfoService.getAllVer(id);
        request.getSession().setAttribute("oneInfo",allVer);
        return "/developer/appversionmodify";
    }

}
