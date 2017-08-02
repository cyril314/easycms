/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.24-log : Database - easycms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `cfg` */

CREATE TABLE `cfg` (
  `c` int(11) DEFAULT NULL,
  `c1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c3` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  KEY `c` (`c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cfg` */

insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c2','文本-100-2','50',2);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c1','文本-100-1','50',1);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c16','文本-n*-16','n',16);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c4','文本-100-4','50',4);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c5','文本-200-5','100',5);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c6','文本-200-6','100',6);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c7','文本-200-7','100',7);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c8','文本-200-8','100',8);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c9','文本-500-9','250',9);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c10','文本-500-10','250',10);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c11','文本-500-11','250',11);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c12','文本-500-12','250',12);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c13','文本-2000-13','1000',13);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c14','文本-2000-14','1000',14);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c15','文本-n*-15','n',15);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (1,'c3','文本-100-3','50',3);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (2,'data_1','表1',NULL,1);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (3,'text','文本',NULL,1);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (3,'number','数字',NULL,2);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (3,'textarea','文本域',NULL,3);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (3,'date','日期',NULL,4);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (3,'editor','富文本',NULL,6);
insert  into `cfg`(`c`,`c1`,`c2`,`c3`,`seq`) values (3,'combo','下拉列表',NULL,5);

/*Table structure for table `column` */

CREATE TABLE `column` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `model_id` bigint(20) NOT NULL COMMENT '模型id',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `type` varchar(10) NOT NULL COMMENT '类型',
  `seq` int(11) DEFAULT '0' COMMENT '序号',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `width` int(11) DEFAULT NULL COMMENT '列表显示时宽带',
  `allow_blank` char(1) DEFAULT NULL COMMENT '允许为空',
  `list_show` char(1) DEFAULT NULL COMMENT '列表显示',
  `sql` varchar(500) DEFAULT NULL COMMENT '下拉对应sql',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `mapping_data` varchar(20) NOT NULL COMMENT '映射字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

/*Data for the table `column` */

insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (1,1,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (2,1,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (3,2,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (4,2,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (5,3,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (6,3,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (7,4,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (8,4,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (9,5,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (10,5,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (11,6,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (12,6,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (13,7,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (14,7,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (15,8,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (16,8,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (17,9,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (18,9,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (19,10,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (20,10,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (21,11,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (22,11,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (23,12,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (24,12,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (25,13,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (26,13,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (27,14,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (28,14,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (29,15,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (30,15,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (31,16,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (32,16,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (33,17,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (34,17,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (35,18,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (36,18,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (37,19,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (38,19,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (39,20,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (40,20,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (41,21,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (42,21,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (43,22,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (44,22,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (45,23,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (46,23,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (47,24,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (48,24,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (49,25,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (50,25,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (51,26,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (52,26,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (53,27,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (54,27,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (55,28,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (56,28,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (57,29,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (58,29,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (59,30,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (60,30,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (61,31,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (62,31,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (63,32,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (64,32,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (65,33,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (66,33,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (67,34,'名称','text',1,'标题',200,'0','1',NULL,0,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (69,35,'名称','text',1,'标题',200,'0','1',NULL,0,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (70,35,'品牌','text',2,'',100,'1','1',NULL,0,'c2');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (71,34,'图片','text',2,'',100,'0','1',NULL,0,'c2');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (72,34,'简介1','text',3,'',100,'1','1',NULL,0,'c5');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (73,34,'简介2','text',4,'',100,'1','1',NULL,0,'c6');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (74,34,'简介3','text',5,'',100,'1','1',NULL,0,'c7');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (75,34,'链接','text',6,'',100,'0','0',NULL,0,'c9');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (76,34,'价格','text',7,'',100,'0','1',NULL,0,'c3');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (77,35,'价格','text',3,'',50,'0','1',NULL,0,'c3');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (78,35,'css','text',4,'',80,'0','1',NULL,0,'c4');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (79,35,'链接','text',5,'',100,'1','1',NULL,0,'c5');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (80,44,'名称','text',1,'标题',200,'0','1',NULL,0,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (81,44,'介绍1','text',2,'',200,'1','1',NULL,0,'c5');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (82,37,'名称','text',1,'标题',200,'0','1',NULL,0,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (83,37,'规格','text',2,'',100,'1','1',NULL,0,'c2');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (84,38,'名称','text',1,'',200,'0','1',NULL,0,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (88,40,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (89,40,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (96,44,'介绍2','text',3,'',100,'1','1',NULL,0,'c6');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (97,44,'现价','text',3,'',100,'1','1',NULL,0,'c2');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (98,44,'原价','text',5,'',60,'1','1',NULL,0,'c3');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (99,44,'库存','text',6,'',100,'1','1',NULL,0,'c4');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (100,44,'图片','text',7,'',100,'1','0',NULL,0,'c7');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (101,37,'价格','text',3,'',60,'0','1',NULL,0,'c3');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (102,37,'图片','text',4,'',100,'0','1',NULL,0,'c5');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (103,37,'链接','text',5,'',100,'1','1',NULL,0,'c6');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (104,38,'链接','text',5,'',100,'1','1',NULL,0,'c6');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (105,38,'规格','text',2,'',100,'1','1',NULL,0,'c2');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (106,38,'价格','text',3,'',60,'0','1',NULL,0,'c3');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (107,38,'图片','text',4,'',100,'0','1',NULL,0,'c5');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (109,39,'规格','text',2,'',100,'1','1',NULL,0,'c2');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (110,39,'价格','text',3,'',60,'0','1',NULL,0,'c3');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (111,39,'图片','text',4,'',100,'0','1',NULL,0,'c5');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (112,39,'链接','text',5,'',100,'1','1',NULL,0,'c6');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (113,39,'名称','text',1,'标题',200,'0','1',NULL,0,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (114,44,'标题','text',1,'标题',200,'0','1',NULL,1,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (115,44,'内容','editor',5,'',200,'1','0',NULL,1,'c15');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (116,45,'名称','text',1,'标题',200,'0','1',NULL,0,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (120,45,'图片','text',5,'',100,'0','1',NULL,0,'c5');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (121,45,'链接','text',6,'',100,'1','1',NULL,0,'c6');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (122,41,'名称','text',1,'标题',200,'0','1',NULL,0,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (123,41,'规格','text',2,'',100,'1','1',NULL,0,'c2');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (124,41,'价格','text',3,'',60,'0','1',NULL,0,'c3');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (125,41,'图片','text',4,'',100,'0','1',NULL,0,'c5');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (126,41,'链接','text',5,'',100,'1','1',NULL,0,'c6');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (127,42,'名称','text',1,'标题',200,'0','1',NULL,0,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (128,42,'规格','text',2,'',100,'1','1',NULL,0,'c2');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (129,42,'价格','text',3,'',60,'0','1',NULL,0,'c3');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (130,42,'图片','text',4,'',100,'0','1',NULL,0,'c5');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (131,42,'链接','text',5,'',100,'1','1',NULL,0,'c6');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (132,43,'名称','text',1,'标题',200,'0','1',NULL,0,'c1');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (133,43,'规格','text',2,'',100,'1','1',NULL,0,'c2');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (134,43,'价格','text',3,'',60,'0','1',NULL,0,'c3');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (135,43,'图片','text',4,'',100,'0','1',NULL,0,'c5');
insert  into `column`(`id`,`model_id`,`name`,`type`,`seq`,`remark`,`width`,`allow_blank`,`list_show`,`sql`,`status`,`mapping_data`) values (136,43,'链接','text',5,'',100,'1','1',NULL,0,'c6');

/*Table structure for table `data_0` */

CREATE TABLE `data_0` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `c1` varchar(100) DEFAULT NULL,
  `c2` varchar(100) DEFAULT NULL,
  `c3` varchar(100) DEFAULT NULL,
  `c4` varchar(100) DEFAULT NULL,
  `c5` varchar(200) DEFAULT NULL,
  `c6` varchar(200) DEFAULT NULL,
  `c7` varchar(200) DEFAULT NULL,
  `c8` varchar(200) DEFAULT NULL,
  `c9` varchar(500) DEFAULT NULL,
  `c10` varchar(500) DEFAULT NULL,
  `c11` varchar(500) DEFAULT NULL,
  `c12` varchar(500) DEFAULT NULL,
  `c13` text,
  `c14` text,
  `c15` longtext,
  `c16` longtext,
  `model_id` varchar(200) NOT NULL COMMENT '对应模型id',
  `state` int(11) DEFAULT NULL COMMENT '状态，1已发布，0未发布',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(20) DEFAULT NULL COMMENT '创建人，账号',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `data_0` */

insert  into `data_0`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (1,'samsung galaxy三星盖乐世','assets/images/home-header1.jpg','500',NULL,'New Arrivals','Only from $520 ','iPhone 7 dramatically improves the most important ',NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'34',1,'2017-07-30 13:14:57','admin','2017-07-30 13:34:34','admin');
insert  into `data_0`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (2,'new collection','assets/images/home-header2.jpg','20',NULL,'Phantom','Only from 920 ','iPhone 7 dramatically improves the most important ',NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'34',1,'2017-07-30 13:16:05','admin','2017-08-01 21:09:27','admin');
insert  into `data_0`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (3,'Divoom brands','assets/images/home-header3.jpg','10',NULL,'Voombox 2.0','Only from $11169 ','iPhone 7 dramatically improves the most important ',NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'34',1,'2017-07-30 13:16:48','admin','2017-08-01 21:12:19','admin');
insert  into `data_0`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (4,'Headphone','beat brand','150','banner-img banner-img3','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'35',1,'2017-07-30 14:25:42','admin',NULL,NULL);
insert  into `data_0`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (5,'Smartwatch','sony brand','220','banner-img banner-img2','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'35',1,'2017-07-30 14:26:38','admin',NULL,NULL);
insert  into `data_0`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (6,'Tablet mini 3','Samsung','700','banner-img','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'35',1,'2017-07-30 14:27:07','admin',NULL,NULL);
insert  into `data_0`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (7,'Macbook, Laptop','290.00','390.00','充足','Apple Macbook Retina 23’’','Duis autem vel eum iriure dolor in hendrerit in vu','assets/images/wk-deal-img.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'44',1,'2017-07-30 18:36:45','admin',NULL,NULL);

/*Table structure for table `data_1` */

CREATE TABLE `data_1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `c1` varchar(100) DEFAULT NULL,
  `c2` varchar(100) DEFAULT NULL,
  `c3` varchar(100) DEFAULT NULL,
  `c4` varchar(100) DEFAULT NULL,
  `c5` varchar(200) DEFAULT NULL,
  `c6` varchar(200) DEFAULT NULL,
  `c7` varchar(200) DEFAULT NULL,
  `c8` varchar(200) DEFAULT NULL,
  `c9` varchar(500) DEFAULT NULL,
  `c10` varchar(500) DEFAULT NULL,
  `c11` varchar(500) DEFAULT NULL,
  `c12` varchar(500) DEFAULT NULL,
  `c13` text,
  `c14` text,
  `c15` longtext,
  `c16` longtext,
  `model_id` varchar(200) NOT NULL COMMENT '对应模型id',
  `state` int(11) DEFAULT NULL COMMENT '状态，1已发布，0未发布',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(20) DEFAULT NULL COMMENT '创建人，账号',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;

/*Data for the table `data_1` */

insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (213,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img6.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'37',1,'2017-07-30 20:04:48','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (214,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img6.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'37',1,'2017-07-30 20:05:16','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (215,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img6.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'37',1,'2017-07-30 20:05:19','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (216,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img6.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'37',1,'2017-07-30 20:05:21','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (217,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img6.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'37',1,'2017-07-30 20:05:23','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (218,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img6.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'37',1,'2017-07-30 20:05:24','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (219,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38',1,'2017-07-30 20:07:07','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (220,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38',1,'2017-07-30 20:07:19','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (221,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38',1,'2017-07-30 20:07:21','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (222,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38',1,'2017-07-30 20:07:23','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (223,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38',1,'2017-07-30 20:07:25','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (224,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38',1,'2017-07-30 20:07:27','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (225,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38',1,'2017-07-30 20:07:31','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (226,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38',1,'2017-07-30 20:07:33','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (227,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'39',1,'2017-07-30 20:08:23','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (228,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'39',1,'2017-07-30 20:08:30','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (229,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'39',1,'2017-07-30 20:08:32','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (230,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'39',1,'2017-07-30 20:08:34','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (231,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'39',1,'2017-07-30 20:08:35','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (232,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'39',1,'2017-07-30 20:08:37','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (233,'Macbook, Laptop','Apple Macbook Retina 23’','290.00',NULL,'assets/images/new-arrivals-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'39',1,'2017-07-30 20:08:38','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (238,'Macbook, Laptop','Apple Macbook Retina 23’','290',NULL,'assets/images/elec-img1.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'41',1,'2017-07-31 20:52:33','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (239,'Macbook, Laptop','Apple Macbook Retina 23’','290',NULL,'assets/images/elec-img1.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'41',1,'2017-07-31 20:52:34','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (240,'Macbook, Laptop','Apple Macbook Retina 23’','290',NULL,'assets/images/elec-img1.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'41',1,'2017-07-31 20:52:36','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (241,'Macbook, Laptop','Apple Macbook Retina 23’','290',NULL,'assets/images/elec-img1.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'41',1,'2017-07-31 20:52:39','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (246,'Macbook, Laptop',' Apple Macbook Retina 23’ ','100',NULL,'assets/images/elec-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'42',1,'2017-07-31 20:54:05','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (247,'Macbook, Laptop',' Apple Macbook Retina 23’ ','100',NULL,'assets/images/elec-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'42',1,'2017-07-31 20:54:07','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (248,'Macbook, Laptop',' Apple Macbook Retina 23’ ','100',NULL,'assets/images/elec-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'42',1,'2017-07-31 20:54:09','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (249,'Macbook, Laptop',' Apple Macbook Retina 23’ ','100',NULL,'assets/images/elec-img3.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'42',1,'2017-07-31 20:54:11','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (254,'Macbook, Laptop',' Apple Macbook Retina 23’ ','122',NULL,'assets/images/elec-img2.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'43',1,'2017-07-31 20:55:09','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (255,'Macbook, Laptop',' Apple Macbook Retina 23’ ','122',NULL,'assets/images/elec-img2.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'43',1,'2017-07-31 20:55:11','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (256,'Macbook, Laptop',' Apple Macbook Retina 23’ ','122',NULL,'assets/images/elec-img2.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'43',1,'2017-07-31 20:55:13','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (257,'Macbook, Laptop',' Apple Macbook Retina 23’ ','122',NULL,'assets/images/elec-img2.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'43',1,'2017-07-31 20:55:15','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (258,'图1',NULL,NULL,NULL,'assets/images/add-banner.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45',1,'2017-07-31 20:56:34','admin',NULL,NULL);
insert  into `data_1`(`id`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`c7`,`c8`,`c9`,`c10`,`c11`,`c12`,`c13`,`c14`,`c15`,`c16`,`model_id`,`state`,`create_time`,`create_by`,`update_time`,`update_by`) values (259,'图2',NULL,NULL,NULL,'assets/images/add-banner.jpg','#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45',1,'2017-07-31 20:56:48','admin',NULL,NULL);

/*Table structure for table `model` */

CREATE TABLE `model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `remark` varchar(400) DEFAULT NULL,
  `leaf` bit(1) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `nav` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `model` */

insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (1,'首页','data_0','首页各种栏目配置','\0',10,0,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (2,'主题市场','data_0','商品主题分类','\0',20,0,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (3,'电子 & 数码产品 ','data_1','','\0',10,2,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (4,'手机 & 配件','data_1','','\0',20,2,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (5,'家居 & 厨卫','data_1','','\0',30,2,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (6,'流行 & 服饰 ','data_1','','\0',40,2,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (7,'运动 & 户外','data_1','','\0',50,2,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (8,'珠宝 & 手表','data_1','','\0',60,2,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (9,'健康 & 美妆','data_1','','\0',70,2,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (10,'玩具 & 爱好','data_1','','\0',80,2,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (11,'书籍 & 办公 ','data_1','','\0',90,2,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (12,'照相机 & 摄像机','data_1','','\0',100,2,'1');
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (13,'笔记本','data_1','','\0',10,3,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (14,'Kindle','data_1','','\0',20,3,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (15,'iPhone','data_1','','\0',10,4,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (16,'安卓','data_1','','\0',20,4,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (17,'电脑桌','data_1','','\0',10,5,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (18,'电脑椅','data_1','','\0',20,5,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (19,'男女装','data_1','','\0',10,6,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (20,'男女鞋','data_1','','\0',20,6,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (21,'自行车','data_1','','\0',10,7,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (22,'跑步机','data_1','','\0',20,7,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (23,'项链','data_1','','\0',10,8,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (24,'卡西欧','data_1','','\0',20,8,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (25,'减肥','data_1','','\0',10,9,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (26,'面膜','data_1','','\0',20,9,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (27,'公仔','data_1','','\0',10,10,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (28,'高达','data_1','','\0',20,10,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (29,'Java必读书','data_1','','\0',10,11,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (30,'架构师','data_1','','\0',20,11,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (31,'尼康','data_1','','\0',10,12,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (32,'佳能','data_1','','\0',20,12,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (33,'索尼','data_1','','\0',20,12,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (34,'轮播图','data_0','','\0',10,1,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (35,'中间3商品','data_0','','\0',20,1,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (36,'本月热卖','data_0','','\0',30,1,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (37,'新上架','data_1','','\0',10,36,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (38,'特色','data_1','','\0',20,36,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (39,'经典','data_1','','\0',30,36,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (40,'热门商品','data_1','','\0',40,1,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (41,'手机','data_1','','\0',10,40,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (42,'便携式电脑','data_1','','\0',20,40,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (43,'台式电脑','data_1','','\0',30,40,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (44,'左侧抢购','data_0','','\0',5,36,NULL);
insert  into `model`(`id`,`name`,`table_name`,`remark`,`leaf`,`seq`,`parent_id`,`nav`) values (45,'左侧轮播','data_1','','\0',5,40,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;