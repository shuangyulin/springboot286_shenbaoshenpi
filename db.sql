/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ruxiaoshenbaoshenpi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ruxiaoshenbaoshenpi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ruxiaoshenbaoshenpi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'ruxiaoshenbao_yesno_types','处理状态',1,'处理中',NULL,NULL,'2022-03-21 16:14:13'),(2,'ruxiaoshenbao_yesno_types','处理状态',2,'通过',NULL,NULL,'2022-03-21 16:14:13'),(3,'ruxiaoshenbao_yesno_types','处理状态',3,'拒绝',NULL,NULL,'2022-03-21 16:14:13'),(4,'zhuanye_types','人员身份',1,'校内',NULL,NULL,'2022-03-21 16:14:13'),(5,'zhuanye_types','人员身份',2,'校外',NULL,NULL,'2022-03-21 16:14:13'),(6,'ruxiaojiancha_status_types','是否去过风险地区',1,'是',NULL,NULL,'2022-03-21 16:14:13'),(7,'ruxiaojiancha_status_types','是否去过风险地区',2,'否',NULL,NULL,'2022-03-21 16:14:13'),(8,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-21 16:14:13'),(9,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-21 16:14:13'),(10,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-21 16:14:13'),(11,'sex_types','性别',1,'男',NULL,NULL,'2022-03-21 16:14:13'),(12,'sex_types','性别',2,'女',NULL,NULL,'2022-03-21 16:14:13');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/ruxiaoshenbaoshenpi/upload/news1.jpg','2022-03-21 16:59:36','公告详情1','2022-03-21 16:59:36'),(2,'公告标题2',3,'http://localhost:8080/ruxiaoshenbaoshenpi/upload/news2.jpg','2022-03-21 16:59:36','公告详情2','2022-03-21 16:59:36'),(3,'公告标题3',1,'http://localhost:8080/ruxiaoshenbaoshenpi/upload/news3.jpg','2022-03-21 16:59:36','公告详情3','2022-03-21 16:59:36'),(4,'公告标题4',1,'http://localhost:8080/ruxiaoshenbaoshenpi/upload/news4.jpg','2022-03-21 16:59:36','公告详情4','2022-03-21 16:59:36'),(5,'公告标题5',2,'http://localhost:8080/ruxiaoshenbaoshenpi/upload/news5.jpg','2022-03-21 16:59:36','公告详情5','2022-03-21 16:59:36');

/*Table structure for table `ruxiaojiancha` */

DROP TABLE IF EXISTS `ruxiaojiancha`;

CREATE TABLE `ruxiaojiancha` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ruxiaoshenbao_id` int(11) DEFAULT NULL COMMENT '入校申报',
  `tiwen` decimal(10,2) DEFAULT NULL COMMENT '体温',
  `ruxiaojiancha_photo` varchar(200) DEFAULT NULL COMMENT '健康码',
  `xingcheng_photo` varchar(200) DEFAULT NULL COMMENT '行程码',
  `ruxiaojiancha_status_types` int(11) DEFAULT NULL COMMENT '是否去过风险地区',
  `ruxiaojiancha_content` text COMMENT '检查详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='入校检查';

/*Data for the table `ruxiaojiancha` */

insert  into `ruxiaojiancha`(`id`,`ruxiaoshenbao_id`,`tiwen`,`ruxiaojiancha_photo`,`xingcheng_photo`,`ruxiaojiancha_status_types`,`ruxiaojiancha_content`,`create_time`) values (1,1,'602.34','http://localhost:8080/ruxiaoshenbaoshenpi/upload/1647853704491.webp','http://localhost:8080/ruxiaoshenbaoshenpi/upload/1647853699461.jpeg',1,'<p>检查详情1</p>','2022-03-21 16:59:36'),(2,2,'595.67','http://localhost:8080/ruxiaoshenbaoshenpi/upload/1647853686204.webp','http://localhost:8080/ruxiaoshenbaoshenpi/upload/1647853690074.jpeg',2,'<p>检查详情2</p>','2022-03-21 16:59:36'),(3,3,'840.40','http://localhost:8080/ruxiaoshenbaoshenpi/upload/1647853672227.webp','http://localhost:8080/ruxiaoshenbaoshenpi/upload/1647853676288.jpeg',1,'<p>检查详情3</p>','2022-03-21 16:59:36'),(4,4,'226.41','http://localhost:8080/ruxiaoshenbaoshenpi/upload/1647853659921.webp','http://localhost:8080/ruxiaoshenbaoshenpi/upload/1647853664154.jpeg',2,'<p>检查详情4</p>','2022-03-21 16:59:36'),(6,5,'111.00','http://localhost:8080/ruxiaoshenbaoshenpi/upload/1647853938281.webp','http://localhost:8080/ruxiaoshenbaoshenpi/upload/1647853940785.jpeg',2,'<p><span style=\"color: rgb(96, 98, 102);\">检查详情123</span></p>','2022-03-21 17:12:28');

/*Table structure for table `ruxiaoshenbao` */

DROP TABLE IF EXISTS `ruxiaoshenbao`;

CREATE TABLE `ruxiaoshenbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ruxiaoshenbao_uuid_number` varchar(200) DEFAULT NULL COMMENT '编号 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhuanye_types` int(11) DEFAULT NULL COMMENT '人员身份 Search111',
  `ruxiaoshenbao_time` timestamp NULL DEFAULT NULL COMMENT '入校时间',
  `cuxiao_time` timestamp NULL DEFAULT NULL COMMENT '出校时间',
  `ruxiaoshenbao_yesno_types` int(11) DEFAULT NULL COMMENT '处理状态 Search111',
  `ruxiaoshenbao_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='入校申报';

/*Data for the table `ruxiaoshenbao` */

insert  into `ruxiaoshenbao`(`id`,`ruxiaoshenbao_uuid_number`,`yonghu_id`,`zhuanye_types`,`ruxiaoshenbao_time`,`cuxiao_time`,`ruxiaoshenbao_yesno_types`,`ruxiaoshenbao_yesno_text`,`create_time`) values (1,'16478531761202',1,1,'2022-03-21 16:59:36','2022-03-21 16:59:36',1,NULL,'2022-03-21 16:59:36'),(4,'16478531761205',2,1,'2022-03-21 16:59:36','2022-03-21 16:59:36',1,NULL,'2022-03-21 16:59:36'),(5,'16478531761203',1,1,'2022-03-21 16:59:36','2022-03-21 16:59:36',2,'通过','2022-03-21 16:59:36');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'admin','users','管理员','07xjhc83dvnn883b23cu4r6n32x320pu','2022-03-21 16:59:42','2022-03-21 18:21:46'),(4,1,'a1','yonghu','用户','778wv633h5s56ef1wbkzlukhtiu9cugx','2022-03-21 17:09:48','2022-03-21 18:19:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/ruxiaoshenbaoshenpi/upload/yonghu1.jpg',1,'17703786901','410224199610232001','1@qq.com',1,'2022-03-21 16:59:36'),(2,'a2','123456','用户姓名2','http://localhost:8080/ruxiaoshenbaoshenpi/upload/yonghu2.jpg',1,'17703786902','410224199610232002','2@qq.com',1,'2022-03-21 16:59:36'),(3,'a3','123456','用户姓名3','http://localhost:8080/ruxiaoshenbaoshenpi/upload/yonghu3.jpg',2,'17703786903','410224199610232003','3@qq.com',1,'2022-03-21 16:59:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
