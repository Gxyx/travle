package com.travel.service.impl;

import com.travel.entity.User;
import com.travel.mapper.UserMapper;
import com.travel.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author sanqi
 * @since 2021-01-29
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {


}
