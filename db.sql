/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmpev4c
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmpev4c` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmpev4c`;

/*Table structure for table `caigoudingdan` */

DROP TABLE IF EXISTS `caigoudingdan`;

CREATE TABLE `caigoudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `caigouriqi` date DEFAULT NULL COMMENT '采购日期',
  `goumaishuliang` int(11) DEFAULT NULL COMMENT '购买数量',
  `weishengshizhanghao` varchar(200) DEFAULT NULL COMMENT '卫生室账号',
  `fuzerenxingming` varchar(200) DEFAULT NULL COMMENT '负责人姓名',
  `weishengshiming` varchar(200) DEFAULT NULL COMMENT '卫生室名',
  `suoshuquyu` varchar(200) DEFAULT NULL COMMENT '所属区域',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617851958490 DEFAULT CHARSET=utf8 COMMENT='采购订单';

/*Data for the table `caigoudingdan` */

insert  into `caigoudingdan`(`id`,`addtime`,`yaopinmingcheng`,`yaopintupian`,`caigouriqi`,`goumaishuliang`,`weishengshizhanghao`,`fuzerenxingming`,`weishengshiming`,`suoshuquyu`,`lianxidianhua`,`sfsh`,`shhf`) values (61,'2021-04-08 10:53:15','药品名称1','http://localhost:8080/ssmpev4c/upload/caigoudingdan_yaopintupian1.jpg','2021-04-08',1,'卫生室账号1','负责人姓名1','卫生室名1','所属区域1','联系电话1','是',''),(62,'2021-04-08 10:53:15','药品名称2','http://localhost:8080/ssmpev4c/upload/caigoudingdan_yaopintupian2.jpg','2021-04-08',2,'卫生室账号2','负责人姓名2','卫生室名2','所属区域2','联系电话2','是',''),(63,'2021-04-08 10:53:15','药品名称3','http://localhost:8080/ssmpev4c/upload/caigoudingdan_yaopintupian3.jpg','2021-04-08',3,'卫生室账号3','负责人姓名3','卫生室名3','所属区域3','联系电话3','是',''),(64,'2021-04-08 10:53:15','药品名称4','http://localhost:8080/ssmpev4c/upload/caigoudingdan_yaopintupian4.jpg','2021-04-08',4,'卫生室账号4','负责人姓名4','卫生室名4','所属区域4','联系电话4','是',''),(65,'2021-04-08 10:53:15','药品名称5','http://localhost:8080/ssmpev4c/upload/caigoudingdan_yaopintupian5.jpg','2021-04-08',5,'卫生室账号5','负责人姓名5','卫生室名5','所属区域5','联系电话5','是',''),(66,'2021-04-08 10:53:15','药品名称6','http://localhost:8080/ssmpev4c/upload/caigoudingdan_yaopintupian6.jpg','2021-04-08',6,'卫生室账号6','负责人姓名6','卫生室名6','所属区域6','联系电话6','否','222'),(1617850768989,'2021-04-08 10:59:28','小菊花','http://localhost:8080/ssmpev4c/upload/1617850762508.jpg','2021-04-14',10,'卫生室1','负责人姓名1','卫生室名1','所属区域1','020-89819991','是','12'),(1617851958489,'2021-04-08 11:19:18','999皮炎平','http://localhost:8080/ssmpev4c/upload/1617851956632.jpg','2021-04-21',20,'8','8','88卫生室','县区','000-11111111','是','');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmpev4c/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmpev4c/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmpev4c/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiesuandingdan` */

DROP TABLE IF EXISTS `jiesuandingdan`;

CREATE TABLE `jiesuandingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `goumaishuliang` int(11) DEFAULT NULL COMMENT '购买数量',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `jiesuanriqi` date DEFAULT NULL COMMENT '结算日期',
  `weishengshizhanghao` varchar(200) DEFAULT NULL COMMENT '卫生室账号',
  `fuzerenxingming` varchar(200) DEFAULT NULL COMMENT '负责人姓名',
  `weishengshiming` varchar(200) DEFAULT NULL COMMENT '卫生室名',
  `suoshuquyu` varchar(200) DEFAULT NULL COMMENT '所属区域',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617852130772 DEFAULT CHARSET=utf8 COMMENT='结算订单';

/*Data for the table `jiesuandingdan` */

insert  into `jiesuandingdan`(`id`,`addtime`,`yaopinmingcheng`,`yaopintupian`,`goumaishuliang`,`jine`,`jiesuanriqi`,`weishengshizhanghao`,`fuzerenxingming`,`weishengshiming`,`suoshuquyu`,`lianxidianhua`,`ispay`) values (81,'2021-04-08 10:53:15','药品名称1','http://localhost:8080/ssmpev4c/upload/jiesuandingdan_yaopintupian1.jpg',1,1,'2021-04-08','卫生室账号1','负责人姓名1','卫生室名1','所属区域1','联系电话1','未支付'),(82,'2021-04-08 10:53:15','药品名称2','http://localhost:8080/ssmpev4c/upload/jiesuandingdan_yaopintupian2.jpg',2,2,'2021-04-08','卫生室账号2','负责人姓名2','卫生室名2','所属区域2','联系电话2','未支付'),(83,'2021-04-08 10:53:15','药品名称3','http://localhost:8080/ssmpev4c/upload/jiesuandingdan_yaopintupian3.jpg',3,3,'2021-04-08','卫生室账号3','负责人姓名3','卫生室名3','所属区域3','联系电话3','未支付'),(84,'2021-04-08 10:53:15','药品名称4','http://localhost:8080/ssmpev4c/upload/jiesuandingdan_yaopintupian4.jpg',4,4,'2021-04-08','卫生室账号4','负责人姓名4','卫生室名4','所属区域4','联系电话4','未支付'),(85,'2021-04-08 10:53:15','药品名称5','http://localhost:8080/ssmpev4c/upload/jiesuandingdan_yaopintupian5.jpg',5,5,'2021-04-08','卫生室账号5','负责人姓名5','卫生室名5','所属区域5','联系电话5','未支付'),(86,'2021-04-08 10:53:15','药品名称6','http://localhost:8080/ssmpev4c/upload/jiesuandingdan_yaopintupian6.jpg',6,6,'2021-04-08','卫生室账号6','负责人姓名6','卫生室名6','所属区域6','联系电话6','未支付'),(1617850800138,'2021-04-08 10:59:59','药品名称6','http://localhost:8080/ssmpev4c/upload/peisongdingdan_yaopintupian6.jpg',6,6,'2021-04-06','卫生室1','负责人姓名1','卫生室名1','所属区域1','020-89819991','未支付'),(1617852130771,'2021-04-08 11:22:10','999皮炎平','http://localhost:8080/ssmpev4c/upload/1617851956632.jpg',20,1100,'2021-04-30','8','8','88卫生室','县区','000-11111111','已支付');

/*Table structure for table `peisongdingdan` */

DROP TABLE IF EXISTS `peisongdingdan`;

CREATE TABLE `peisongdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `weishengshiming` varchar(200) DEFAULT NULL COMMENT '卫生室名',
  `goumaishuliang` int(11) DEFAULT NULL COMMENT '购买数量',
  `yaopinjiage` int(11) DEFAULT NULL COMMENT '药品价格',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `gongyingshangzhanghao` varchar(200) DEFAULT NULL COMMENT '供应商账号',
  `xiaoshoudaili` varchar(200) DEFAULT NULL COMMENT '销售代理',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617852058667 DEFAULT CHARSET=utf8 COMMENT='配送订单';

/*Data for the table `peisongdingdan` */

insert  into `peisongdingdan`(`id`,`addtime`,`yaopinmingcheng`,`yaopintupian`,`weishengshiming`,`goumaishuliang`,`yaopinjiage`,`jine`,`gongyingshangzhanghao`,`xiaoshoudaili`,`lianxidianhua`,`sfsh`,`shhf`) values (71,'2021-04-08 10:53:15','药品名称1','http://localhost:8080/ssmpev4c/upload/peisongdingdan_yaopintupian1.jpg','卫生室名1',1,1,1,'供应商账号1','销售代理1','联系电话1','是',''),(72,'2021-04-08 10:53:15','药品名称2','http://localhost:8080/ssmpev4c/upload/peisongdingdan_yaopintupian2.jpg','卫生室名2',2,2,2,'供应商账号2','销售代理2','联系电话2','是',''),(73,'2021-04-08 10:53:15','药品名称3','http://localhost:8080/ssmpev4c/upload/peisongdingdan_yaopintupian3.jpg','卫生室名3',3,3,3,'供应商账号3','销售代理3','联系电话3','是',''),(74,'2021-04-08 10:53:15','药品名称4','http://localhost:8080/ssmpev4c/upload/peisongdingdan_yaopintupian4.jpg','卫生室名4',4,4,4,'供应商账号4','销售代理4','联系电话4','是',''),(75,'2021-04-08 10:53:15','药品名称5','http://localhost:8080/ssmpev4c/upload/peisongdingdan_yaopintupian5.jpg','卫生室名5',5,5,5,'供应商账号5','销售代理5','联系电话5','是',''),(76,'2021-04-08 10:53:15','药品名称6','http://localhost:8080/ssmpev4c/upload/peisongdingdan_yaopintupian6.jpg','卫生室名6',6,6,6,'供应商账号6','销售代理6','联系电话6','是',''),(1617850848828,'2021-04-08 11:00:48','小菊花','http://localhost:8080/ssmpev4c/upload/1617850762508.jpg','卫生室名1',10,50,500,'药品供应商1','销售代理1','020-89819991','是','111'),(1617852058666,'2021-04-08 11:20:58','999皮炎平','http://localhost:8080/ssmpev4c/upload/1617851956632.jpg','88卫生室',20,55,1100,'9','郝经理','000-11111111','是','11');

/*Table structure for table `quyuxinxi` */

DROP TABLE IF EXISTS `quyuxinxi`;

CREATE TABLE `quyuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `quyuming` varchar(200) DEFAULT NULL COMMENT '区域名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617851477061 DEFAULT CHARSET=utf8 COMMENT='区域信息';

/*Data for the table `quyuxinxi` */

insert  into `quyuxinxi`(`id`,`addtime`,`quyuming`) values (91,'2021-04-08 10:53:15','区域名1'),(92,'2021-04-08 10:53:15','区域名2'),(93,'2021-04-08 10:53:15','区域名3'),(94,'2021-04-08 10:53:15','区域名4'),(95,'2021-04-08 10:53:15','区域名5'),(96,'2021-04-08 10:53:15','县区'),(1617851477060,'2021-04-08 11:11:16','11县');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ewaky3srf9oqujxzlrn5w4fxga2wxyxs','2021-04-08 10:55:04','2021-04-08 12:05:32'),(2,11,'卫生局1','weishengju','卫生局','cs63gm7kfic724xeebeneje1m44gz3z2','2021-04-08 10:56:25','2021-04-08 12:21:25'),(3,21,'卫生院1','weishengyuan','卫生院','33gneluaq24h1jb07hnpajv0xy5wve71','2021-04-08 10:57:14','2021-04-08 11:57:14'),(4,31,'卫生室1','weishengshi','卫生室','zwdapddyw6zw983d10b1upo9i6n6wm5i','2021-04-08 10:58:27','2021-04-08 12:00:58'),(5,41,'药品供应商1','yaopingongyingshang','药品供应商','091btoh2e9tbgzq73j1nxjyc834mey6j','2021-04-08 11:00:23','2021-04-08 12:00:24'),(6,1617851502030,'5','weishengju','卫生局','7t0ikbz0fvoc3wj0h9y5w8cyiewt1bba','2021-04-08 11:11:47','2021-04-08 12:11:48'),(7,1617851642826,'6','weishengyuan','卫生院','k1iyy8wthys1hwuavdqtsj2uj52dconi','2021-04-08 11:14:07','2021-04-08 12:14:08'),(8,1617851843890,'8','weishengshi','卫生室','kduetxbb4ymiffvsxbp6drmuqo87fmi5','2021-04-08 11:17:34','2021-04-08 12:21:59'),(9,1617851987424,'9','yaopingongyingshang','药品供应商','2lu0ldzcnwegdcig368ruzonw7sqg71o','2021-04-08 11:19:52','2021-04-08 12:21:41'),(10,1617851314515,'2','weishengyuan','卫生院','7sjfkvjp7rmo7uccc69lzy3syfcab05p','2021-04-08 11:20:21','2021-04-08 12:21:12');

/*Table structure for table `tuihuodingdan` */

DROP TABLE IF EXISTS `tuihuodingdan`;

CREATE TABLE `tuihuodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `goumaishuliang` int(11) DEFAULT NULL COMMENT '购买数量',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `tuihuoriqi` date DEFAULT NULL COMMENT '退货日期',
  `weishengshizhanghao` varchar(200) DEFAULT NULL COMMENT '卫生室账号',
  `fuzerenxingming` varchar(200) DEFAULT NULL COMMENT '负责人姓名',
  `weishengshiming` varchar(200) DEFAULT NULL COMMENT '卫生室名',
  `suoshuquyu` varchar(200) DEFAULT NULL COMMENT '所属区域',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617852139916 DEFAULT CHARSET=utf8 COMMENT='退货订单';

/*Data for the table `tuihuodingdan` */

insert  into `tuihuodingdan`(`id`,`addtime`,`yaopinmingcheng`,`yaopintupian`,`goumaishuliang`,`jine`,`tuihuoriqi`,`weishengshizhanghao`,`fuzerenxingming`,`weishengshiming`,`suoshuquyu`,`lianxidianhua`) values (101,'2021-04-08 10:53:15','药品名称1','http://localhost:8080/ssmpev4c/upload/tuihuodingdan_yaopintupian1.jpg',1,1,'2021-04-08','卫生室账号1','负责人姓名1','卫生室名1','所属区域1','联系电话1'),(102,'2021-04-08 10:53:15','药品名称2','http://localhost:8080/ssmpev4c/upload/tuihuodingdan_yaopintupian2.jpg',2,2,'2021-04-08','卫生室账号2','负责人姓名2','卫生室名2','所属区域2','联系电话2'),(103,'2021-04-08 10:53:15','药品名称3','http://localhost:8080/ssmpev4c/upload/tuihuodingdan_yaopintupian3.jpg',3,3,'2021-04-08','卫生室账号3','负责人姓名3','卫生室名3','所属区域3','联系电话3'),(104,'2021-04-08 10:53:15','药品名称4','http://localhost:8080/ssmpev4c/upload/tuihuodingdan_yaopintupian4.jpg',4,4,'2021-04-08','卫生室账号4','负责人姓名4','卫生室名4','所属区域4','联系电话4'),(105,'2021-04-08 10:53:15','药品名称5','http://localhost:8080/ssmpev4c/upload/tuihuodingdan_yaopintupian5.jpg',5,5,'2021-04-08','卫生室账号5','负责人姓名5','卫生室名5','所属区域5','联系电话5'),(106,'2021-04-08 10:53:15','药品名称6','http://localhost:8080/ssmpev4c/upload/tuihuodingdan_yaopintupian6.jpg',6,6,'2021-04-08','卫生室账号6','负责人姓名6','卫生室名6','所属区域6','联系电话6'),(1617850807496,'2021-04-08 11:00:06','药品名称6','http://localhost:8080/ssmpev4c/upload/peisongdingdan_yaopintupian6.jpg',6,6,'2021-03-30','卫生室1','负责人姓名1','卫生室名1','所属区域1','020-89819991'),(1617852139915,'2021-04-08 11:22:19','999皮炎平','http://localhost:8080/ssmpev4c/upload/1617851956632.jpg',20,1100,'2021-05-13','8','8','88卫生室','县区','000-11111111');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-08 10:53:15');

/*Table structure for table `weishengju` */

DROP TABLE IF EXISTS `weishengju`;

CREATE TABLE `weishengju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weishengjuzhanghao` varchar(200) NOT NULL COMMENT '卫生局账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fuzerenxingming` varchar(200) NOT NULL COMMENT '负责人姓名',
  `guanxiaquyu` varchar(200) DEFAULT NULL COMMENT '管辖区域',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weishengjuzhanghao` (`weishengjuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617851502031 DEFAULT CHARSET=utf8 COMMENT='卫生局';

/*Data for the table `weishengju` */

insert  into `weishengju`(`id`,`addtime`,`weishengjuzhanghao`,`mima`,`fuzerenxingming`,`guanxiaquyu`,`lianxidianhua`,`youxiang`,`zhaopian`) values (11,'2021-04-08 10:53:15','卫生局1','123456','负责人姓名1','管辖区域1','020-89819991','773890001@qq.com','http://localhost:8080/ssmpev4c/upload/weishengju_zhaopian1.jpg'),(12,'2021-04-08 10:53:15','卫生局2','123456','负责人姓名2','管辖区域2','020-89819992','773890002@qq.com','http://localhost:8080/ssmpev4c/upload/weishengju_zhaopian2.jpg'),(13,'2021-04-08 10:53:15','卫生局3','123456','负责人姓名3','管辖区域3','020-89819993','773890003@qq.com','http://localhost:8080/ssmpev4c/upload/weishengju_zhaopian3.jpg'),(14,'2021-04-08 10:53:15','卫生局4','123456','负责人姓名4','管辖区域4','020-89819994','773890004@qq.com','http://localhost:8080/ssmpev4c/upload/weishengju_zhaopian4.jpg'),(15,'2021-04-08 10:53:15','卫生局5','123456','负责人姓名5','管辖区域5','020-89819995','773890005@qq.com','http://localhost:8080/ssmpev4c/upload/weishengju_zhaopian5.jpg'),(16,'2021-04-08 10:53:15','卫生局6','123456','负责人姓名6','管辖区域6','020-89819996','773890006@qq.com','http://localhost:8080/ssmpev4c/upload/weishengju_zhaopian6.jpg'),(1617851270672,'2021-04-08 11:07:50','1','1','1','1','000-11111111','12@qq.com','http://localhost:8080/ssmpev4c/upload/1617851269125.jpg'),(1617851502030,'2021-04-08 11:11:42','5','5','5','22市','000-11111111','12@qq.com','http://localhost:8080/ssmpev4c/upload/1617851513766.jpg');

/*Table structure for table `weishengshi` */

DROP TABLE IF EXISTS `weishengshi`;

CREATE TABLE `weishengshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weishengshizhanghao` varchar(200) NOT NULL COMMENT '卫生室账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fuzerenxingming` varchar(200) NOT NULL COMMENT '负责人姓名',
  `weishengshiming` varchar(200) DEFAULT NULL COMMENT '卫生室名',
  `suoshuquyu` varchar(200) DEFAULT NULL COMMENT '所属区域',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weishengshizhanghao` (`weishengshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617851843891 DEFAULT CHARSET=utf8 COMMENT='卫生室';

/*Data for the table `weishengshi` */

insert  into `weishengshi`(`id`,`addtime`,`weishengshizhanghao`,`mima`,`fuzerenxingming`,`weishengshiming`,`suoshuquyu`,`lianxidianhua`,`youxiang`,`zhaopian`) values (31,'2021-04-08 10:53:15','卫生室1','123456','负责人姓名1','卫生室名1','所属区域1','020-89819991','773890001@qq.com','http://localhost:8080/ssmpev4c/upload/weishengshi_zhaopian1.jpg'),(32,'2021-04-08 10:53:15','卫生室2','123456','负责人姓名2','卫生室名2','所属区域2','020-89819992','773890002@qq.com','http://localhost:8080/ssmpev4c/upload/weishengshi_zhaopian2.jpg'),(33,'2021-04-08 10:53:15','卫生室3','123456','负责人姓名3','卫生室名3','所属区域3','020-89819993','773890003@qq.com','http://localhost:8080/ssmpev4c/upload/weishengshi_zhaopian3.jpg'),(34,'2021-04-08 10:53:15','卫生室4','123456','负责人姓名4','卫生室名4','所属区域4','020-89819994','773890004@qq.com','http://localhost:8080/ssmpev4c/upload/weishengshi_zhaopian4.jpg'),(35,'2021-04-08 10:53:15','卫生室5','123456','负责人姓名5','卫生室名5','所属区域5','020-89819995','773890005@qq.com','http://localhost:8080/ssmpev4c/upload/weishengshi_zhaopian5.jpg'),(36,'2021-04-08 10:53:15','卫生室6','123456','负责人姓名6','卫生室名6','区域名5','020-89819996','773890006@qq.com','http://localhost:8080/ssmpev4c/upload/weishengshi_zhaopian6.jpg'),(1617851345535,'2021-04-08 11:09:05','3','3','3','爱玛卫生所','','000-11111111','123@qq.com','http://localhost:8080/ssmpev4c/upload/1617851343856.jpg'),(1617851843890,'2021-04-08 11:17:23','8','8','8','88卫生室','县区','000-11111111','8@qq.com','http://localhost:8080/ssmpev4c/upload/1617851863831.jpg');

/*Table structure for table `weishengyuan` */

DROP TABLE IF EXISTS `weishengyuan`;

CREATE TABLE `weishengyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weishengyuanzhanghao` varchar(200) NOT NULL COMMENT '卫生院账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fuzerenxingming` varchar(200) NOT NULL COMMENT '负责人姓名',
  `guanxiaquyu` varchar(200) DEFAULT NULL COMMENT '管辖区域',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weishengyuanzhanghao` (`weishengyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617851642827 DEFAULT CHARSET=utf8 COMMENT='卫生院';

/*Data for the table `weishengyuan` */

insert  into `weishengyuan`(`id`,`addtime`,`weishengyuanzhanghao`,`mima`,`fuzerenxingming`,`guanxiaquyu`,`lianxidianhua`,`youxiang`,`zhaopian`) values (21,'2021-04-08 10:53:15','卫生院1','123456','负责人姓名1','区域名2','020-89819991','773890001@qq.com','http://localhost:8080/ssmpev4c/upload/weishengyuan_zhaopian1.jpg'),(22,'2021-04-08 10:53:15','卫生院2','123456','负责人姓名2','管辖区域2','020-89819992','773890002@qq.com','http://localhost:8080/ssmpev4c/upload/weishengyuan_zhaopian2.jpg'),(23,'2021-04-08 10:53:15','卫生院3','123456','负责人姓名3','管辖区域3','020-89819993','773890003@qq.com','http://localhost:8080/ssmpev4c/upload/weishengyuan_zhaopian3.jpg'),(24,'2021-04-08 10:53:15','卫生院4','123456','负责人姓名4','管辖区域4','020-89819994','773890004@qq.com','http://localhost:8080/ssmpev4c/upload/weishengyuan_zhaopian4.jpg'),(25,'2021-04-08 10:53:15','卫生院5','123456','负责人姓名5','管辖区域5','020-89819995','773890005@qq.com','http://localhost:8080/ssmpev4c/upload/weishengyuan_zhaopian5.jpg'),(26,'2021-04-08 10:53:15','卫生院6','123456','负责人姓名6','管辖区域6','020-89819996','773890006@qq.com','http://localhost:8080/ssmpev4c/upload/weishengyuan_zhaopian6.jpg'),(1617851314515,'2021-04-08 11:08:34','2','2','2','区域名2','000-11111111','123@qq.com','http://localhost:8080/ssmpev4c/upload/1617851307334.jpg'),(1617851642826,'2021-04-08 11:14:02','6','6','6','11县','000-11111111','6@qq.com','http://localhost:8080/ssmpev4c/upload/1617851658636.jpg');

/*Table structure for table `yaopingongyingshang` */

DROP TABLE IF EXISTS `yaopingongyingshang`;

CREATE TABLE `yaopingongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangzhanghao` varchar(200) NOT NULL COMMENT '供应商账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xiaoshoudaili` varchar(200) NOT NULL COMMENT '销售代理',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyingshangzhanghao` (`gongyingshangzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617851987425 DEFAULT CHARSET=utf8 COMMENT='药品供应商';

/*Data for the table `yaopingongyingshang` */

insert  into `yaopingongyingshang`(`id`,`addtime`,`gongyingshangzhanghao`,`mima`,`xiaoshoudaili`,`lianxidianhua`,`youxiang`,`zhaopian`) values (41,'2021-04-08 10:53:15','药品供应商1','123456','销售代理1','020-89819991','773890001@qq.com','http://localhost:8080/ssmpev4c/upload/yaopingongyingshang_zhaopian1.jpg'),(42,'2021-04-08 10:53:15','药品供应商2','123456','销售代理2','020-89819992','773890002@qq.com','http://localhost:8080/ssmpev4c/upload/yaopingongyingshang_zhaopian2.jpg'),(43,'2021-04-08 10:53:15','药品供应商3','123456','销售代理3','020-89819993','773890003@qq.com','http://localhost:8080/ssmpev4c/upload/yaopingongyingshang_zhaopian3.jpg'),(44,'2021-04-08 10:53:15','药品供应商4','123456','销售代理4','020-89819994','773890004@qq.com','http://localhost:8080/ssmpev4c/upload/yaopingongyingshang_zhaopian4.jpg'),(45,'2021-04-08 10:53:15','药品供应商5','123456','销售代理5','020-89819995','773890005@qq.com','http://localhost:8080/ssmpev4c/upload/yaopingongyingshang_zhaopian5.jpg'),(46,'2021-04-08 10:53:15','药品供应商6','123456','张经理','020-89819996','773890006@qq.com','http://localhost:8080/ssmpev4c/upload/yaopingongyingshang_zhaopian6.jpg'),(1617851385627,'2021-04-08 11:09:45','123','123','王经理','000-11111111','123@qq.com','http://localhost:8080/ssmpev4c/upload/1617851384126.jpg'),(1617851987424,'2021-04-08 11:19:47','9','9','郝经理','000-11111111','9@qq.com','http://localhost:8080/ssmpev4c/upload/1617851997366.jpg');

/*Table structure for table `yaopinxinxi` */

DROP TABLE IF EXISTS `yaopinxinxi`;

CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `jixing` varchar(200) DEFAULT NULL COMMENT '剂型',
  `picihao` varchar(200) DEFAULT NULL COMMENT '批次号',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `yaopinshuoming` longtext COMMENT '药品说明',
  `shengchandanwei` varchar(200) DEFAULT NULL COMMENT '生产单位',
  `shengchandizhi` varchar(200) DEFAULT NULL COMMENT '生产地址',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `yaopinkucun` int(11) DEFAULT NULL COMMENT '药品库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617851907623 DEFAULT CHARSET=utf8 COMMENT='药品信息';

/*Data for the table `yaopinxinxi` */

insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`yaopinshuoming`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`baozhiqi`,`yaopinkucun`) values (51,'2021-04-08 10:53:15','药品编号1','药品名称1','颗粒','批次号1','2021-04-08','药品说明1','生产单位1','生产地址1','http://localhost:8080/ssmpev4c/upload/yaopinxinxi_yaopintupian1.jpg','保质期1',1),(52,'2021-04-08 10:53:15','药品编号2','药品名称2','颗粒','批次号2','2021-04-08','药品说明2','生产单位2','生产地址2','http://localhost:8080/ssmpev4c/upload/yaopinxinxi_yaopintupian2.jpg','保质期2',2),(53,'2021-04-08 10:53:15','药品编号3','药品名称3','颗粒','批次号3','2021-04-08','药品说明3','生产单位3','生产地址3','http://localhost:8080/ssmpev4c/upload/yaopinxinxi_yaopintupian3.jpg','保质期3',3),(54,'2021-04-08 10:53:15','药品编号4','药品名称4','颗粒','批次号4','2021-04-08','药品说明4','生产单位4','生产地址4','http://localhost:8080/ssmpev4c/upload/yaopinxinxi_yaopintupian4.jpg','保质期4',4),(55,'2021-04-08 10:53:15','药品编号5','药品名称5','颗粒','批次号5','2021-04-08','药品说明5','生产单位5','生产地址5','http://localhost:8080/ssmpev4c/upload/yaopinxinxi_yaopintupian5.jpg','保质期5',5),(56,'2021-04-08 10:53:15','药品编号6','后悔药','颗粒','批次号6','2021-04-08','<p>药品说明6</p>','生产单位6','生产地址6','http://localhost:8080/ssmpev4c/upload/yaopinxinxi_yaopintupian6.jpg','保质期6',6),(1617850746432,'2021-04-08 10:59:05','1617850715325','123','丸剂','123','2021-04-06','<p>123</p>','123','123','http://localhost:8080/ssmpev4c/upload/1617850741726.jpg','123',213),(1617851442166,'2021-04-08 11:10:41','1617851413121','小柴人','注射剂','123','2021-04-07','<p>123</p>','123','梅州','http://localhost:8080/ssmpev4c/upload/1617851434255.jpg','2年',120),(1617851907622,'2021-04-08 11:18:26','1617851875519','999感冒灵','颗粒','123','2021-04-16','<p>123123123</p>','999公司','666','http://localhost:8080/ssmpev4c/upload/1617851892991.jpg','300年',75);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
