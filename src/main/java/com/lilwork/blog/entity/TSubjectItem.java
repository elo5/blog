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
 * 专题Item表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TSubjectItem implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 主键
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 专题uid
     */
      private String subjectUid;

      /**
     * 博客uid
     */
      private String blogUid;

      /**
     * 状态
     */
      private Boolean status;

      /**
     * 排序字段
     */
      private Integer sort;

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
