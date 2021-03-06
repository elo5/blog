package com.lilwork.blog.service.impl;

import com.lilwork.blog.entity.TBlog;
import com.lilwork.blog.mapper.TBlogMapper;
import com.lilwork.blog.service.TBlogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 博客表 服务实现类
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Service
public class TBlogServiceImpl extends ServiceImpl<TBlogMapper, TBlog> implements TBlogService {

}
