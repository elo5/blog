package com.lilwork.blog.service.impl;

import com.lilwork.blog.entity.HibernateSequence;
import com.lilwork.blog.mapper.HibernateSequenceMapper;
import com.lilwork.blog.service.HibernateSequenceService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lil
 * @since 2021-03-05
 */
@Service
public class HibernateSequenceServiceImpl extends ServiceImpl<HibernateSequenceMapper, HibernateSequence> implements HibernateSequenceService {

}
