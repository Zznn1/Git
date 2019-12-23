package com.appinfo.controller;

import com.appinfo.entity.*;
import com.appinfo.service.app_infoService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/appInfo")
public class app_infoController {
    @Resource
    app_infoService appInfoService;

    @RequestMapping("/getAll")
    @ResponseBody
    public Object getAll(){
        System.out.println("查询列表进了吗？");
        List<app_info> getall = appInfoService.getAll();
        return getall;
    }

    @RequestMapping("/getAlls")
    @ResponseBody
    public Object getAlls(String softwareName,Integer flatformId,Integer categoryLevel1,Integer categoryLevel2,Integer categoryLevel3,Integer pageNum,Integer pageSize){
        System.out.println("后台多条件查询进了吗？？");
        PageInfo<app_info> alls = appInfoService.getAlls(softwareName, flatformId, categoryLevel1, categoryLevel2, categoryLevel3, pageNum + 1, 5);
        return alls;
    }

    @RequestMapping("/getAllList")
    @ResponseBody
    public Object getAllList(String softwareName,Integer status,Integer flatformId,Integer categoryLevel1,Integer categoryLevel2,Integer categoryLevel3,Integer pageNum,Integer pageSize){
        System.out.println("前台多条件查询进了吗？？");
        PageInfo<app_info> allList = appInfoService.getAllList(softwareName, status, flatformId, categoryLevel1, categoryLevel2, categoryLevel3, pageNum + 1, 5);
        return allList;
    }

    @RequestMapping("/goAddApp")
    public String goAddApp(@RequestParam(value = "upload" ,required = false) MultipartFile upload, app_info appInfo, HttpServletRequest request) throws IOException {
        dev_user login = (dev_user)request.getSession().getAttribute("devLogin");
        System.out.println(appInfo.getApkname());
        appInfo.setCreatedby(login.getId());
        appInfo.setCreationdate(new Date());
        System.out.println("添加进了吗？？");
        //绝对路径
        String realPath = request.getSession().getServletContext().getRealPath("/statics/uploadfiles");
        System.out.println(realPath);
        appInfo.setLogolocpath(realPath);
        //文件名
        String filename = upload.getOriginalFilename();
        System.out.println(filename);
        //组合路径+文件上传
        upload.transferTo(new File(realPath,filename));
        appInfo.setLogolocpath(filename);
        System.out.println(filename);
        int addApp = appInfoService.addApp(appInfo);
            if (addApp>0){
                System.out.println("添加成功！");
                return "/developer/appinfolist";
            }
            return "/developer/appinfoadd";
    }

    @RequestMapping("/getAppStatus")
    @ResponseBody
    public Object getAppStatus(){
        System.out.println("app状态下拉框绑定");
        List<data_dictionary> appStatus = appInfoService.getAppStatus();
        return appStatus;
    }
    @RequestMapping("/getFlatFormId")
    @ResponseBody
    public Object getFlatFormId(){
        System.out.println("所属平台下拉框绑定");
        List<data_dictionary> flatFormId = appInfoService.getFlatFormId();
        return flatFormId;
    }
    @RequestMapping("/getCategoryLevel1")
    @ResponseBody
    public Object getCategoryLevel1(){
        System.out.println("一级分类下拉框绑定");
        List<app_category> categoryLevel1 = appInfoService.getCategoryLevel1();
        return categoryLevel1;
    }
    @RequestMapping("/getCategoryLevel2")
    @ResponseBody
    public Object getCategoryLevel2(Integer cid){
        System.out.println("二级分类下拉框绑定");
        List<app_category> categoryLevel2= appInfoService.getCategoryLevel2(cid);
        return categoryLevel2;
    }
    @RequestMapping("/getCategoryLevel3")
    @ResponseBody
    public Object getCategoryLevel3(Integer cid){
        System.out.println("三级分类下拉框绑定");
        List<app_category> categoryLevel3 = appInfoService.getCategoryLevel3(cid);
        return categoryLevel3;
    }

    @RequestMapping("/getVersion")
    @ResponseBody
    public Object getVersion(Integer appId){
        System.out.println("查询版本号");
        List<app_version> version = appInfoService.getVersion(appId);
        for (app_version appVersion:version){
            System.out.println(appVersion.getVersionno());
        }
        System.out.println(version.size());
        return version;
    }

    @RequestMapping("/getOneInfo/{id}")
    public String getOneInfo(@PathVariable("id") Integer id, HttpServletRequest request) {
        System.out.println("回显能行吗？");
        System.out.println(id);
        app_info oneInfo = appInfoService.getOneInfo(id);

        request.getSession().setAttribute("oneInfo",oneInfo);
        return "backend/appcheck";
    }
    @RequestMapping("/getOne/{id}")
    public String getOne(@PathVariable("id") Integer id, HttpServletRequest request) {
        System.out.println("详情列表行吗？");
        System.out.println(id);
        app_info oneInfo = appInfoService.getOneInfo(id);
        System.out.println("oneInfo"+oneInfo);
        request.getSession().setAttribute("oneInfo",oneInfo);
        return "developer/appinfoview";
    }

    @RequestMapping("/getModify/{id}")
    public String getModify(@PathVariable("id") Integer id, HttpServletRequest request) {
        System.out.println("编辑了能行吗？");
        //String id1 = request.getParameter("id");
        System.out.println(id);
        app_info oneInfo = appInfoService.getOneInfo(id);
        System.out.println(oneInfo.getVersionid());
        System.out.println("oneInfo"+oneInfo);
        request.getSession().setAttribute("oneInfo",oneInfo);
        return "developer/appinfomodify";
    }

    @RequestMapping("/checksave")
    public String checkSave(app_info appInfo) throws Exception {
        System.out.println("修改审核状态了！");
        int updateStatus = appInfoService.updateStatus(appInfo.getStatus(), appInfo.getId());
        try {
            if(updateStatus>0){
                return "/backend/applist";
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return "backend/appcheck";
    }

    //修改appinfo
    @RequestMapping("/updaApp")
    public Object updaApp(app_info app_info,HttpServletRequest request, MultipartFile multipartFile) throws IOException {
        System.out.println("修改");
        //获取绝对路径
        String realPath = request.getSession().getServletContext().getRealPath("/statics/uploadfiles");
        //获取文件上传提交的文件名
        String filename = multipartFile.getOriginalFilename();
        System.out.println(filename);
        //组合路径+上传操作
        multipartFile.transferTo(new File(realPath,filename));
        int count = appInfoService.updaApp(app_info);
        if (count>0){
            System.out.println("修改成功！");
            return  "developer/appinfolist";
        }
        return "developer/appinfomodify";
    }

    //删除app
    @RequestMapping("/delectApp/{id}")
    public String  delectApp(@PathVariable("id") Integer id){
        System.out.println(id);
        int count = appInfoService.delectApp(id);
        if (count>0){
            System.out.println("删除成功");
            int i = appInfoService.delAppVersion(id);
            System.out.println("version删除成功");
            return "/developer/appinfolist";
        }else{
            return "/developer/appinfolist";
        }
    }

    @RequestMapping("/goAddVersion")
    public String goAddVersion(@RequestParam(value = "upload" ,required = false) MultipartFile upload, app_version appVersion,app_info info, HttpServletRequest request) throws IOException {
        dev_user login = (dev_user)request.getSession().getAttribute("devLogin");
        System.out.println(appVersion.getAppid());
        appVersion.setCreatedby(login.getId());
        appVersion.setCreationdate(new Date());
        System.out.println("版本号的添加进了吗？？");
        //绝对路径
        String realPath = request.getSession().getServletContext().getRealPath("/statics/uploadfiles");
        System.out.println(realPath);
        appVersion.setApklocpath(realPath);
        //文件名
        String filename = upload.getOriginalFilename();
        System.out.println(filename);
        //组合路径+文件上传
        upload.transferTo(new File(realPath,filename));
        appVersion.setApkfilename(filename);
        System.out.println(filename);
        int version = appInfoService.addVersion(appVersion);
        if (version>0){
            System.out.println("添加成功！");
            //根据日期值进行修改版本号，
            app_version appVersion1=appInfoService.getversion(appVersion.getCreationdate());
            Integer appid=appVersion.getAppid();
            Integer vid=appVersion1.getId();
            info.setVersionid(vid);
            info.setId(appid);
            appInfoService.updateVersion(info);
            return "/developer/appinfolist";
        }
        return "/developer/appversionadd";
    }

    //修改版本号
    @RequestMapping("/updateAppVersion")
    public Object updateAppVersion(app_version appVersion,HttpServletRequest request, MultipartFile multipartFile) throws IOException {
        System.out.println("修改版本号呀");
        dev_user login = (dev_user)request.getSession().getAttribute("devLogin");
        appVersion.setModifyby(login.getId());
        appVersion.setModifydate(new Date());
        System.out.println(appVersion.getVersionno());
        //获取绝对路径
        String realPath = request.getSession().getServletContext().getRealPath("/statics/uploadfiles");
        appVersion.setApklocpath(realPath);
        //获取文件上传提交的文件名
        String filename = multipartFile.getOriginalFilename();
        System.out.println(filename);
        //组合路径+上传操作
        multipartFile.transferTo(new File(realPath,filename));
        int count = appInfoService.updateversion(appVersion);
        if (count>0){
            System.out.println("修改成功！");
            return  "developer/appinfolist";
        }
        return "developer/appversionmodify";
    }

    //上架和下架
    @RequestMapping(value = "/ShelfAndObtained", method = RequestMethod.POST)
    @ResponseBody
    private  Object ShelfAndObtained(Integer num,Integer id){
        System.out.println("上下架");
        Integer integer = appInfoService.updateOnUpStatus(num, id);
        String result="";
        if (integer>0){
            result="true";
        }
        return result;
    }


}
