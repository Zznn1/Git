package com.appinfo.service.impl;

import com.appinfo.entity.app_category;
import com.appinfo.entity.app_info;
import com.appinfo.entity.app_version;
import com.appinfo.entity.data_dictionary;
import com.appinfo.mapper.app_categoryMapper;
import com.appinfo.mapper.app_infoMapper;
import com.appinfo.mapper.app_versionMapper;
import com.appinfo.mapper.data_dictionaryMapper;
import com.appinfo.service.app_infoService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service("app_actegoryService")
public class app_infoServiceImpl implements app_infoService {

    @Resource(name = "app_infoMapper")
    app_infoMapper appInfoMapper;
    @Resource(name = "data_dictionaryMapper")
    data_dictionaryMapper  dataDictionaryMapper;
    @Resource(name = "app_categoryMapper")
    app_categoryMapper appCategoryMapper;
    @Resource(name = "app_versionMapper")
    app_versionMapper appVersionMapper;


    @Override
    public PageInfo<app_info> getAlls(String softwareName, Integer flatformId, Integer categoryLevel1, Integer categoryLevel2, Integer categoryLevel3,Integer pageNum,Integer pageSize) {
        System.out.println(categoryLevel1+"\t"+categoryLevel2+"\t"+categoryLevel3);
        Page<app_info> page = PageHelper.startPage(pageNum, pageSize);
        List<app_info> alls = appInfoMapper.getAlls(softwareName, flatformId, categoryLevel1, categoryLevel2, categoryLevel3);
        System.out.println(alls.size());

        return page.toPageInfo();
    }

    @Override
    public PageInfo<app_info> getAllList(String softwareName, Integer status, Integer flatformId, Integer categoryLevel1, Integer categoryLevel2, Integer categoryLevel3, Integer pageNum, Integer pageSize) {
        System.out.println(categoryLevel1+"\t"+categoryLevel2+"\t"+categoryLevel3);
        Page<app_info> page = PageHelper.startPage(pageNum, pageSize);
        List<app_info> allList = appInfoMapper.getAllList(softwareName, status, flatformId, categoryLevel1, categoryLevel2, categoryLevel3);
        return page.toPageInfo();
    }

    @Override
    public int addApp(app_info appInfo) {
        int i = appInfoMapper.addApp(appInfo);
        return i;
    }

    @Override
    public List<app_info> getAll() {
        return appInfoMapper.getAll();
    }

    @Override
    public List<data_dictionary> getAppStatus() {
        return dataDictionaryMapper.getAppStatus();
    }

    @Override
    public List<data_dictionary> getFlatFormId() {
        return dataDictionaryMapper.getFlatFormId();
    }

    @Override
    public List<app_category> getCategoryLevel1() {
        return appCategoryMapper.getCategoryLevel1();
    }

    @Override
    public List<app_category> getCategoryLevel2(Integer cid) {
        return appCategoryMapper.getCategoryLevel2(cid);
    }

    @Override
    public List<app_category> getCategoryLevel3(Integer cid) {
        return appCategoryMapper.getCategoryLevel3(cid);
    }

    @Override
    public app_info getOneInfo(Integer id) {
        return appInfoMapper.getOneInfo(id);
    }

    @Override
    public int updateStatus(Integer status, Integer id) throws Exception {
        return appInfoMapper.updateStatus(status,id);
    }

    @Override
    public List<app_version> getVersion(Integer appId) {
        return appInfoMapper.getVersion(appId);
    }

    @Override
    public int updaApp(app_info appInfo) {
        return appInfoMapper.updaApp(appInfo);
    }

    @Override
    public int delectApp(Integer id) {
        return appInfoMapper.delectApp(id);
    }

    @Override
    public int delAppVersion(Integer appId) {
        return appInfoMapper.delAppVersion(appId);
    }

    @Override
    public int addVersion(app_version appVersion) {
        return appInfoMapper.addVersion(appVersion);
    }

    @Override
    public app_version getversion(Date creationDate) {
        return appInfoMapper.getversion(creationDate);
    }

    @Override
    public int updateVersion(app_info appInfo) {
        return appInfoMapper.updateVersion(appInfo);
    }

    @Override
    public int updateAppVersion(app_version appVersion) {
        return appInfoMapper.updateAppVersion(appVersion);
    }

    @Override
    public app_version getAllVer(Integer id) {
        return appInfoMapper.getAllVer(id);
    }

    @Override
    public int updateversion(app_version appVersion) {
        return appInfoMapper.updateversion(appVersion);
    }

    @Override
    public int updateOnUpStatus(Integer val, Integer id) {
        return appInfoMapper.updateOnUpStatus(val,id);
    }


}
