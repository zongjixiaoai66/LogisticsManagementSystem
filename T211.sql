/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t211`;
CREATE DATABASE IF NOT EXISTS `t211` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t211`;

DROP TABLE IF EXISTS `cheliang`;
CREATE TABLE IF NOT EXISTS `cheliang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_uuid_number` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称 Search111',
  `cheliang_types` int DEFAULT NULL COMMENT '车辆类型 Search111',
  `cheliang_status_types` int DEFAULT NULL COMMENT '车辆状态 Search111',
  `cheliang_content` text COMMENT '车辆详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='车辆信息';

DELETE FROM `cheliang`;
INSERT INTO `cheliang` (`id`, `cheliang_uuid_number`, `cheliang_name`, `cheliang_types`, `cheliang_status_types`, `cheliang_content`, `create_time`) VALUES
	(1, '164852373103911', '车辆名称1', 1, 2, '车辆详情1', '2022-03-29 03:15:31'),
	(2, '164852373103912', '车辆名称2', 2, 2, '车辆详情2', '2022-03-29 03:15:31'),
	(3, '164852373103914', '车辆名称3', 1, 1, '车辆详情3', '2022-03-29 03:15:31'),
	(4, '164852373103911', '车辆名称4', 3, 2, '车辆详情4', '2022-03-29 03:15:31'),
	(5, '16485237310397', '车辆名称5', 3, 1, '<p>车辆详情5</p>', '2022-03-29 03:15:31');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(23, 'cheliang_types', '车辆类型', 1, '车辆类型1', NULL, NULL, '2022-03-26 03:56:30'),
	(24, 'cheliang_types', '车辆类型', 2, '车辆类型2', NULL, NULL, '2022-03-26 03:56:30'),
	(25, 'cheliang_types', '车辆类型', 3, '车辆类型3', NULL, NULL, '2022-03-26 03:56:30'),
	(26, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-26 03:56:30'),
	(27, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-26 03:56:30'),
	(28, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-26 03:56:30'),
	(29, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-26 03:56:30'),
	(30, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-26 03:56:30'),
	(31, 'wuliu_types', '物流状态', 1, '未开始', NULL, NULL, NULL),
	(32, 'wuliu_types', '物流状态', 2, '出库', NULL, NULL, NULL),
	(33, 'wuliu_types', '物流状态', 3, '入库', NULL, NULL, NULL),
	(34, 'cheliang_status_types', '车辆状态', 1, '空闲', NULL, NULL, NULL),
	(35, 'cheliang_status_types', '车辆状态', 2, '运输中', NULL, NULL, NULL),
	(36, 'yundan_status_types', '运单状态', 1, '未完成', NULL, NULL, NULL),
	(37, 'yundan_status_types', '运单状态', 2, '已完成', NULL, NULL, NULL),
	(38, 'wuliu_types', '物流状态', 4, '运输中', NULL, NULL, NULL),
	(39, 'wuliu_types', '物流状态', 5, '已完成', NULL, NULL, NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/wuliuguanliwu/upload/news1.jpg', '2022-03-29 03:15:31', '公告详情1', '2022-03-29 03:15:31'),
	(2, '公告标题2', 2, 'http://localhost:8080/wuliuguanliwu/upload/news2.jpg', '2022-03-29 03:15:31', '公告详情2', '2022-03-29 03:15:31'),
	(3, '公告标题3', 1, 'http://localhost:8080/wuliuguanliwu/upload/news3.jpg', '2022-03-29 03:15:31', '公告详情3', '2022-03-29 03:15:31'),
	(4, '公告标题4', 3, 'http://localhost:8080/wuliuguanliwu/upload/news4.jpg', '2022-03-29 03:15:31', '公告详情4', '2022-03-29 03:15:31'),
	(5, '公告标题5', 3, 'http://localhost:8080/wuliuguanliwu/upload/news5.jpg', '2022-03-29 03:15:31', '公告详情5', '2022-03-29 03:15:31');

DROP TABLE IF EXISTS `siji`;
CREATE TABLE IF NOT EXISTS `siji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `siji_name` varchar(200) DEFAULT NULL COMMENT '司机姓名 Search111 ',
  `siji_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `siji_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='司机';

DELETE FROM `siji`;
INSERT INTO `siji` (`id`, `siji_name`, `siji_photo`, `sex_types`, `siji_phone`, `create_time`) VALUES
	(1, '司机姓名1', 'http://localhost:8080/wuliuguanliwu/upload/yonghu1.jpg', 1, '17703786901', '2022-03-29 03:15:31'),
	(2, '司机姓名2', 'http://localhost:8080/wuliuguanliwu/upload/yonghu2.jpg', 2, '17703786902', '2022-03-29 03:15:31'),
	(3, '司机姓名3', 'http://localhost:8080/wuliuguanliwu/upload/yonghu3.jpg', 2, '17703786903', '2022-03-29 03:15:31');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'hcp1y5ee33nqxkrvltxffljfc7z2kzve', '2022-03-29 03:12:29', '2024-06-09 09:13:44'),
	(2, 1, 'a1', 'yonghu', '用户', 'r5s6xcepekcir100dghy1nil4rr8krin', '2022-03-29 03:24:39', '2024-06-09 09:14:40');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `wuliu`;
CREATE TABLE IF NOT EXISTS `wuliu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuliu_uuid_number` varchar(200) DEFAULT NULL COMMENT '物流单号 Search111',
  `cheliang_id` int DEFAULT NULL COMMENT '车辆',
  `yundan_id` int DEFAULT NULL COMMENT '运单',
  `siji_id` int DEFAULT NULL COMMENT '负责司机',
  `wuliu_types` int DEFAULT NULL COMMENT '物流状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='物流信息';

DELETE FROM `wuliu`;
INSERT INTO `wuliu` (`id`, `wuliu_uuid_number`, `cheliang_id`, `yundan_id`, `siji_id`, `wuliu_types`, `create_time`) VALUES
	(1, '164852373106014', 1, 1, 1, 3, '2022-03-29 03:15:31'),
	(2, '16485237310604', 2, 2, 2, 4, '2022-03-29 03:15:31'),
	(3, '164852373106014', 3, 3, 3, 4, '2022-03-29 03:15:31'),
	(4, '164852373106015', 4, 4, 1, 4, '2022-03-29 03:15:31'),
	(5, '164852373106015', 5, 5, 2, 1, '2022-03-29 03:15:31'),
	(6, '1648524755154', 5, 7, 2, 4, '2022-03-29 03:32:44');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/wuliuguanliwu/upload/yonghu1.jpg', 2, '17703786901', '410224199610232001', '1@qq.com', 1, '2022-03-29 03:15:31'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/wuliuguanliwu/upload/yonghu2.jpg', 2, '17703786902', '410224199610232002', '2@qq.com', 1, '2022-03-29 03:15:31'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/wuliuguanliwu/upload/yonghu3.jpg', 2, '17703786903', '410224199610232003', '3@qq.com', 1, '2022-03-29 03:15:31');

DROP TABLE IF EXISTS `yundan`;
CREATE TABLE IF NOT EXISTS `yundan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yundan_address` varchar(200) DEFAULT NULL COMMENT '送货地点 Search111',
  `yundan_name` varchar(200) DEFAULT NULL COMMENT '收件人 Search111',
  `yundan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yundan_status_types` int DEFAULT NULL COMMENT '运单状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='运单信息';

DELETE FROM `yundan`;
INSERT INTO `yundan` (`id`, `yonghu_id`, `yundan_address`, `yundan_name`, `yundan_phone`, `yundan_status_types`, `create_time`) VALUES
	(1, 1, '送货地点1', '收件人1', '17703786901', 2, '2022-03-29 03:15:31'),
	(2, 2, '送货地点2', '收件人2', '17703786902', 1, '2022-03-29 03:15:31'),
	(3, 1, '送货地点3', '收件人3', '17703786903', 2, '2022-03-29 03:15:31'),
	(4, 3, '送货地点4', '收件人4', '17703786904', 2, '2022-03-29 03:15:31'),
	(5, 1, '送货地点5', '收件人5', '17703786905', 2, '2022-03-29 03:15:31'),
	(7, 1, '用户能发运单信息', '123', '13344115121', 1, '2022-03-29 03:32:05');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
