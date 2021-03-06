package com.lilwork.blog.service.impl;

import com.lilwork.blog.entity.TAdmin;
import com.lilwork.blog.mapper.TAdminMapper;
import com.lilwork.blog.service.TAdminService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 管理员表 服务实现类
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Service
public class TAdminServiceImpl extends ServiceImpl<TAdminMapper, TAdmin> implements TAdminService {

}
