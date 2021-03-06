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
 * 系统配置表
 * </p>
 *
 * @author lil
 * @since 2021-03-06
 */
@Data
  @EqualsAndHashCode(callSuper = false)
    public class TSystemConfig implements Serializable {

    private static final long serialVersionUID = 1L;

      /**
     * 主键
     */ @TableId(value = "uid", type = IdType.AUTO)
        private String uid;

      /**
     * 七牛云公钥
     */
      private String qiNiuAccessKey;

      /**
     * 七牛云私钥
     */
      private String qiNiuSecretKey;

      /**
     * 邮箱账号
     */
      private String email;

      /**
     * 邮箱发件人用户名
     */
      private String emailUserName;

      /**
     * 邮箱密码
     */
      private String emailPassword;

      /**
     * SMTP地址
     */
      private String smtpAddress;

      /**
     * SMTP端口
     */
      private String smtpPort;

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
     * 七牛云上传空间
     */
      private String qiNiuBucket;

      /**
     * 七牛云存储区域 华东（z0），华北(z1)，华南(z2)，北美(na0)，东南亚(as0)
     */
      private String qiNiuArea;

      /**
     * 图片是否上传七牛云 (0:否， 1：是)
     */
      private String uploadQiNiu;

      /**
     * 图片是否上传本地存储 (0:否， 1：是)
     */
      private String uploadLocal;

      /**
     * 图片显示优先级（ 1 展示 七牛云,  0 本地）
     */
      private String picturePriority;

      /**
     * 七牛云域名前缀：http://images.moguit.cn
     */
      private String qiNiuPictureBaseUrl;

      /**
     * 本地服务器域名前缀：http://localhost:8600
     */
      private String localPictureBaseUrl;

      /**
     * 是否开启邮件通知(0:否， 1:是)
     */
      private String startEmailNotification;

      /**
     * 编辑器模式，(0：富文本编辑器CKEditor，1：markdown编辑器Veditor)
     */
      private Boolean editorModel;

      /**
     * 主题颜色
     */
      private String themeColor;

      /**
     * Minio远程连接地址
     */
      private String minioEndPoint;

      /**
     * Minio公钥
     */
      private String minioAccessKey;

      /**
     * Minio私钥
     */
      private String minioSecretKey;

      /**
     * Minio桶
     */
      private String minioBucket;

      /**
     * 图片是否上传Minio (0:否， 1：是)
     */
      private Boolean uploadMinio;

      /**
     * Minio服务器文件域名前缀
     */
      private String minioPictureBaseUrl;

      /**
     * 是否开启仪表盘通知(0:否， 1:是)
     */
      private Boolean openDashboardNotification;

      /**
     * 仪表盘通知【用于首次登录弹框】
     */
      private String dashboardNotification;


}
