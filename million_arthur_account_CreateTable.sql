/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : million_arthur_account

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2018-08-15 17:00:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(48) NOT NULL DEFAULT 'default_user',
  `password` varchar(32) NOT NULL DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `device_id` varchar(128) NOT NULL DEFAULT 'default_device',
  `register_id` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uniq_username_channelname` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for account_role_list
-- ----------------------------
DROP TABLE IF EXISTS `account_role_list`;
CREATE TABLE `account_role_list` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(48) NOT NULL,
  `area_id` int(11) NOT NULL,
  `role_uid` int(11) NOT NULL DEFAULT '0',
  `role_name` varchar(64) NOT NULL DEFAULT '',
  `channel_name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uniq_role_uid` (`role_uid`) USING BTREE,
  KEY `idx_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
