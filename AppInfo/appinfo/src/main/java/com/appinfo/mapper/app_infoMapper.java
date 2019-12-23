package com.appinfo.mapper;

import com.appinfo.entity.app_category;
import com.appinfo.entity.app_info;
import com.appinfo.entity.app_version;
import com.appinfo.entity.data_dictionary;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;
@Repository
public interface app_infoMapper {

    //后台查询
    List<app_info> getAlls(@Param("softwareName")String softwareName, @Param("flatformId")Integer flatformId, @Param("categoryLevel1")Integer categoryLevel1, @Param("categoryLevel2")Integer categoryLevel2, @Param("categoryLevel3")Integer categoryLevel3);
    //前台查询
    List<app_info> getAllList(@Param("softwareName")String softwareName, @Param("status")Integer status, @Param("flatformId")Integer flatformId, @Param("categoryLevel1")Integer categoryLevel1, @Param("categoryLevel2")Integer categoryLevel2, @Param("categoryLevel3")Integer categoryLevel3);
    //前台添加
    int addApp(app_info appInfo);
    List<app_info> getAll();
    //绑定下拉框app状态，所属平台，一二三级分类
    List<data_dictionary> getAppStatus();
    List<data_dictionary> getFlatFormId();
    List<app_category> getCategoryLevel1();
    List<app_category> getCategoryLevel2(@Param("cid") Integer cid);
    List<app_category> getCategoryLevel3(@Param("cid") Integer cid);

    //后台审核查看数据回显
    app_info getOneInfo(Integer id);
    //后台修改审核状态
    int updateStatus(@Param(value="status")Integer status,@Param(value="id")Integer id)throws Exception;
    //查询版本号信息
    List<app_version> getVersion(Integer appId);
    //修改app
    int updaApp(app_info appInfo);
    //删除APP
    int delectApp(Integer id);
    int delAppVersion(Integer appId);

    //新增版本信息
    int addVersion(app_version appVersion);
    //查询日期
    app_version getversion(Date creationDate);
    //修改
    int updateVersion(app_info appInfo);

    //添加时修改版本号
    int updateAppVersion(app_version appVersion);
    //查询
    app_version getAllVer(Integer id);
    //修改
    int updateversion(app_version appVersion);

    //上下架
    int updateOnUpStatus(@Param("val")Integer val ,@Param("id") Integer id);


}