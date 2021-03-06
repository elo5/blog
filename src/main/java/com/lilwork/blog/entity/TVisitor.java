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
 * 游客表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TVisitor implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 唯一uid
     */
      @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 用户名
     */
      private String userName;

      /**
     * 邮箱
     */
      private String email;

      /**
     * 登录次数
     */
      private Integer loginCount;

      /**
     * 最后登录时间
     */
      private LocalDateTime lastLoginTime;

      /**
     * 最后登录IP
     */
      private String lastLoginIp;

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


}
