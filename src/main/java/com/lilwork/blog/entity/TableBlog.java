package com.lilwork.blog.entity;

import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author lil
 * @since 2021-03-05
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TableBlog implements Serializable {

    private static final long serialVersionUID = 1L;

      private Long id;

    private Boolean appreciation;

    private Boolean commentable;

    private String content;

      @TableField(fill = FieldFill.INSERT)
      private LocalDateTime createTime;

    private String description;

    private String firstPicture;

    private String flag;

    private Boolean published;

    private Boolean recommend;

    private Boolean shareStatement;

    private String title;

      @TableField(fill = FieldFill.INSERT_UPDATE)
      private LocalDateTime updateTime;

    private Integer views;

    private Long typeId;

    private Long userId;


}
