package com.lilwork.blog.entity;

import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 博客分类表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TBlogSort implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 唯一uid
     */
      @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 分类内容
     */
      private String sortName;

      /**
     * 分类简介
     */
      private String content;

      /**
     * 创建时间
     */
        @TableField(fill = FieldFill.INSERT)
      private LocalDateTime createTime;

      /**
     * 更新时间
     */
        @TableField(fill = FieldFill.INSERT_UPDATE)
      private LocalDateTime updateTime;

      /**
     * 状态
     */
      private Integer status;

      /**
     * 排序字段，越大越靠前
     */
      private Integer sort;

      /**
     * 点击数
     */
      private Integer clickCount;


}
