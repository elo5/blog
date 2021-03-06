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
 * 评论表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TComment implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 唯一uid
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 用户uid
     */
      private String userUid;

      /**
     * 回复某条评论的uid
     */
      private String toUid;

      /**
     * 回复某个人的uid
     */
      private String toUserUid;

      /**
     * 评论内容
     */
      private String content;

      /**
     * 博客uid
     */
      private String blogUid;

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
     * 评论来源： MESSAGE_BOARD，ABOUT，BLOG_INFO 等
     */
      private String source;

      /**
     * 评论类型 1:点赞 0:评论
     */
      @TableField("TYPE")
    private Boolean type;

      /**
     * 一级评论UID
     */
      private String firstCommentUid;


}
