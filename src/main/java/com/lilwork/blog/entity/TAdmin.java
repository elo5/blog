package com.lilwork.blog.entity;

import java.time.LocalDate;
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
 * 管理员表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TAdmin implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 唯一uid
     */
      @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 用户名
     */
      private String userName;

      /**
     * 密码
     */
      private String passWord;

      /**
     * 性别(1:男2:女)
     */
      private String gender;

      /**
     * 个人头像
     */
      private String avatar;

      /**
     * 邮箱
     */
      private String email;

      /**
     * 出生年月日
     */
      private LocalDate birthday;

      /**
     * 手机
     */
      private String mobile;

      /**
     * 邮箱验证码
     */
      private String validCode;

      /**
     * 自我简介最多150字
     */
      private String summary;

      /**
     * 登录次数
     */
      private Integer loginCount;

      /**
     * 最后登录时间
     */
      private LocalDateTime lastLoginTime;

      /**
     * 最后登录IP
     */
      private String lastLoginIp;

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

      /**
     * 昵称
     */
      private String nickName;

      /**
     * QQ号
     */
      private String qqNumber;

      /**
     * 微信号
     */
      private String weChat;

      /**
     * 职业
     */
      private String occupation;

      /**
     * github地址
     */
      private String github;

      /**
     * gitee地址
     */
      private String gitee;

      /**
     * 拥有的角色uid
     */
      private String roleUid;

      /**
     * 履历
     */
      private String personResume;


}
