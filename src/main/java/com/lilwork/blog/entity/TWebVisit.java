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
 * Web访问记录表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TWebVisit implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 主键
     */
      @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 用户uid
     */
      private String userUid;

      /**
     * 访问ip地址
     */
      private String ip;

      /**
     * 用户行为
     */
      private String behavior;

      /**
     * 模块uid（文章uid，标签uid，分类uid）
     */
      private String moduleUid;

      /**
     * 附加数据(比如搜索内容)
     */
      private String otherData;

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
     * 操作系统
     */
      private String os;

      /**
     * 浏览器
     */
      private String browser;

      /**
     * ip来源
     */
      private String ipSource;


}
