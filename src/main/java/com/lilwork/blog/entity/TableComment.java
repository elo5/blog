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
    public class TableComment implements Serializable {

    private static final long serialVersionUID = 1L;

      private Long id;

    private Boolean adminComment;

    private String avatar;

    private String content;

      @TableField(fill = FieldFill.INSERT)
      private LocalDateTime createTime;

    private String email;

    private String nickname;

    private Long blogId;

    private Long parentCommentId;


}
