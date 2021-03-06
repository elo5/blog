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
 * 图片分类表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TPictureSort implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 唯一uid
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 分类图片uid
     */
      private String fileUid;

      /**
     * 分类名
     */
      private String name;

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

    private String parentUid;

      /**
     * 排序字段，越大越靠前
     */
      private Integer sort;

      /**
     * 是否显示，1：是，0，否
     */
      private Boolean isShow;


}
