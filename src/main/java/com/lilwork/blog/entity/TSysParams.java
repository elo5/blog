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
 * 参数配置表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TSysParams implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 主键
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 配置类型 是否系统内置(1:，是 0:否)
     */
      private String paramsType;

      /**
     * 参数名称
     */
      private String paramsName;

      /**
     * 参数键名
     */
      private String paramsKey;

      /**
     * 备注
     */
      private String remark;

      /**
     * 参数键值
     */
      private String paramsValue;

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
     * 排序字段
     */
      private Integer sort;


}
