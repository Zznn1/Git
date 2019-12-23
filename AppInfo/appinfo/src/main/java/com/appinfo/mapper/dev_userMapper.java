package com.appinfo.mapper;

import com.appinfo.entity.dev_user;
import org.springframework.stereotype.Repository;



@Repository(value = "dev_userMapper")
public interface dev_userMapper {
    //登录的方法
    public dev_user login(dev_user user);

}