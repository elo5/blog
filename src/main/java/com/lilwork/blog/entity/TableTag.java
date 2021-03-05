package com.lilwork.blog.entity;

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
    public class TableTag implements Serializable {

    private static final long serialVersionUID = 1L;

      private Long id;

    private String name;


}
