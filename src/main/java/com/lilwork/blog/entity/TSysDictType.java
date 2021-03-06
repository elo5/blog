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
 * 字典类型表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TSysDictType implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 主键
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 自增键oid
     */
      private Integer oid;

      /**
     * 字典名称
     */
      private String dictName;

      /**
     * 字典类型
     */
      private String dictType;

      /**
     * 创建人UID
     */
      private String createByUid;

      /**
     * 最后更新人UID
     */
      private String updateByUid;

      /**
     * 备注
     */
      private String remark;

      /**
     * 状态
     */
      private Boolean status;

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
     * 是否发布(1:是，0:否)
     */
      private String isPublish;

      /**
     * 排序字段
     */
      private Integer sort;


}
