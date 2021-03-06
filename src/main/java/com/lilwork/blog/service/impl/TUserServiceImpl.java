package com.lilwork.blog.service.impl;

import com.lilwork.blog.entity.TUser;
import com.lilwork.blog.mapper.TUserMapper;
import com.lilwork.blog.service.TUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Service
public class TUserServiceImpl extends ServiceImpl<TUserMapper, TUser> implements TUserService {

}
