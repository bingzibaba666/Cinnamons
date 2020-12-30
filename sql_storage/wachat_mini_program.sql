/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : wachat_mini_program

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-12-31 00:04:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `imgs` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', 'Android????????', '0', '/imgs/android-down.jpg', '/imgs/android-down.jpg,/imgs/android-down.jpg', 'Android????????', '48.00');
INSERT INTO `commodity` VALUES ('2', 'Docker???????', '0', '/imgs/docker-down.jpg', '/imgs/docker-down.jpg,/imgs/docker-down.jpg', 'Docker???????', '60.00');
INSERT INTO `commodity` VALUES ('3', 'Hadoop??????????', '0', '/imgs/hadoop-down.jpg', '/imgs/android-down.jpg,/imgs/hadoop-down.jpg', 'Hadoop??????????', '75.00');
INSERT INTO `commodity` VALUES ('4', '????????', '0', '/imgs/ycc-down.jpg', '/imgs/ycc-down.jpg,/imgs/ycc-down.jpg', '????????', '40.00');
INSERT INTO `commodity` VALUES ('5', '???????SDN??????', '0', '/imgs/sdn-down.jpg', '/imgs/sdn-down.jpg,/imgs/sdn-down.jpg', '???????SDN??????', '56.00');
INSERT INTO `commodity` VALUES ('6', 'JavaWeb?????', '0', '/imgs/javaweb-down.jpg', '/imgs/javaweb-down.jpg,/imgs/javaweb-down.jpg', 'JavaWeb?????', '92.00');
INSERT INTO `commodity` VALUES ('7', '?????????', '0', '/imgs/yjszhywgl-down.jpg', '/imgs/yjszhywgl-down.jpg,/imgs/yjszhywgl-down.jpg', '?????????', '51.00');
INSERT INTO `commodity` VALUES ('8', '????APP????', '0', '/imgs/videoapp.jpg', '/imgs/videoapp.jpg,/imgs/videoapp.jpg', '????APP????', '45.00');
INSERT INTO `commodity` VALUES ('9', '?????????', '0', '/imgs/wechat-down.jpg', '/imgs/wechat-down.jpg,/imgs/wechat-down.jpg', '?????????', '26.00');
INSERT INTO `commodity` VALUES ('10', '???????????', '0', '/imgs/rlsb.jpg', '/imgs/rlsb.jpg,/imgs/rlsb.jpg', '???????????', '29.00');
INSERT INTO `commodity` VALUES ('11', '?????????', '0', '/imgs/dsjfx.jpg', '/imgs/dsjfx.jpg,/imgs/dsjfx.jpg', '?????????', '120.00');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commodity_id` bigint(20) DEFAULT NULL,
  `create_data` datetime DEFAULT NULL,
  `deliv` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `ordernumber` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `recharge_record`;
CREATE TABLE `recharge_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdate` datetime DEFAULT NULL,
  `ordernumber` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of recharge_record
-- ----------------------------

-- ----------------------------
-- Table structure for serve
-- ----------------------------
DROP TABLE IF EXISTS `serve`;
CREATE TABLE `serve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `d_time` varchar(255) DEFAULT NULL,
  `h_time` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `serve_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of serve
-- ----------------------------

-- ----------------------------
-- Table structure for serve_type
-- ----------------------------
DROP TABLE IF EXISTS `serve_type`;
CREATE TABLE `serve_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of serve_type
-- ----------------------------
INSERT INTO `serve_type` VALUES ('1', '????');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` varchar(255) DEFAULT NULL,
  `cardnumber` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pasword` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `shippingaddresscompany` varchar(255) DEFAULT NULL,
  `shippingaddresshome` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '90000', '00000000000', '1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1234567822', '?????', '?????', 'admin');
