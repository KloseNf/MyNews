/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_alz
Target Host: localhost
Target Database: db_alz
Date: 2012-11-09 10:14:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_catelog
-- ----------------------------
CREATE TABLE `t_catelog` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL auto_increment,
  `catelog_id` int(11) default NULL,
  `bianhao` varchar(255) default NULL,
  `mingcheng` varchar(500) default NULL,
  `jieshao` varchar(8000) default NULL,
  `fujian` varchar(255) default NULL,
  `shichangjia` int(11) default NULL,  
  `tejia` int(11) default NULL,
  `shifoutejia` varchar(255) default NULL,
  `kucun` int(11) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
CREATE TABLE `t_order` (
  `id` varchar(255) NOT NULL,
  `bianhao` varchar(255) default NULL,
  `shijian` varchar(255) default NULL,
  `zhuangtai` varchar(255) default NULL,
  `songhuodizhi` varchar(255) default NULL,
  `fukuanfangshi` varchar(255) default NULL,
  `jine` int(11) default NULL,
  `user_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_orderitem
-- ----------------------------
CREATE TABLE `t_orderitem` (
  `id` varchar(255) NOT NULL,
  `order_id` varchar(255) default NULL,
  `goods_id` int(11) default NULL,
  `goods_quantity` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE `t_user` (
  `id` varchar(255) NOT NULL default '',
  `loginname` varchar(255) default NULL,
  `loginpw` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_admin` VALUES ('0001', 'admin', 'admin');
INSERT INTO `t_catelog` VALUES ('1', 'Food', 'no');
INSERT INTO `t_catelog` VALUES ('2', 'Drink', 'no');
INSERT INTO `t_goods` VALUES ('1', '1', '0001', '7Days Bread', 'Strawberry flavor', '/upload/7daysbread_st.jpg', '2', '1', 'no', '100', 'no');
INSERT INTO `t_goods` VALUES ('2', '1', '0002', '7Days Bread', 'Butter flavor', '/upload/7daysbread_bu.jpg', '2', '1', 'no', '100', 'no');
INSERT INTO `t_goods` VALUES ('3', '1', '0003', 'Lay\'s potato chips', 'Egg yolk flavor', '/upload/lays_ey.jpg', '5', '3', 'no', '100', 'no');
INSERT INTO `t_goods` VALUES ('4', '1', '0004', 'Lay\'s potato chips', 'Classic flavor', '/upload/lays_cl.jpg', '5', '3', 'no', '100', 'no');
INSERT INTO `t_goods` VALUES ('5', '2', '0005', 'CocaCola', 'Soft drink', '/upload/cocacola.jpg', '3', '2', 'no', '100', 'no');
INSERT INTO `t_goods` VALUES ('6', '2', '0006', 'Sprite', 'Soft drink', '/upload/sprite.jpg', '3', '2', 'no', '100', 'no');
INSERT INTO `t_goods` VALUES ('7', '2', '0007', 'Evian Water', 'Mineral water', '/upload/evian.jpg', '5', '3', 'no', '100', 'no');
INSERT INTO `t_goods` VALUES ('8', '2', '0008', 'Minute Maid', 'Orange flavor', '/upload/minutemaid.jpg', '4', '2', 'no', '100', 'no');
INSERT INTO `t_user` VALUES ('1352272340904', 'klose', '000000', 'fn', 'no');