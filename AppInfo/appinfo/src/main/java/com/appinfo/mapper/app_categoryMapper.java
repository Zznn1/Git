package com.appinfo.mapper;

import com.appinfo.entity.app_category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface app_categoryMapper {
    List<app_category> getCategoryLevel1();
    List<app_category> getCategoryLevel2(@Param("cid") Integer cid);
    List<app_category> getCategoryLevel3(@Param("cid") Integer cid);
}