/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7fp64
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7fp64` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7fp64`;

/*Table structure for table `chongzhixinxi` */

DROP TABLE IF EXISTS `chongzhixinxi`;

CREATE TABLE `chongzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` int(11) NOT NULL COMMENT '金额',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='充值信息';

/*Data for the table `chongzhixinxi` */

insert  into `chongzhixinxi`(`id`,`addtime`,`yonghuming`,`xingming`,`jine`,`riqi`,`ispay`,`userid`) values (31,'2021-01-05 20:07:43','用户名1','姓名1',1,'2021-01-05','未支付',1),(32,'2021-01-05 20:07:43','用户名2','姓名2',2,'2021-01-05','未支付',2),(33,'2021-01-05 20:07:43','用户名3','姓名3',3,'2021-01-05','未支付',3),(34,'2021-01-05 20:07:43','用户名4','姓名4',4,'2021-01-05','未支付',4),(35,'2021-01-05 20:07:43','用户名5','姓名5',5,'2021-01-05','未支付',5),(36,'2021-01-05 20:07:43','用户名6','姓名6',6,'2021-01-05','未支付',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7fp64/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm7fp64/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm7fp64/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `fenlei` */

DROP TABLE IF EXISTS `fenlei`;

CREATE TABLE `fenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='分类';

/*Data for the table `fenlei` */

insert  into `fenlei`(`id`,`addtime`,`fenlei`) values (21,'2021-01-05 20:07:43','分类1'),(22,'2021-01-05 20:07:43','分类2'),(23,'2021-01-05 20:07:43','分类3'),(24,'2021-01-05 20:07:43','分类4'),(25,'2021-01-05 20:07:43','分类5'),(26,'2021-01-05 20:07:43','分类6');

/*Table structure for table `goumaizhangjie` */

DROP TABLE IF EXISTS `goumaizhangjie`;

CREATE TABLE `goumaizhangjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujimingcheng` varchar(200) DEFAULT NULL COMMENT '书籍名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='购买章节';

/*Data for the table `goumaizhangjie` */

insert  into `goumaizhangjie`(`id`,`addtime`,`shujimingcheng`,`fenlei`,`fengmian`,`jiage`,`goumairiqi`,`yonghuming`,`xingming`,`ispay`,`userid`) values (61,'2021-01-05 20:07:44','书籍名称1','分类1','http://localhost:8080/ssm7fp64/upload/goumaizhangjie_fengmian1.jpg','价格1','2021-01-05','用户名1','姓名1','未支付',1),(62,'2021-01-05 20:07:44','书籍名称2','分类2','http://localhost:8080/ssm7fp64/upload/goumaizhangjie_fengmian2.jpg','价格2','2021-01-05','用户名2','姓名2','未支付',2),(63,'2021-01-05 20:07:44','书籍名称3','分类3','http://localhost:8080/ssm7fp64/upload/goumaizhangjie_fengmian3.jpg','价格3','2021-01-05','用户名3','姓名3','未支付',3),(64,'2021-01-05 20:07:44','书籍名称4','分类4','http://localhost:8080/ssm7fp64/upload/goumaizhangjie_fengmian4.jpg','价格4','2021-01-05','用户名4','姓名4','未支付',4),(65,'2021-01-05 20:07:44','书籍名称5','分类5','http://localhost:8080/ssm7fp64/upload/goumaizhangjie_fengmian5.jpg','价格5','2021-01-05','用户名5','姓名5','未支付',5),(66,'2021-01-05 20:07:44','书籍名称6','分类6','http://localhost:8080/ssm7fp64/upload/goumaizhangjie_fengmian6.jpg','价格6','2021-01-05','用户名6','姓名6','未支付',6);

/*Table structure for table `koufeixinxi` */

DROP TABLE IF EXISTS `koufeixinxi`;

CREATE TABLE `koufeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `beizhu` longtext COMMENT '备注',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='扣费信息';

/*Data for the table `koufeixinxi` */

insert  into `koufeixinxi`(`id`,`addtime`,`yonghuming`,`xingming`,`jine`,`beizhu`,`riqi`,`userid`) values (41,'2021-01-05 20:07:43','用户名1','姓名1',1,'备注1','2021-01-05',1),(42,'2021-01-05 20:07:43','用户名2','姓名2',2,'备注2','2021-01-05',2),(43,'2021-01-05 20:07:43','用户名3','姓名3',3,'备注3','2021-01-05',3),(44,'2021-01-05 20:07:43','用户名4','姓名4',4,'备注4','2021-01-05',4),(45,'2021-01-05 20:07:43','用户名5','姓名5',5,'备注5','2021-01-05',5),(46,'2021-01-05 20:07:43','用户名6','姓名6',6,'备注6','2021-01-05',6);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-01-05 20:07:44',1,'用户名1','留言内容1','回复内容1'),(92,'2021-01-05 20:07:44',2,'用户名2','留言内容2','回复内容2'),(93,'2021-01-05 20:07:44',3,'用户名3','留言内容3','回复内容3'),(94,'2021-01-05 20:07:44',4,'用户名4','留言内容4','回复内容4'),(95,'2021-01-05 20:07:44',5,'用户名5','留言内容5','回复内容5'),(96,'2021-01-05 20:07:44',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `shucheng` */

DROP TABLE IF EXISTS `shucheng`;

CREATE TABLE `shucheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujimingcheng` varchar(200) NOT NULL COMMENT '书籍名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zishu` varchar(200) DEFAULT NULL COMMENT '字数',
  `zhangjie` varchar(200) DEFAULT NULL COMMENT '章节',
  `neirong1` longtext COMMENT '内容1',
  `neirong2` longtext COMMENT '内容2',
  `neirong3` longtext COMMENT '内容3',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `shifouwanjie` varchar(200) DEFAULT NULL COMMENT '是否完结',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='书城';

/*Data for the table `shucheng` */

insert  into `shucheng`(`id`,`addtime`,`shujimingcheng`,`fenlei`,`fengmian`,`zishu`,`zhangjie`,`neirong1`,`neirong2`,`neirong3`,`zuozhe`,`jiage`,`shangjiariqi`,`shifouwanjie`) values (51,'2021-01-05 20:07:43','书籍名称1','分类1','http://localhost:8080/ssm7fp64/upload/shucheng_fengmian1.jpg','字数1','章节1','内容11','内容21','内容31','作者1',1,'2021-01-05','是'),(52,'2021-01-05 20:07:43','书籍名称2','分类2','http://localhost:8080/ssm7fp64/upload/shucheng_fengmian2.jpg','字数2','章节2','内容12','内容22','内容32','作者2',2,'2021-01-05','是'),(53,'2021-01-05 20:07:43','书籍名称3','分类3','http://localhost:8080/ssm7fp64/upload/shucheng_fengmian3.jpg','字数3','章节3','内容13','内容23','内容33','作者3',3,'2021-01-05','是'),(54,'2021-01-05 20:07:43','书籍名称4','分类4','http://localhost:8080/ssm7fp64/upload/shucheng_fengmian4.jpg','字数4','章节4','内容14','内容24','内容34','作者4',4,'2021-01-05','是'),(55,'2021-01-05 20:07:43','书籍名称5','分类5','http://localhost:8080/ssm7fp64/upload/shucheng_fengmian5.jpg','字数5','章节5','内容15','内容25','内容35','作者5',5,'2021-01-05','是'),(56,'2021-01-05 20:07:44','书籍名称6','分类6','http://localhost:8080/ssm7fp64/upload/shucheng_fengmian6.jpg','字数6','章节6','内容16','内容26','内容36','作者6',6,'2021-01-05','是');

/*Table structure for table `shujia` */

DROP TABLE IF EXISTS `shujia`;

CREATE TABLE `shujia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujimingcheng` varchar(200) DEFAULT NULL COMMENT '书籍名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `zishu` varchar(200) DEFAULT NULL COMMENT '字数',
  `zhangjie` varchar(200) DEFAULT NULL COMMENT '章节',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='书架';

/*Data for the table `shujia` */

insert  into `shujia`(`id`,`addtime`,`shujimingcheng`,`fenlei`,`zishu`,`zhangjie`,`fengmian`,`yonghuming`,`userid`) values (81,'2021-01-05 20:07:44','书籍名称1','分类1','字数1','章节1','http://localhost:8080/ssm7fp64/upload/shujia_fengmian1.jpg','用户名1',1),(82,'2021-01-05 20:07:44','书籍名称2','分类2','字数2','章节2','http://localhost:8080/ssm7fp64/upload/shujia_fengmian2.jpg','用户名2',2),(83,'2021-01-05 20:07:44','书籍名称3','分类3','字数3','章节3','http://localhost:8080/ssm7fp64/upload/shujia_fengmian3.jpg','用户名3',3),(84,'2021-01-05 20:07:44','书籍名称4','分类4','字数4','章节4','http://localhost:8080/ssm7fp64/upload/shujia_fengmian4.jpg','用户名4',4),(85,'2021-01-05 20:07:44','书籍名称5','分类5','字数5','章节5','http://localhost:8080/ssm7fp64/upload/shujia_fengmian5.jpg','用户名5',5),(86,'2021-01-05 20:07:44','书籍名称6','分类6','字数6','章节6','http://localhost:8080/ssm7fp64/upload/shujia_fengmian6.jpg','用户名6',6);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-05 20:07:44');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (11,'2021-01-05 20:07:43','用户1','123456','姓名1','性别1','http://localhost:8080/ssm7fp64/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(12,'2021-01-05 20:07:43','用户2','123456','姓名2','性别2','http://localhost:8080/ssm7fp64/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(13,'2021-01-05 20:07:43','用户3','123456','姓名3','性别3','http://localhost:8080/ssm7fp64/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(14,'2021-01-05 20:07:43','用户4','123456','姓名4','性别4','http://localhost:8080/ssm7fp64/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(15,'2021-01-05 20:07:43','用户5','123456','姓名5','性别5','http://localhost:8080/ssm7fp64/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(16,'2021-01-05 20:07:43','用户6','123456','姓名6','性别6','http://localhost:8080/ssm7fp64/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886');

/*Table structure for table `zhangjiexinxi` */

DROP TABLE IF EXISTS `zhangjiexinxi`;

CREATE TABLE `zhangjiexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujimingcheng` varchar(200) DEFAULT NULL COMMENT '书籍名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `fahuoriqi` date DEFAULT NULL COMMENT '发货日期',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='章节信息';

/*Data for the table `zhangjiexinxi` */

insert  into `zhangjiexinxi`(`id`,`addtime`,`shujimingcheng`,`fenlei`,`yonghuming`,`xingming`,`wenjian`,`fahuoriqi`,`userid`) values (71,'2021-01-05 20:07:44','书籍名称1','分类1','用户名1','姓名1','','2021-01-05',1),(72,'2021-01-05 20:07:44','书籍名称2','分类2','用户名2','姓名2','','2021-01-05',2),(73,'2021-01-05 20:07:44','书籍名称3','分类3','用户名3','姓名3','','2021-01-05',3),(74,'2021-01-05 20:07:44','书籍名称4','分类4','用户名4','姓名4','','2021-01-05',4),(75,'2021-01-05 20:07:44','书籍名称5','分类5','用户名5','姓名5','','2021-01-05',5),(76,'2021-01-05 20:07:44','书籍名称6','分类6','用户名6','姓名6','','2021-01-05',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
