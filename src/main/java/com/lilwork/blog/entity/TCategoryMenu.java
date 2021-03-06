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
 * 管理员表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TCategoryMenu implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 唯一uid
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 菜单名称
     */
      private String name;

      /**
     * 菜单级别
     */
      private Boolean menuLevel;

      /**
     * 简介
     */
      private String summary;

      /**
     * 父uid
     */
      private String parentUid;

      /**
     * url地址
     */
      private String url;

      /**
     * 图标
     */
      private String icon;

      /**
     * 排序字段，越大越靠前
     */
      private Integer sort;

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
     * 是否显示 1:是 0:否
     */
      private Boolean isShow;

      /**
     * 菜单类型 0: 菜单   1: 按钮
     */
      private Boolean menuType;

      /**
     * 是否跳转外部链接 0：否，1：是
     */
      private Boolean isJumpExternalUrl;


}
