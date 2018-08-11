/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : million_arthur_x

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2018-08-11 18:55:12
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
  `channel_name` varchar(64) NOT NULL DEFAULT 'default_channel',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `device_id` varchar(128) NOT NULL DEFAULT 'default_device',
  `register_id` varchar(32) NOT NULL DEFAULT '',
  `role_uids` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uniq_username_channelname` (`username`,`channel_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `role_name` varchar(64) NOT NULL DEFAULT 'arthur',
  `group_id` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(48) NOT NULL DEFAULT 'default_user',
  `channel_name` varchar(64) NOT NULL DEFAULT 'default_channel',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uniq_rolename` (`role_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
