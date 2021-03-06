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
 * 
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TRole implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 角色id
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 角色名
     */
      private String roleName;

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
     * 角色介绍
     */
      private String summary;

      /**
     * 角色管辖的菜单的UID
     */
      private String categoryMenuUids;


}
