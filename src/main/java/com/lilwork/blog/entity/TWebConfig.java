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
    public class TWebConfig implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 主键
     */
      @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * logo(文件UID)
     */
      private String logo;

      /**
     * 网站名称
     */
      private String name;

      /**
     * 介绍
     */
      private String summary;

      /**
     * 关键字
     */
      private String keyword;

      /**
     * 作者
     */
      private String author;

      /**
     * 备案号
     */
      private String recordNum;

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
     * 标题
     */
      private String title;

      /**
     * 支付宝收款码FileId
     */
      private String aliPay;

      /**
     * 微信收款码FileId
     */
      private String weixinPay;

      /**
     * github地址
     */
      private String github;

      /**
     * gitee地址
     */
      private String gitee;

      /**
     * QQ号
     */
      private String qqNumber;

      /**
     * QQ群
     */
      private String qqGroup;

      /**
     * 微信号
     */
      private String weChat;

      /**
     * 邮箱
     */
      private String email;

      /**
     * 显示的列表（用于控制邮箱、QQ、QQ群、Github、Gitee、微信是否显示在前端）
     */
      private String showList;

      /**
     * 登录方式列表（用于控制前端登录方式，如账号密码,码云,Github,QQ,微信）
     */
      private String loginTypeList;

      /**
     * 是否开启评论(0:否 1:是)
     */
      private String openComment;

      /**
     * 是否开启移动端评论(0:否， 1:是)
     */
      private Boolean openMobileComment;

      /**
     * 是否开启赞赏(0:否， 1:是)
     */
      private Boolean openAdmiration;

      /**
     * 是否开启移动端赞赏(0:否， 1:是)
     */
      private Boolean openMobileAdmiration;


}
