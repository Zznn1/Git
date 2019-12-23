package com.appinfo.mapper;

import com.appinfo.entity.backend_user;
import org.springframework.stereotype.Repository;

@Repository("backend_userMapper")
public interface backend_userMapper {
    //登录的方法
    public backend_user login(backend_user user);
}