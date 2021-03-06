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
 * 学习视频表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TStudyVideo implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 唯一uid
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 视频封面图片uid
     */
      private String fileUid;

      /**
     * 资源分类UID
     */
      private String resourceSortUid;

      /**
     * 视频名称
     */
      private String name;

      /**
     * 视频简介
     */
      private String summary;

      /**
     * 分类介绍
     */
      private String content;

      /**
     * 百度云完整路径
     */
      private String baiduPath;

      /**
     * 点击数
     */
      private String clickCount;

      /**
     * 状态
     */
      private Integer status;

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

    private String parentUid;


}
