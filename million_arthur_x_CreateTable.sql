/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : million_arthur_x

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2018-08-15 17:00:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account_role_list
-- ----------------------------
DROP TABLE IF EXISTS `account_role_list`;
CREATE TABLE `account_role_list` (
  `role_name` int(11) DEFAULT NULL,
  `role_uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `role_name` varchar(64) NOT NULL DEFAULT 'arthur',
  `area_id` tinyint(4) NOT NULL DEFAULT '1',
  `face_icon` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(48) NOT NULL DEFAULT 'default_user',
  `channel_name` varchar(64) NOT NULL DEFAULT 'default_channel',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uniq_rolename` (`role_name`) USING BTREE,
  KEY `idx_username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
