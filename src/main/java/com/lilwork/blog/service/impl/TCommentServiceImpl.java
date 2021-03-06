package com.lilwork.blog.service.impl;

import com.lilwork.blog.entity.TComment;
import com.lilwork.blog.mapper.TCommentMapper;
import com.lilwork.blog.service.TCommentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 评论表 服务实现类
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Service
public class TCommentServiceImpl extends ServiceImpl<TCommentMapper, TComment> implements TCommentService {

}
