/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiyanghong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiyanghong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiyanghong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiyanghong/upload/1642732280676.jpg'),(2,'轮播图2','http://localhost:8080/xiyanghong/upload/1642732293404.png');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-01-20 14:43:29'),(2,'gonggao_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-01-20 14:43:29'),(3,'sex_types','性别类型名称',1,'男',NULL,NULL,'2022-01-20 14:43:30'),(4,'sex_types','性别类型名称',2,'女',NULL,NULL,'2022-01-20 14:43:30'),(5,'shiyong_types','是否使用',1,'禁用',NULL,NULL,'2022-01-20 14:43:30'),(6,'shiyong_types','是否使用',2,'使用',NULL,NULL,'2022-01-20 14:43:30'),(7,'danyuan_types','单元号类型名称',1,'101',NULL,NULL,'2022-01-20 14:43:30'),(8,'danyuan_types','单元号类型名称',2,'102',NULL,NULL,'2022-01-20 14:43:30'),(9,'danyuan_types','单元号类型名称',3,'103',NULL,NULL,'2022-01-20 14:43:30'),(10,'danyuan_types','单元号类型名称',4,'104',NULL,NULL,'2022-01-20 14:43:30'),(11,'danyuan_types','单元号类型名称',5,'111',NULL,NULL,'2022-01-20 14:43:30'),(12,'danyuan_types','单元号类型名称',6,'112',NULL,NULL,'2022-01-20 14:43:30'),(13,'danyuan_types','单元号类型名称',7,'113',NULL,NULL,'2022-01-20 14:43:30'),(14,'danyuan_types','单元号类型名称',8,'114',NULL,NULL,'2022-01-20 14:43:30'),(15,'jiaofei_types','是否缴费',1,'未缴',NULL,NULL,'2022-01-20 14:43:30'),(16,'jiaofei_types','是否缴费',2,'已缴',NULL,NULL,'2022-01-20 14:43:30'),(17,'liuyan_types','留言类型名称',1,'留言类型1',NULL,NULL,'2022-01-20 14:43:30'),(18,'liuyan_types','留言类型名称',2,'留言类型2',NULL,NULL,'2022-01-20 14:43:30'),(19,'liuyan_types','留言类型名称',3,'留言类型3',NULL,NULL,'2022-01-20 14:43:30'),(20,'liuyan_types','留言类型名称',4,'留言类型4',NULL,NULL,'2022-01-20 14:43:30'),(21,'weixiu_types','维修类型名称',1,'维修类型1',NULL,NULL,'2022-01-20 14:43:30'),(22,'weixiu_types','维修类型名称',2,'维修类型2',NULL,NULL,'2022-01-20 14:43:30'),(23,'weixiu_types','维修类型名称',3,'维修类型3',NULL,NULL,'2022-01-20 14:43:30'),(24,'weixiu_types','维修类型名称',4,'维修类型4',NULL,NULL,'2022-01-20 14:43:30'),(25,'shifou_types','是否维修',1,'未维修',NULL,NULL,'2022-01-20 14:43:30'),(26,'shifou_types','是否维修',2,'已维修',NULL,NULL,'2022-01-20 14:43:30'),(27,'weixiu_types','维修类型名称',5,'维修类型5',NULL,'','2022-01-21 15:09:19');

/*Table structure for table `fangke` */

DROP TABLE IF EXISTS `fangke`;

CREATE TABLE `fangke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `danyuan_types` int(11) DEFAULT NULL COMMENT '单元 Search111 ',
  `fangke_name` varchar(200) DEFAULT NULL COMMENT '访客姓名 Search111 ',
  `fangke_phone` varchar(200) DEFAULT NULL COMMENT '访客手机号 Search111 ',
  `fangke_id_number` varchar(200) DEFAULT NULL COMMENT '访客身份证号 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `fangke_photo` varchar(200) DEFAULT NULL COMMENT '健康码',
  `fangke_content` text COMMENT '来访事由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '来访时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='访客';

/*Data for the table `fangke` */

insert  into `fangke`(`id`,`danyuan_types`,`fangke_name`,`fangke_phone`,`fangke_id_number`,`sex_types`,`fangke_photo`,`fangke_content`,`insert_time`,`create_time`) values (1,5,'张1','17703786901','410224199610232001',1,'http://localhost:8080/xiyanghong/upload/1642748983934.jpg','<p>看朋友</p>','2022-01-21 15:09:50','2022-01-21 15:09:50');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/xiyanghong/upload/1642734073396.jpg',1,'2022-01-20 14:43:29','<p>公告详情1111</p>','2022-01-20 14:43:29'),(2,'公告内容2','http://localhost:8080/xiyanghong/upload/1642749004164.jpg',1,'2022-01-21 15:10:12','<p>公告内容2的详情</p>','2022-01-21 15:10:12');

/*Table structure for table `jiaofei` */

DROP TABLE IF EXISTS `jiaofei`;

CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `danyuan_types` int(11) DEFAULT NULL COMMENT '单元 Search111 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '缴费名称',
  `jiaofei_time` varchar(200) DEFAULT NULL COMMENT '缴费月份 Search111 ',
  `wuye_money` decimal(10,2) DEFAULT NULL COMMENT '物业费',
  `fangzu_money` decimal(10,2) DEFAULT NULL COMMENT '房租费',
  `zong_money` decimal(10,2) DEFAULT NULL COMMENT '总费用',
  `jiaofei_types` int(11) DEFAULT NULL COMMENT '是否缴费 Search111 ',
  `jiaofei_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='缴费';

/*Data for the table `jiaofei` */

insert  into `jiaofei`(`id`,`danyuan_types`,`shangpin_name`,`jiaofei_time`,`wuye_money`,`fangzu_money`,`zong_money`,`jiaofei_types`,`jiaofei_content`,`insert_time`,`create_time`) values (1,1,'101单元2022年1月缴费','2022-01','300.00','400.00','700.00',1,'<p>无</p>','2022-01-20 16:18:17','2022-01-20 16:18:17'),(2,8,'114单元2022年1月缴费','2022-01','200.00','400.00','600.00',1,'<p>备注1</p>','2022-01-20 16:18:17','2022-01-20 16:18:17'),(3,7,'113号2022年1月缴费','2022-01','400.00','900.00','1300.00',2,'<p>无</p>','2022-01-21 15:10:58','2022-01-21 15:10:58');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuke_id` int(11) DEFAULT NULL COMMENT '租客',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`zuke_id`,`liuyan_name`,`liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,'标题1','省政协委员，市政协主席、党组书记王加培表示，代省长许昆林所作的政府工作报告全面客观地总结了去年取得的成绩，部署了今年的重点工作和目标任务，为我省下一步的发展指明了方向。报告政治站位高、把握大势准。报告提到盛虹炼化一体化项目、连徐高铁、花果山机场、连云港入选“十四五”首批国家物流枢纽、中哈物流合作基地建设步伐加快、连云港新亚欧陆海联运通道建设取得新成效等，听了之后深受鼓舞。我们一定要深刻领会，将其转化为积极履职尽责的强大动力。市政协将在市委的坚强领导下，围绕报告提出的各项任务要求，坚持建言资政和凝聚共识双向发力，努力发挥专门协商机构作用，奋力书写港城新时代“后发先至”的政协答卷省政协委员，市人大常委会常务副主任、党组副书记王东升表示，代省长许昆林所作的政府工作报告，站位高远、求真务实，是一个凝聚共识、鼓舞斗志、催人奋进的好报告。报告全面客观地总结了2021年全省经济社会发展所取得的成绩，实事求是地指出了当前面临的困难和问题，目标任务具体明确，更加坚定了我们在高质量发展道路上阔步前行的信心。政府工作报告用一组组含金量十足的数据传递出江苏这个经济大省的活力，更坚定了全省上下奋力谱写“强富美高”新江苏现代化建设新篇章的信心和决心。他将把报告精神带回去，认真学习贯彻落实，为建设“强富美高”新江苏贡献连云港力量',NULL,'2022-01-21 09:18:36',NULL,'2022-01-21 09:18:36'),(2,1,'t','省政协委员，市人大常委会常务副主任、党组副书记王东升表示，代省长许昆林所作的政府工作报告，站位高远、求真务实，是一个凝聚共识、鼓舞斗志、催人奋进的好报告。报告全面客观地总结了2021年全省经济社会发展所取得的成绩，实事求是地指出了当前面临的困难和问题，目标任务具体明确，更加坚定了我们在高质量发展道路上阔步前行的信心。政府工作报告用一组组含金量十足的数据传递出江苏这个经济大省的活力，更坚定了全省上下奋力谱写“强富美高”新江苏现代化建设新篇章的信心和决心。他将把报告精神带回去，认真学习贯彻落实，为建设“强富美高”新江苏贡献连云港力量省政协委员，市人大常委会常务副主任、党组副书记王东升表示，代省长许昆林所作的政府工作报告，站位高远、求真务实，是一个凝聚共识、鼓舞斗志、催人奋进的好报告。报告全面客观地总结了2021年全省经济社会发展所取得的成绩，实事求是地指出了当前面临的困难和问题，目标任务具体明确，更加坚定了我们在高质量发展道路上阔步前行的信心。政府工作报告用一组组含金量十足的数据传递出江苏这个经济大省的活力，更坚定了全省上下奋力谱写“强富美高”新江苏现代化建设新篇章的信心和决心。他将把报告精神带回去，认真学习贯彻落实，为建设“强富美高”新江苏贡献连云港力量省政协委员，市人大常委会常务副主任、党组副书记王东升表示，代省长许昆林所作的政府工作报告，站位高远、求真务实，是一个凝聚共识、鼓舞斗志、催人奋进的好报告。报告全面客观地总结了2021年全省经济社会发展所取得的成绩，实事求是地指出了当前面临的困难和问题，目标任务具体明确，更加坚定了我们在高质量发展道路上阔步前行的信心。政府工作报告用一组组含金量十足的数据传递出江苏这个经济大省的活力，更坚定了全省上下奋力谱写“强富美高”新江苏现代化建设新篇章的信心和决心。他将把报告精神带回去，认真学习贯彻落实，为建设“强富美高”新江苏贡献连云港力量','省政协委员、市政协副主席、民进连云港市委主委徐善明表示，省政府工作报告务实，重点突出，亮点纷呈，听了后令人振奋。报告总结成绩实实在在，分析问题、研判形势明明白白，安排部署工作妥妥当当。今后他将在围绕中心，服务大局中展现新作为，努力助推高质量发展。同时，充分发挥界别优势，找准和全局工作的结合点，更加有针对性地聚焦教育、文化等领域，为推动教育强市、文化强市建设贡献更多力量','2022-01-21 10:01:18','2022-01-21 10:03:25','2022-01-20 17:07:11'),(3,1,'t','888','省政协委员、市政协副主席、民进连云港市委主委徐善明表示，省政府工作报告务实，重点突出，亮点纷呈，听了后令人振奋。报告总结成绩实实在在，分析问题、研判形势明明白白，安排部署工作妥妥当当。今后他将在围绕中心，服务大局中展现新作为，努力助推高质量发展。同时，充分发挥界别优势，找准和全局工作的结合点，更加有针对性地聚焦教育、文化等领域，为推动教育强市、文化强市建设贡献更多力量','2022-01-21 10:01:18','2022-01-21 10:03:25','2022-01-20 17:07:11'),(4,1,'刘安333','阿斯蒂芬阿萨德奥迪\n萨达阿萨德\n萨达 ',NULL,'2022-01-21 14:48:55',NULL,'2022-01-21 14:48:55'),(5,2,'留言3','留言内容33333','回复内容333333','2022-01-21 15:06:16','2022-01-21 15:24:15','2022-01-21 15:05:28');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','jjx0z3h19w4m8rck8m1eol2vai1r6q0k','2022-01-20 15:23:58','2022-01-21 16:29:06'),(2,1,'a1','zuke','租客','wyvmzfrpujamy8vqexfp5dyxkkfcrfih','2022-01-20 17:27:32','2022-01-21 16:28:38'),(3,2,'a2','zuke','租客','vbkj5674zp3n5178wej6vvw74l1gw62c','2022-01-21 15:05:54','2022-01-21 16:35:55');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `weixiu` */

DROP TABLE IF EXISTS `weixiu`;

CREATE TABLE `weixiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuke_id` int(11) DEFAULT NULL COMMENT '租客',
  `weixiu_name` varchar(200) DEFAULT NULL COMMENT '维修名称 Search111 ',
  `weixiu_types` int(11) DEFAULT NULL COMMENT '维修类型 Search111 ',
  `weixiu_content` text COMMENT '申请详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `shifou_types` int(11) DEFAULT NULL COMMENT '是否维修 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='维修';

/*Data for the table `weixiu` */

insert  into `weixiu`(`id`,`zuke_id`,`weixiu_name`,`weixiu_types`,`weixiu_content`,`insert_time`,`shifou_types`,`create_time`) values (1,1,'屋子里的电灯坏了',1,'<p>我是101室的，电灯坏了，麻烦过来维修下</p>','2022-01-21 10:40:11',2,'2022-01-20 17:07:11'),(3,2,'维修2',5,'<p>维修2的内容详情</p>','2022-01-21 15:38:27',1,'2022-01-21 15:38:27');

/*Table structure for table `xingcheng` */

DROP TABLE IF EXISTS `xingcheng`;

CREATE TABLE `xingcheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuke_id` int(11) DEFAULT NULL COMMENT '用户',
  `xingcheng_photo` varchar(200) DEFAULT NULL COMMENT '健康码 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '行程轨迹 Search111  ',
  `xingcheng_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '登记时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='行程轨迹';

/*Data for the table `xingcheng` */

insert  into `xingcheng`(`id`,`zuke_id`,`xingcheng_photo`,`gonggao_name`,`xingcheng_content`,`insert_time`,`create_time`) values (1,2,'http://localhost:8080/xiyanghong/upload/1642750716059.jpg','去了地点3','<p>备注无</p>','2022-01-21 15:38:48','2022-01-21 15:38:48');

/*Table structure for table `zuke` */

DROP TABLE IF EXISTS `zuke`;

CREATE TABLE `zuke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zuke_name` varchar(200) DEFAULT NULL COMMENT '租客姓名 Search111 ',
  `zuke_phone` varchar(200) DEFAULT NULL COMMENT '租客手机号 Search111 ',
  `zuke_id_number` varchar(200) DEFAULT NULL COMMENT '租客身份证号 Search111 ',
  `zuke_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `zuke_photo` varchar(200) DEFAULT NULL COMMENT '租客头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `danyuan_types` int(11) NOT NULL COMMENT '单元号 Search111 ',
  `shiyong_types` int(11) DEFAULT NULL COMMENT '使用',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='租客';

/*Data for the table `zuke` */

insert  into `zuke`(`id`,`username`,`password`,`zuke_name`,`zuke_phone`,`zuke_id_number`,`zuke_email`,`zuke_photo`,`sex_types`,`danyuan_types`,`shiyong_types`,`new_money`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','11@qq.com','http://localhost:8080/xiyanghong/upload/1642670872532.jpg',2,8,2,'0.00','2022-01-20 17:07:11'),(2,'a2','123456','张1','17703786902','410224199610232002','22@qq.com','http://localhost:8080/xiyanghong/upload/1642748792951.jpg',1,7,2,'2700.00','2022-01-21 15:05:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
