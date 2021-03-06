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
 * 友情链接表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TLink implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 唯一uid
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 友情链接标题
     */
      private String title;

      /**
     * 友情链接介绍
     */
      private String summary;

      /**
     * 友情链接URL
     */
      private String url;

      /**
     * 点击数
     */
      private Integer clickCount;

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
     * 排序字段，越大越靠前
     */
      private Integer sort;

      /**
     * 友链状态： 0 申请中， 1：已上线，  2：已下架
     */
      private Boolean linkStatus;

      /**
     * 申请用户UID
     */
      private String userUid;

      /**
     * 操作管理员UID
     */
      private String adminUid;

      /**
     * 站长邮箱
     */
      private String email;

      /**
     * 网站图标
     */
      private String fileUid;


}
