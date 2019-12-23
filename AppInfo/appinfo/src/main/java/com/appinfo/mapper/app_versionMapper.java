package com.appinfo.mapper;

import com.appinfo.entity.app_version;

import java.util.List;

public interface app_versionMapper {
/*    int deleteByPrimaryKey(Long id);

    int insert(app_version record);

    int insertSelective(app_version record);

    app_version selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(app_version record);

    int updateByPrimaryKey(app_version record);*/
    //后台查询版本号信息
    List<app_version> getVersion(Integer id);
}