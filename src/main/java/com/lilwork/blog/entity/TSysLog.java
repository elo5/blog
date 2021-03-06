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
    public class TSysLog implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 唯一uid
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 用户名
     */
      private String userName;

      /**
     * 管理员uid
     */
      private String adminUid;

      /**
     * 请求ip地址
     */
      private String ip;

      /**
     * 请求url
     */
      private String url;

      /**
     * 请求方式
     */
      private String type;

      /**
     * 请求类路径
     */
      private String classPath;

      /**
     * 请求方法名
     */
      private String method;

      /**
     * 请求参数
     */
      private String params;

      /**
     * 描述
     */
      private String operation;

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
     * ip来源
     */
      private String ipSource;

      /**
     * 方法请求花费的时间
     */
      private Integer spendTime;


}
