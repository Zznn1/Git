package com.appinfo.service.impl;

import com.appinfo.entity.backend_user;
import com.appinfo.mapper.backend_userMapper;
import com.appinfo.service.backend_userService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("backend_userService")
public class backend_userServiceImpl implements backend_userService {

    @Resource(name = "backend_userMapper")
    backend_userMapper backendUserMapper;

    @Override
    public backend_user login(backend_user user) {
        return backendUserMapper.login(user);
    }
}
