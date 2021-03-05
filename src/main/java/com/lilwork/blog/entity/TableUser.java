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
    public class TableUser implements Serializable {

    private static final long serialVersionUID = 1L;

      private Long id;

    private String avatar;

      @TableField(fill = FieldFill.INSERT)
      private LocalDateTime createTime;

    private String email;

    private String nickname;

    private String password;

    private Integer type;

      @TableField(fill = FieldFill.INSERT_UPDATE)
      private LocalDateTime updateTime;

    private String username;


}
