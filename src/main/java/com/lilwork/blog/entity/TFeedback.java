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
 * 反馈表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TFeedback implements Serializable {

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
     * 反馈的内容
     */
      private String content;

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
     * 标题
     */
      private String title;

      /**
     * 反馈状态： 0：已开启  1：进行中  2：已完成  3：已拒绝
     */
      private Boolean feedbackStatus;

      /**
     * 回复
     */
      private String reply;

      /**
     * 管理员uid
     */
      private String adminUid;


}
