/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.22 : Database - blogdb
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blogdb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `blogdb`;

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
                           `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                           `user_name` varchar(255) NOT NULL COMMENT '用户名',
                           `pass_word` varchar(255) NOT NULL COMMENT '密码',
                           `gender` varchar(1) DEFAULT NULL COMMENT '性别(1:男2:女)',
                           `avatar` varchar(100) DEFAULT NULL COMMENT '个人头像',
                           `email` varchar(60) DEFAULT NULL COMMENT '邮箱',
                           `birthday` date DEFAULT NULL COMMENT '出生年月日',
                           `mobile` varchar(11) DEFAULT NULL COMMENT '手机',
                           `valid_code` varchar(50) DEFAULT NULL COMMENT '邮箱验证码',
                           `summary` varchar(200) DEFAULT NULL COMMENT '自我简介最多150字',
                           `login_count` int unsigned DEFAULT '0' COMMENT '登录次数',
                           `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
                           `last_login_ip` varchar(50) DEFAULT '127.0.0.1' COMMENT '最后登录IP',
                           `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                           `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                           `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                           `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
                           `qq_number` varchar(255) DEFAULT NULL COMMENT 'QQ号',
                           `we_chat` varchar(255) DEFAULT NULL COMMENT '微信号',
                           `occupation` varchar(255) DEFAULT NULL COMMENT '职业',
                           `github` varchar(255) DEFAULT NULL COMMENT 'github地址',
                           `gitee` varchar(255) DEFAULT NULL COMMENT 'gitee地址',
                           `role_uid` varchar(32) DEFAULT NULL COMMENT '拥有的角色uid',
                           `person_resume` text COMMENT '履历',
                           PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
                          `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                          `title` varchar(200) DEFAULT NULL COMMENT '博客标题',
                          `summary` varchar(200) DEFAULT NULL COMMENT '博客简介',
                          `content` longtext COMMENT '博客内容',
                          `tag_uid` varchar(255) DEFAULT NULL COMMENT '标签uid',
                          `click_count` int DEFAULT '0' COMMENT '博客点击数',
                          `collect_count` int DEFAULT '0' COMMENT '博客收藏数',
                          `file_uid` varchar(255) DEFAULT NULL COMMENT '标题图片uid',
                          `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                          `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                          `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                          `admin_uid` varchar(32) DEFAULT NULL COMMENT '管理员uid',
                          `is_original` varchar(1) DEFAULT '1' COMMENT '是否原创（0:不是 1：是）',
                          `author` varchar(255) DEFAULT NULL COMMENT '作者',
                          `articles_part` varchar(255) DEFAULT NULL COMMENT '文章出处',
                          `blog_sort_uid` varchar(32) DEFAULT NULL COMMENT '博客分类UID',
                          `level` tinyint(1) DEFAULT '0' COMMENT '推荐等级(0:正常)',
                          `is_publish` varchar(1) DEFAULT '1' COMMENT '是否发布：0：否，1：是',
                          `sort` int NOT NULL DEFAULT '0' COMMENT '排序字段',
                          `open_comment` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否开启评论(0:否 1:是)',
                          `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型【0 博客， 1：推广】',
                          `outside_link` varchar(1024) DEFAULT NULL COMMENT '外链【如果是推广，那么将跳转到外链】',
                          `oid` int NOT NULL AUTO_INCREMENT COMMENT '唯一oid',
                          PRIMARY KEY (`uid`,`oid`),
                          KEY `oid` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='博客表';

DROP TABLE IF EXISTS `t_blog_sort`;

CREATE TABLE `t_blog_sort` (
                               `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                               `sort_name` varchar(255) DEFAULT NULL COMMENT '分类内容',
                               `content` varchar(255) DEFAULT NULL COMMENT '分类简介',
                               `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                               `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                               `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                               `sort` int DEFAULT '0' COMMENT '排序字段，越大越靠前',
                               `click_count` int DEFAULT '0' COMMENT '点击数',
                               PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客分类表';

DROP TABLE IF EXISTS `t_blog_spider`;

CREATE TABLE `t_blog_spider` (
                                 `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                                 `title` varchar(200) DEFAULT NULL COMMENT '博客标题',
                                 `summary` varchar(200) DEFAULT NULL COMMENT '博客简介',
                                 `content` longtext COMMENT '博客内容',
                                 `tag_uid` varchar(255) DEFAULT NULL COMMENT '标签uid',
                                 `click_count` int DEFAULT '0' COMMENT '博客点击数',
                                 `collect_count` int DEFAULT '0' COMMENT '博客收藏数',
                                 `file_uid` varchar(255) DEFAULT NULL COMMENT '标题图片uid',
                                 `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                                 `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                 `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                 `admin_uid` varchar(32) DEFAULT NULL COMMENT '管理员uid',
                                 `is_original` varchar(1) DEFAULT '1' COMMENT '是否原创（0:不是 1：是）',
                                 `author` varchar(255) DEFAULT NULL COMMENT '作者',
                                 `articles_part` varchar(255) DEFAULT NULL COMMENT '文章出处',
                                 `blog_sort_uid` varchar(32) DEFAULT NULL COMMENT '博客分类UID',
                                 `level` tinyint(1) DEFAULT '0' COMMENT '推荐等级(0:正常)',
                                 `is_publish` varchar(1) DEFAULT '1' COMMENT '是否发布：0：否，1：是',
                                 `sort` int NOT NULL DEFAULT '0' COMMENT '排序字段',
                                 PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客爬取表';

DROP TABLE IF EXISTS `t_category_menu`;

CREATE TABLE `t_category_menu` (
                                   `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                                   `name` varchar(255) NOT NULL COMMENT '菜单名称',
                                   `menu_level` tinyint(1) DEFAULT NULL COMMENT '菜单级别',
                                   `summary` varchar(200) DEFAULT NULL COMMENT '简介',
                                   `parent_uid` varchar(32) DEFAULT NULL COMMENT '父uid',
                                   `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
                                   `icon` varchar(50) DEFAULT NULL COMMENT '图标',
                                   `sort` int DEFAULT '0' COMMENT '排序字段，越大越靠前',
                                   `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                                   `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                   `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                   `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 1:是 0:否',
                                   `menu_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型 0: 菜单   1: 按钮',
                                   `is_jump_external_url` tinyint(1) DEFAULT '0' COMMENT '是否跳转外部链接 0：否，1：是',
                                   PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';


DROP TABLE IF EXISTS `t_collect`;

CREATE TABLE `t_collect` (
                             `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                             `user_uid` varchar(32) NOT NULL COMMENT '用户的uid',
                             `blog_uid` varchar(32) NOT NULL COMMENT '博客的uid',
                             `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                             `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                             `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                             PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
                             `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                             `user_uid` varchar(32) DEFAULT NULL COMMENT '用户uid',
                             `to_uid` varchar(32) DEFAULT NULL COMMENT '回复某条评论的uid',
                             `to_user_uid` varchar(32) DEFAULT NULL COMMENT '回复某个人的uid',
                             `content` varchar(2048) DEFAULT NULL COMMENT '评论内容',
                             `blog_uid` varchar(32) DEFAULT NULL COMMENT '博客uid',
                             `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                             `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                             `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                             `source` varchar(255) NOT NULL COMMENT '评论来源： MESSAGE_BOARD，ABOUT，BLOG_INFO 等',
                             `TYPE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评论类型 1:点赞 0:评论',
                             `first_comment_uid` varchar(32) DEFAULT NULL COMMENT '一级评论UID',
                             PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

DROP TABLE IF EXISTS `t_comment_report`;

CREATE TABLE `t_comment_report` (
                                    `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                                    `user_uid` varchar(32) DEFAULT NULL COMMENT '举报人uid',
                                    `report_comment_uid` varchar(32) DEFAULT NULL COMMENT '被举报的评论Uid',
                                    `report_user_uid` varchar(32) DEFAULT NULL COMMENT '被举报的用户uid',
                                    `content` varchar(1000) DEFAULT NULL COMMENT '举报的原因',
                                    `progress` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '进展状态: 0 未查看   1: 已查看  2：已处理',
                                    `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                                    `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                    `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                    PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论举报表';

DROP TABLE IF EXISTS `t_exception_log`;

CREATE TABLE `t_exception_log` (
                                   `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                                   `exception_json` mediumtext COMMENT '异常对象json格式',
                                   `exception_message` mediumtext COMMENT '异常信息',
                                   `status` tinyint(1) DEFAULT '1' COMMENT '状态',
                                   `create_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                   `update_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                   `ip` varchar(20) DEFAULT NULL COMMENT 'ip地址',
                                   `ip_source` varchar(100) DEFAULT NULL COMMENT 'ip来源',
                                   `method` varchar(255) DEFAULT NULL COMMENT '请求方法',
                                   `operation` varchar(100) DEFAULT NULL COMMENT '方法描述',
                                   `params` longtext COMMENT '请求参数',
                                   PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_feedback`;

CREATE TABLE `t_feedback` (
                              `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                              `user_uid` varchar(32) NOT NULL COMMENT '用户uid',
                              `content` varchar(1000) DEFAULT NULL COMMENT '反馈的内容',
                              `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                              `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                              `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                              `title` varchar(255) DEFAULT NULL COMMENT '标题',
                              `feedback_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '反馈状态： 0：已开启  1：进行中  2：已完成  3：已拒绝',
                              `reply` varchar(255) DEFAULT NULL COMMENT '回复',
                              `admin_uid` varchar(32) DEFAULT NULL COMMENT '管理员uid',
                              PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反馈表';

DROP TABLE IF EXISTS `t_link`;

CREATE TABLE `t_link` (
                          `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                          `title` varchar(255) DEFAULT NULL COMMENT '友情链接标题',
                          `summary` varchar(255) DEFAULT NULL COMMENT '友情链接介绍',
                          `url` varchar(255) DEFAULT NULL COMMENT '友情链接URL',
                          `click_count` int DEFAULT '0' COMMENT '点击数',
                          `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                          `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                          `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                          `sort` int DEFAULT '0' COMMENT '排序字段，越大越靠前',
                          `link_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '友链状态： 0 申请中， 1：已上线，  2：已下架',
                          `user_uid` varchar(32) DEFAULT NULL COMMENT '申请用户UID',
                          `admin_uid` varchar(32) DEFAULT NULL COMMENT '操作管理员UID',
                          `email` varchar(255) DEFAULT NULL COMMENT '站长邮箱',
                          `file_uid` varchar(255) DEFAULT NULL COMMENT '网站图标',
                          PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接表';

DROP TABLE IF EXISTS `t_picture`;

CREATE TABLE `t_picture` (
                             `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                             `file_uid` varchar(32) DEFAULT NULL COMMENT '图片uid',
                             `pic_name` varchar(255) DEFAULT NULL COMMENT '图片名',
                             `picture_sort_uid` varchar(32) DEFAULT NULL COMMENT '分类uid',
                             `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                             `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                             `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                             PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片表';

DROP TABLE IF EXISTS `t_picture_sort`;

CREATE TABLE `t_picture_sort` (
                                  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                                  `file_uid` varchar(32) DEFAULT NULL COMMENT '分类图片uid',
                                  `name` varchar(255) DEFAULT NULL COMMENT '分类名',
                                  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                                  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                  `parent_uid` varchar(32) DEFAULT NULL,
                                  `sort` int DEFAULT '0' COMMENT '排序字段，越大越靠前',
                                  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示，1：是，0，否',
                                  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片分类表';


DROP TABLE IF EXISTS `t_resource_sort`;

CREATE TABLE `t_resource_sort` (
                                   `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                                   `file_uid` varchar(32) DEFAULT NULL COMMENT '分类图片uid',
                                   `sort_name` varchar(255) DEFAULT NULL COMMENT '分类名',
                                   `content` varchar(255) DEFAULT NULL COMMENT '分类介绍',
                                   `click_count` varchar(255) DEFAULT NULL COMMENT '点击数',
                                   `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                                   `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                   `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                   `parent_uid` varchar(32) DEFAULT NULL COMMENT '父UID',
                                   `sort` int DEFAULT '0' COMMENT '排序字段',
                                   PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源分类表';


DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
                          `uid` varchar(32) NOT NULL COMMENT '角色id',
                          `role_name` varchar(255) NOT NULL COMMENT '角色名',
                          `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                          `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                          `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                          `summary` varchar(255) DEFAULT NULL COMMENT '角色介绍',
                          `category_menu_uids` text COMMENT '角色管辖的菜单的UID',
                          PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_study_video`;

CREATE TABLE `t_study_video` (
                                 `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                                 `file_uid` varchar(32) DEFAULT NULL COMMENT '视频封面图片uid',
                                 `resource_sort_uid` varchar(255) DEFAULT NULL COMMENT '资源分类UID',
                                 `name` varchar(255) DEFAULT NULL COMMENT '视频名称',
                                 `summary` varchar(255) DEFAULT NULL COMMENT '视频简介',
                                 `content` varchar(255) DEFAULT NULL COMMENT '分类介绍',
                                 `baidu_path` varchar(255) DEFAULT NULL COMMENT '百度云完整路径',
                                 `click_count` varchar(255) DEFAULT NULL COMMENT '点击数',
                                 `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                                 `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                 `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                 `parent_uid` varchar(32) DEFAULT NULL,
                                 PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习视频表';

DROP TABLE IF EXISTS `t_subject`;

CREATE TABLE `t_subject` (
                             `uid` varchar(32) NOT NULL COMMENT '主键',
                             `subject_name` varchar(255) DEFAULT NULL COMMENT '专题名称',
                             `summary` varchar(255) DEFAULT NULL COMMENT '简介',
                             `file_uid` varchar(32) DEFAULT NULL COMMENT '封面图片UID',
                             `click_count` int NOT NULL DEFAULT '0' COMMENT '专题点击数',
                             `collect_count` int NOT NULL DEFAULT '0' COMMENT '专题收藏数',
                             `status` tinyint(1) DEFAULT '1' COMMENT '状态',
                             `sort` int NOT NULL DEFAULT '0' COMMENT '排序字段',
                             `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                             `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                             PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题表';

DROP TABLE IF EXISTS `t_subject_item`;

CREATE TABLE `t_subject_item` (
                                  `uid` varchar(32) NOT NULL COMMENT '主键',
                                  `subject_uid` varchar(32) NOT NULL COMMENT '专题uid',
                                  `blog_uid` varchar(32) NOT NULL COMMENT '博客uid',
                                  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
                                  `sort` int NOT NULL DEFAULT '0' COMMENT '排序字段',
                                  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题Item表';

DROP TABLE IF EXISTS `t_sys_dict_data`;

CREATE TABLE `t_sys_dict_data` (
                                   `uid` varchar(32) NOT NULL COMMENT '主键',
                                   `oid` int NOT NULL AUTO_INCREMENT COMMENT '自增键oid',
                                   `dict_type_uid` varchar(255) DEFAULT NULL COMMENT '字典类型UID',
                                   `dict_label` varchar(255) DEFAULT NULL COMMENT '字典标签',
                                   `dict_value` varchar(255) DEFAULT NULL COMMENT '字典键值',
                                   `css_class` varchar(255) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
                                   `list_class` varchar(255) DEFAULT NULL COMMENT '表格回显样式',
                                   `is_default` tinyint(1) DEFAULT '0' COMMENT '是否默认（1是 0否）,默认为0',
                                   `create_by_uid` varchar(32) DEFAULT NULL COMMENT '创建人UID',
                                   `update_by_uid` varchar(32) DEFAULT NULL COMMENT '最后更新人UID',
                                   `remark` varchar(255) DEFAULT NULL COMMENT '备注',
                                   `status` tinyint(1) DEFAULT '1' COMMENT '状态',
                                   `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                   `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                   `is_publish` varchar(1) NOT NULL DEFAULT '1' COMMENT '是否发布(1:是，0:否)',
                                   `sort` int NOT NULL DEFAULT '0' COMMENT '排序字段',
                                   PRIMARY KEY (`uid`),
                                   KEY `oid` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

DROP TABLE IF EXISTS `t_sys_dict_type`;

CREATE TABLE `t_sys_dict_type` (
                                   `uid` varchar(32) NOT NULL COMMENT '主键',
                                   `oid` int NOT NULL AUTO_INCREMENT COMMENT '自增键oid',
                                   `dict_name` varchar(255) DEFAULT NULL COMMENT '字典名称',
                                   `dict_type` varchar(255) DEFAULT NULL COMMENT '字典类型',
                                   `create_by_uid` varchar(32) NOT NULL COMMENT '创建人UID',
                                   `update_by_uid` varchar(32) NOT NULL COMMENT '最后更新人UID',
                                   `remark` varchar(255) DEFAULT NULL COMMENT '备注',
                                   `status` tinyint(1) DEFAULT '1' COMMENT '状态',
                                   `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                   `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                   `is_publish` varchar(1) NOT NULL DEFAULT '1' COMMENT '是否发布(1:是，0:否)',
                                   `sort` int NOT NULL DEFAULT '0' COMMENT '排序字段',
                                   PRIMARY KEY (`uid`),
                                   KEY `oid` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

DROP TABLE IF EXISTS `t_sys_log`;

CREATE TABLE `t_sys_log` (
                             `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                             `user_name` varchar(255) NOT NULL COMMENT '用户名',
                             `admin_uid` varchar(32) DEFAULT NULL COMMENT '管理员uid',
                             `ip` varchar(50) DEFAULT NULL COMMENT '请求ip地址',
                             `url` varchar(255) DEFAULT NULL COMMENT '请求url',
                             `type` varchar(32) DEFAULT NULL COMMENT '请求方式',
                             `class_path` varchar(255) DEFAULT NULL COMMENT '请求类路径',
                             `method` varchar(32) DEFAULT NULL COMMENT '请求方法名',
                             `params` longtext COMMENT '请求参数',
                             `operation` varchar(32) DEFAULT NULL COMMENT '描述',
                             `status` tinyint(1) DEFAULT '1' COMMENT '状态',
                             `create_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                             `update_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                             `ip_source` varchar(255) DEFAULT NULL COMMENT 'ip来源',
                             `spend_time` int DEFAULT '0' COMMENT '方法请求花费的时间',
                             PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_sys_params`;

CREATE TABLE `t_sys_params` (
                                `uid` varchar(32) NOT NULL COMMENT '主键',
                                `params_type` varchar(1) NOT NULL DEFAULT '1' COMMENT '配置类型 是否系统内置(1:，是 0:否)',
                                `params_name` varchar(255) DEFAULT NULL COMMENT '参数名称',
                                `params_key` varchar(255) DEFAULT NULL COMMENT '参数键名',
                                `remark` varchar(255) DEFAULT NULL COMMENT '备注',
                                `params_value` varchar(255) DEFAULT NULL COMMENT '参数键值',
                                `status` tinyint(1) DEFAULT '1' COMMENT '状态',
                                `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                `sort` int NOT NULL DEFAULT '0' COMMENT '排序字段',
                                PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数配置表';

DROP TABLE IF EXISTS `t_system_config`;

CREATE TABLE `t_system_config` (
                                   `uid` varchar(32) NOT NULL COMMENT '主键',
                                   `qi_niu_access_key` varchar(255) DEFAULT NULL COMMENT '七牛云公钥',
                                   `qi_niu_secret_key` varchar(255) DEFAULT NULL COMMENT '七牛云私钥',
                                   `email` varchar(255) DEFAULT NULL COMMENT '邮箱账号',
                                   `email_user_name` varchar(255) DEFAULT NULL COMMENT '邮箱发件人用户名',
                                   `email_password` varchar(255) DEFAULT NULL COMMENT '邮箱密码',
                                   `smtp_address` varchar(20) DEFAULT NULL COMMENT 'SMTP地址',
                                   `smtp_port` varchar(6) DEFAULT '1' COMMENT 'SMTP端口',
                                   `status` tinyint(1) DEFAULT '1' COMMENT '状态',
                                   `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                   `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                   `qi_niu_bucket` varchar(255) DEFAULT NULL COMMENT '七牛云上传空间',
                                   `qi_niu_area` varchar(10) DEFAULT NULL COMMENT '七牛云存储区域 华东（z0），华北(z1)，华南(z2)，北美(na0)，东南亚(as0)',
                                   `upload_qi_niu` varchar(1) DEFAULT '1' COMMENT '图片是否上传七牛云 (0:否， 1：是)',
                                   `upload_local` varchar(1) DEFAULT '1' COMMENT '图片是否上传本地存储 (0:否， 1：是)',
                                   `picture_priority` varchar(1) DEFAULT '1' COMMENT '图片显示优先级（ 1 展示 七牛云,  0 本地）',
                                   `qi_niu_picture_base_url` varchar(255) DEFAULT NULL COMMENT '七牛云域名前缀：http://images.moguit.cn',
                                   `local_picture_base_url` varchar(255) DEFAULT NULL COMMENT '本地服务器域名前缀：http://localhost:8600',
                                   `start_email_notification` varchar(1) NOT NULL DEFAULT '0' COMMENT '是否开启邮件通知(0:否， 1:是)',
                                   `editor_model` tinyint(1) NOT NULL DEFAULT '0' COMMENT '编辑器模式，(0：富文本编辑器CKEditor，1：markdown编辑器Veditor)',
                                   `theme_color` varchar(10) NOT NULL DEFAULT '#409EFF' COMMENT '主题颜色',
                                   `minio_end_point` varchar(255) DEFAULT NULL COMMENT 'Minio远程连接地址',
                                   `minio_access_key` varchar(255) DEFAULT NULL COMMENT 'Minio公钥',
                                   `minio_secret_key` varchar(255) DEFAULT NULL COMMENT 'Minio私钥',
                                   `minio_bucket` varchar(255) DEFAULT NULL COMMENT 'Minio桶',
                                   `upload_minio` tinyint(1) NOT NULL DEFAULT '0' COMMENT '图片是否上传Minio (0:否， 1：是)',
                                   `minio_picture_base_url` varchar(255) DEFAULT NULL COMMENT 'Minio服务器文件域名前缀',
                                   `open_dashboard_notification` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启仪表盘通知(0:否， 1:是)',
                                   `dashboard_notification` longtext COMMENT '仪表盘通知【用于首次登录弹框】',
                                   PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置表';

DROP TABLE IF EXISTS `t_tag`;

CREATE TABLE `t_tag` (
                         `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                         `content` varchar(1000) DEFAULT NULL COMMENT '标签内容',
                         `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                         `click_count` int DEFAULT '0' COMMENT '标签简介',
                         `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                         `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                         `sort` int DEFAULT '0' COMMENT '排序字段，越大越靠前',
                         PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签表';

DROP TABLE IF EXISTS `t_todo`;

CREATE TABLE `t_todo` (
                          `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                          `admin_uid` varchar(32) DEFAULT NULL COMMENT '管理员uid',
                          `text` varchar(255) DEFAULT NULL COMMENT '内容',
                          `done` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '表示事项是否完成（0：未完成 1：已完成）',
                          `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                          `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                          `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                          PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代办事项表';

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
                          `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                          `user_name` varchar(255) NOT NULL COMMENT '用户名',
                          `pass_word` varchar(32) NOT NULL COMMENT '密码',
                          `gender` tinyint unsigned DEFAULT NULL COMMENT '性别(1:男2:女)',
                          `avatar` varchar(100) DEFAULT NULL COMMENT '个人头像',
                          `email` varchar(60) DEFAULT NULL COMMENT '邮箱',
                          `birthday` date DEFAULT NULL COMMENT '出生年月日',
                          `mobile` varchar(50) DEFAULT NULL COMMENT '手机',
                          `valid_code` varchar(50) DEFAULT NULL COMMENT '邮箱验证码',
                          `summary` varchar(200) DEFAULT NULL COMMENT '自我简介最多150字',
                          `login_count` int unsigned DEFAULT '0' COMMENT '登录次数',
                          `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
                          `last_login_ip` varchar(50) DEFAULT '127.0.0.1' COMMENT '最后登录IP',
                          `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                          `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                          `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                          `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
                          `source` varchar(255) DEFAULT NULL COMMENT '资料来源',
                          `uuid` varchar(255) DEFAULT NULL COMMENT '平台uuid',
                          `qq_number` varchar(20) DEFAULT NULL COMMENT 'QQ号',
                          `we_chat` varchar(255) DEFAULT NULL COMMENT '微信号',
                          `occupation` varchar(255) DEFAULT NULL COMMENT '职业',
                          `comment_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '评论状态 1:正常 0:禁言',
                          `ip_source` varchar(255) DEFAULT NULL COMMENT 'ip来源',
                          `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
                          `os` varchar(255) DEFAULT NULL COMMENT '操作系统',
                          `start_email_notification` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启邮件通知 1:开启 0:关闭',
                          `user_tag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户标签：0：普通用户，1：管理员，2：博主 等',
                          PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

DROP TABLE IF EXISTS `t_visitor`;

CREATE TABLE `t_visitor` (
                             `uid` varchar(32) NOT NULL COMMENT '唯一uid',
                             `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
                             `email` varchar(255) NOT NULL COMMENT '邮箱',
                             `login_count` int unsigned DEFAULT '0' COMMENT '登录次数',
                             `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
                             `last_login_ip` varchar(50) DEFAULT '127.0.0.1' COMMENT '最后登录IP',
                             `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态',
                             `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                             `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                             PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游客表';

/*Data for the table `t_visitor` */

/*Table structure for table `t_web_config` */

DROP TABLE IF EXISTS `t_web_config`;

CREATE TABLE `t_web_config` (
                                `uid` varchar(32) NOT NULL COMMENT '主键',
                                `logo` varchar(255) NOT NULL COMMENT 'logo(文件UID)',
                                `name` varchar(255) NOT NULL COMMENT '网站名称',
                                `summary` varchar(255) NOT NULL COMMENT '介绍',
                                `keyword` varchar(255) NOT NULL COMMENT '关键字',
                                `author` varchar(255) NOT NULL COMMENT '作者',
                                `record_num` varchar(255) NOT NULL COMMENT '备案号',
                                `status` tinyint(1) DEFAULT '1' COMMENT '状态',
                                `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                                `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                                `title` varchar(255) DEFAULT NULL COMMENT '标题',
                                `ali_pay` varchar(32) DEFAULT NULL COMMENT '支付宝收款码FileId',
                                `weixin_pay` varchar(32) DEFAULT NULL COMMENT '微信收款码FileId',
                                `github` varchar(255) DEFAULT NULL COMMENT 'github地址',
                                `gitee` varchar(255) DEFAULT NULL COMMENT 'gitee地址',
                                `qq_number` varchar(20) DEFAULT NULL COMMENT 'QQ号',
                                `qq_group` varchar(20) DEFAULT NULL COMMENT 'QQ群',
                                `we_chat` varchar(255) DEFAULT NULL COMMENT '微信号',
                                `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
                                `show_list` varchar(255) DEFAULT NULL COMMENT '显示的列表（用于控制邮箱、QQ、QQ群、Github、Gitee、微信是否显示在前端）',
                                `login_type_list` varchar(255) DEFAULT NULL COMMENT '登录方式列表（用于控制前端登录方式，如账号密码,码云,Github,QQ,微信）',
                                `open_comment` varchar(1) DEFAULT '1' COMMENT '是否开启评论(0:否 1:是)',
                                `open_mobile_comment` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启移动端评论(0:否， 1:是)',
                                `open_admiration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启赞赏(0:否， 1:是)',
                                `open_mobile_admiration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启移动端赞赏(0:否， 1:是)',
                                PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_web_visit`;

CREATE TABLE `t_web_visit` (
                               `uid` varchar(32) NOT NULL COMMENT '主键',
                               `user_uid` varchar(255) DEFAULT NULL COMMENT '用户uid',
                               `ip` varchar(255) DEFAULT NULL COMMENT '访问ip地址',
                               `behavior` varchar(255) DEFAULT NULL COMMENT '用户行为',
                               `module_uid` varchar(255) DEFAULT NULL COMMENT '模块uid（文章uid，标签uid，分类uid）',
                               `other_data` varchar(255) DEFAULT NULL COMMENT '附加数据(比如搜索内容)',
                               `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
                               `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
                               `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
                               `os` varchar(255) DEFAULT NULL COMMENT '操作系统',
                               `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
                               `ip_source` varchar(255) DEFAULT NULL COMMENT 'ip来源',
                               PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Web访问记录表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;