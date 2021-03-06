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
 * 博客表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TBlog implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 唯一uid
     */
      @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 博客标题
     */
      private String title;

      /**
     * 博客简介
     */
      private String summary;

      /**
     * 博客内容
     */
      private String content;

      /**
     * 标签uid
     */
      private String tagUid;

      /**
     * 博客点击数
     */
      private Integer clickCount;

      /**
     * 博客收藏数
     */
      private Integer collectCount;

      /**
     * 标题图片uid
     */
      private String fileUid;

      /**
     * 状态
     */
      private Integer status;

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
     * 管理员uid
     */
      private String adminUid;

      /**
     * 是否原创（0:不是 1：是）
     */
      private String isOriginal;

      /**
     * 作者
     */
      private String author;

      /**
     * 文章出处
     */
      private String articlesPart;

      /**
     * 博客分类UID
     */
      private String blogSortUid;

      /**
     * 推荐等级(0:正常)
     */
      private Boolean level;

      /**
     * 是否发布：0：否，1：是
     */
      private String isPublish;

      /**
     * 排序字段
     */
      private Integer sort;

      /**
     * 是否开启评论(0:否 1:是)
     */
      private Boolean openComment;

      /**
     * 类型【0 博客， 1：推广】
     */
      private Boolean type;

      /**
     * 外链【如果是推广，那么将跳转到外链】
     */
      private String outsideLink;

      /**
     * 唯一oid
     */
      private Integer oid;


}
