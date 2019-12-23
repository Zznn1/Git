package com.appinfo.service.impl;

import com.appinfo.entity.dev_user;
import com.appinfo.mapper.dev_userMapper;
import com.appinfo.service.dev_userService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("dev_userService")
public class dev_userServiceImpl implements dev_userService {

    @Resource(name = "dev_userMapper")
    dev_userMapper devUserMapper;

    @Override
    public dev_user login(dev_user user) {
        return devUserMapper.login(user);
    }
}
