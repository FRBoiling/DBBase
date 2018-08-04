/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : gamedb_hero

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2018-05-10 18:22:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(48) NOT NULL DEFAULT '',
  `channel_name` varchar(64) NOT NULL DEFAULT 'default',
  `device_id` varchar(128) NOT NULL DEFAULT '',
  `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` char(32) NOT NULL DEFAULT '',
  `char_uids` varchar(64) NOT NULL DEFAULT '',
  `register_id` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `id` (`id`,`channel_name`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for account_character_list
-- ----------------------------
DROP TABLE IF EXISTS `account_character_list`;
CREATE TABLE `account_character_list` (
  `accountName` varchar(128) NOT NULL DEFAULT '',
  `mainId` int(11) NOT NULL DEFAULT '0',
  `characterName` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for account_rebate
-- ----------------------------
DROP TABLE IF EXISTS `account_rebate`;
CREATE TABLE `account_rebate` (
  `account_id` int(11) unsigned NOT NULL,
  `state` int(11) DEFAULT '0',
  `time` datetime DEFAULT NULL,
  `not_find` int(11) DEFAULT '0',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activation_code_list
-- ----------------------------
DROP TABLE IF EXISTS `activation_code_list`;
CREATE TABLE `activation_code_list` (
  `code_string` varchar(30) NOT NULL,
  `use_pc` int(11) DEFAULT '0',
  PRIMARY KEY (`code_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activation_code_use
-- ----------------------------
DROP TABLE IF EXISTS `activation_code_use`;
CREATE TABLE `activation_code_use` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pc_uid` int(11) NOT NULL,
  `code_mode` int(11) DEFAULT NULL,
  `sub_code` varchar(11) CHARACTER SET latin1 COLLATE latin1_german1_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `pc_uid` (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_00
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_00`;
CREATE TABLE `activity_current_00` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_01
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_01`;
CREATE TABLE `activity_current_01` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_02
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_02`;
CREATE TABLE `activity_current_02` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_03
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_03`;
CREATE TABLE `activity_current_03` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_04
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_04`;
CREATE TABLE `activity_current_04` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_05
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_05`;
CREATE TABLE `activity_current_05` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_06
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_06`;
CREATE TABLE `activity_current_06` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_07
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_07`;
CREATE TABLE `activity_current_07` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_08
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_08`;
CREATE TABLE `activity_current_08` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_09
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_09`;
CREATE TABLE `activity_current_09` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_10
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_10`;
CREATE TABLE `activity_current_10` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_11
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_11`;
CREATE TABLE `activity_current_11` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_12
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_12`;
CREATE TABLE `activity_current_12` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_13
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_13`;
CREATE TABLE `activity_current_13` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_14
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_14`;
CREATE TABLE `activity_current_14` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_15
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_15`;
CREATE TABLE `activity_current_15` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_16
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_16`;
CREATE TABLE `activity_current_16` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_17
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_17`;
CREATE TABLE `activity_current_17` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_18
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_18`;
CREATE TABLE `activity_current_18` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for activity_current_19
-- ----------------------------
DROP TABLE IF EXISTS `activity_current_19`;
CREATE TABLE `activity_current_19` (
  `pc_uid` int(11) unsigned NOT NULL,
  `activity_id` int(11) NOT NULL,
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for alarm
-- ----------------------------
DROP TABLE IF EXISTS `alarm`;
CREATE TABLE `alarm` (
  `type` int(11) NOT NULL DEFAULT '0',
  `main` int(11) NOT NULL DEFAULT '0',
  `sub` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `time` datetime NOT NULL DEFAULT '2010-01-01 08:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `type` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET gbk NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for black_list
-- ----------------------------
DROP TABLE IF EXISTS `black_list`;
CREATE TABLE `black_list` (
  `ip` varchar(64) NOT NULL,
  `time` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for channel_task
-- ----------------------------
DROP TABLE IF EXISTS `channel_task`;
CREATE TABLE `channel_task` (
  `uid` int(11) unsigned NOT NULL,
  `tasks` varchar(512) NOT NULL DEFAULT '',
  `everyday` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for character_00
-- ----------------------------
DROP TABLE IF EXISTS `character_00`;
CREATE TABLE `character_00` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `LadderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_01
-- ----------------------------
DROP TABLE IF EXISTS `character_01`;
CREATE TABLE `character_01` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_02
-- ----------------------------
DROP TABLE IF EXISTS `character_02`;
CREATE TABLE `character_02` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_03
-- ----------------------------
DROP TABLE IF EXISTS `character_03`;
CREATE TABLE `character_03` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_04
-- ----------------------------
DROP TABLE IF EXISTS `character_04`;
CREATE TABLE `character_04` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_05
-- ----------------------------
DROP TABLE IF EXISTS `character_05`;
CREATE TABLE `character_05` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_06
-- ----------------------------
DROP TABLE IF EXISTS `character_06`;
CREATE TABLE `character_06` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_07
-- ----------------------------
DROP TABLE IF EXISTS `character_07`;
CREATE TABLE `character_07` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_08
-- ----------------------------
DROP TABLE IF EXISTS `character_08`;
CREATE TABLE `character_08` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_09
-- ----------------------------
DROP TABLE IF EXISTS `character_09`;
CREATE TABLE `character_09` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_10
-- ----------------------------
DROP TABLE IF EXISTS `character_10`;
CREATE TABLE `character_10` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_11
-- ----------------------------
DROP TABLE IF EXISTS `character_11`;
CREATE TABLE `character_11` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_12
-- ----------------------------
DROP TABLE IF EXISTS `character_12`;
CREATE TABLE `character_12` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_13
-- ----------------------------
DROP TABLE IF EXISTS `character_13`;
CREATE TABLE `character_13` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_14
-- ----------------------------
DROP TABLE IF EXISTS `character_14`;
CREATE TABLE `character_14` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_15
-- ----------------------------
DROP TABLE IF EXISTS `character_15`;
CREATE TABLE `character_15` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_16
-- ----------------------------
DROP TABLE IF EXISTS `character_16`;
CREATE TABLE `character_16` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_17
-- ----------------------------
DROP TABLE IF EXISTS `character_17`;
CREATE TABLE `character_17` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_18
-- ----------------------------
DROP TABLE IF EXISTS `character_18`;
CREATE TABLE `character_18` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_19
-- ----------------------------
DROP TABLE IF EXISTS `character_19`;
CREATE TABLE `character_19` (
  `uid` int(10) unsigned NOT NULL,
  `accountName` varchar(64) NOT NULL DEFAULT 'default_account_name',
  `channelName` varchar(64) NOT NULL DEFAULT 'default',
  `charName` varchar(64) NOT NULL,
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ladderLevel` smallint(2) DEFAULT '1',
  `mapId` int(10) unsigned NOT NULL DEFAULT '2',
  `posX` float NOT NULL DEFAULT '0.49',
  `posY` float NOT NULL DEFAULT '3.17',
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FaceIcon` int(11) NOT NULL DEFAULT '0',
  `ShowFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `InitWeaponModel` int(7) NOT NULL DEFAULT '0',
  `InitHeadModel` int(7) NOT NULL DEFAULT '0',
  `InitBodyModel` int(7) NOT NULL DEFAULT '0',
  `InitFaceModel` int(7) NOT NULL DEFAULT '320001',
  `InitBackModel` int(7) NOT NULL DEFAULT '340001',
  `FashionWeapon` int(7) NOT NULL DEFAULT '0',
  `FashionHead` int(7) NOT NULL DEFAULT '0',
  `FashionFace` int(7) NOT NULL DEFAULT '0',
  `FashionClothes` int(7) NOT NULL DEFAULT '0',
  `FashionBack` int(7) NOT NULL DEFAULT '0',
  `sex` tinyint(3) NOT NULL DEFAULT '1',
  `hp` int(10) NOT NULL DEFAULT '10000',
  `petId` int(11) NOT NULL DEFAULT '0',
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `main_line` int(11) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '1',
  `main` int(11) NOT NULL DEFAULT '1',
  `sourceMain` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeState` int(11) NOT NULL DEFAULT '0',
  `freezeTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `freezeReason` varchar(64) NOT NULL DEFAULT '',
  `lastRefreshTime` datetime NOT NULL,
  `gm` int(11) NOT NULL DEFAULT '0',
  `lastLevelUpTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `lastOfflineTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `receiveOfflineCount` int(11) NOT NULL DEFAULT '0',
  `offlineMinutes` int(11) NOT NULL DEFAULT '0',
  `changedName` smallint(6) NOT NULL DEFAULT '0',
  `silenceTime` datetime NOT NULL DEFAULT '2010-01-01 08:00:00',
  `silenceReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `charName` (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_name
-- ----------------------------
DROP TABLE IF EXISTS `character_name`;
CREATE TABLE `character_name` (
  `charName` varchar(64) NOT NULL DEFAULT '',
  `uid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_00
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_00`;
CREATE TABLE `character_resource_00` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_01
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_01`;
CREATE TABLE `character_resource_01` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_02
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_02`;
CREATE TABLE `character_resource_02` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_03
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_03`;
CREATE TABLE `character_resource_03` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_04
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_04`;
CREATE TABLE `character_resource_04` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_05
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_05`;
CREATE TABLE `character_resource_05` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_06
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_06`;
CREATE TABLE `character_resource_06` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_07
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_07`;
CREATE TABLE `character_resource_07` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_08
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_08`;
CREATE TABLE `character_resource_08` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_09
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_09`;
CREATE TABLE `character_resource_09` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_10
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_10`;
CREATE TABLE `character_resource_10` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_11
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_11`;
CREATE TABLE `character_resource_11` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_12
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_12`;
CREATE TABLE `character_resource_12` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_13
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_13`;
CREATE TABLE `character_resource_13` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_14
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_14`;
CREATE TABLE `character_resource_14` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_15
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_15`;
CREATE TABLE `character_resource_15` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_16
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_16`;
CREATE TABLE `character_resource_16` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_17
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_17`;
CREATE TABLE `character_resource_17` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_18
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_18`;
CREATE TABLE `character_resource_18` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for character_resource_19
-- ----------------------------
DROP TABLE IF EXISTS `character_resource_19`;
CREATE TABLE `character_resource_19` (
  `pc_uid` int(11) unsigned NOT NULL,
  `Exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Gold` int(11) unsigned NOT NULL DEFAULT '0',
  `Diamond` int(11) unsigned NOT NULL DEFAULT '0',
  `LadderScore` smallint(6) NOT NULL DEFAULT '0',
  `matchingValue1` tinyint(5) NOT NULL DEFAULT '0',
  `matchingValue2` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonRewardNum` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonLevel` tinyint(5) NOT NULL DEFAULT '0',
  `SeasonScore` smallint(6) NOT NULL DEFAULT '0',
  `LadderHistoryMaxScore` smallint(6) NOT NULL DEFAULT '0',
  `FishCoin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_00
-- ----------------------------
DROP TABLE IF EXISTS `chest_00`;
CREATE TABLE `chest_00` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_01
-- ----------------------------
DROP TABLE IF EXISTS `chest_01`;
CREATE TABLE `chest_01` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_02
-- ----------------------------
DROP TABLE IF EXISTS `chest_02`;
CREATE TABLE `chest_02` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_03
-- ----------------------------
DROP TABLE IF EXISTS `chest_03`;
CREATE TABLE `chest_03` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_04
-- ----------------------------
DROP TABLE IF EXISTS `chest_04`;
CREATE TABLE `chest_04` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_05
-- ----------------------------
DROP TABLE IF EXISTS `chest_05`;
CREATE TABLE `chest_05` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_06
-- ----------------------------
DROP TABLE IF EXISTS `chest_06`;
CREATE TABLE `chest_06` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_07
-- ----------------------------
DROP TABLE IF EXISTS `chest_07`;
CREATE TABLE `chest_07` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_08
-- ----------------------------
DROP TABLE IF EXISTS `chest_08`;
CREATE TABLE `chest_08` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_09
-- ----------------------------
DROP TABLE IF EXISTS `chest_09`;
CREATE TABLE `chest_09` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_10
-- ----------------------------
DROP TABLE IF EXISTS `chest_10`;
CREATE TABLE `chest_10` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_11
-- ----------------------------
DROP TABLE IF EXISTS `chest_11`;
CREATE TABLE `chest_11` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_12
-- ----------------------------
DROP TABLE IF EXISTS `chest_12`;
CREATE TABLE `chest_12` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_13
-- ----------------------------
DROP TABLE IF EXISTS `chest_13`;
CREATE TABLE `chest_13` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_14
-- ----------------------------
DROP TABLE IF EXISTS `chest_14`;
CREATE TABLE `chest_14` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_15
-- ----------------------------
DROP TABLE IF EXISTS `chest_15`;
CREATE TABLE `chest_15` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_16
-- ----------------------------
DROP TABLE IF EXISTS `chest_16`;
CREATE TABLE `chest_16` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_17
-- ----------------------------
DROP TABLE IF EXISTS `chest_17`;
CREATE TABLE `chest_17` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_18
-- ----------------------------
DROP TABLE IF EXISTS `chest_18`;
CREATE TABLE `chest_18` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chest_19
-- ----------------------------
DROP TABLE IF EXISTS `chest_19`;
CREATE TABLE `chest_19` (
  `uid` int(11) NOT NULL,
  `normalchest_0` varchar(25) DEFAULT '',
  `normalchest_1` varchar(25) DEFAULT '',
  `normalchest_2` varchar(25) DEFAULT '',
  `normalchest_3` varchar(25) DEFAULT '',
  `ladderchest` varchar(25) DEFAULT '',
  `freechest` varchar(25) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for db_update
-- ----------------------------
DROP TABLE IF EXISTS `db_update`;
CREATE TABLE `db_update` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `descript` varchar(1024) NOT NULL,
  `author` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_00
-- ----------------------------
DROP TABLE IF EXISTS `email_00`;
CREATE TABLE `email_00` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_01
-- ----------------------------
DROP TABLE IF EXISTS `email_01`;
CREATE TABLE `email_01` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_02
-- ----------------------------
DROP TABLE IF EXISTS `email_02`;
CREATE TABLE `email_02` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_03
-- ----------------------------
DROP TABLE IF EXISTS `email_03`;
CREATE TABLE `email_03` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_04
-- ----------------------------
DROP TABLE IF EXISTS `email_04`;
CREATE TABLE `email_04` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_05
-- ----------------------------
DROP TABLE IF EXISTS `email_05`;
CREATE TABLE `email_05` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_06
-- ----------------------------
DROP TABLE IF EXISTS `email_06`;
CREATE TABLE `email_06` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_07
-- ----------------------------
DROP TABLE IF EXISTS `email_07`;
CREATE TABLE `email_07` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_08
-- ----------------------------
DROP TABLE IF EXISTS `email_08`;
CREATE TABLE `email_08` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_09
-- ----------------------------
DROP TABLE IF EXISTS `email_09`;
CREATE TABLE `email_09` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_10
-- ----------------------------
DROP TABLE IF EXISTS `email_10`;
CREATE TABLE `email_10` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_11
-- ----------------------------
DROP TABLE IF EXISTS `email_11`;
CREATE TABLE `email_11` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_12
-- ----------------------------
DROP TABLE IF EXISTS `email_12`;
CREATE TABLE `email_12` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_13
-- ----------------------------
DROP TABLE IF EXISTS `email_13`;
CREATE TABLE `email_13` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_14
-- ----------------------------
DROP TABLE IF EXISTS `email_14`;
CREATE TABLE `email_14` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_15
-- ----------------------------
DROP TABLE IF EXISTS `email_15`;
CREATE TABLE `email_15` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_16
-- ----------------------------
DROP TABLE IF EXISTS `email_16`;
CREATE TABLE `email_16` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_17
-- ----------------------------
DROP TABLE IF EXISTS `email_17`;
CREATE TABLE `email_17` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_18
-- ----------------------------
DROP TABLE IF EXISTS `email_18`;
CREATE TABLE `email_18` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_19
-- ----------------------------
DROP TABLE IF EXISTS `email_19`;
CREATE TABLE `email_19` (
  `pc_uid` int(11) unsigned NOT NULL,
  `system_email_ids` varchar(20000) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '|',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for email_items_00
-- ----------------------------
DROP TABLE IF EXISTS `email_items_00`;
CREATE TABLE `email_items_00` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_01
-- ----------------------------
DROP TABLE IF EXISTS `email_items_01`;
CREATE TABLE `email_items_01` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_02
-- ----------------------------
DROP TABLE IF EXISTS `email_items_02`;
CREATE TABLE `email_items_02` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_03
-- ----------------------------
DROP TABLE IF EXISTS `email_items_03`;
CREATE TABLE `email_items_03` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_04
-- ----------------------------
DROP TABLE IF EXISTS `email_items_04`;
CREATE TABLE `email_items_04` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_05
-- ----------------------------
DROP TABLE IF EXISTS `email_items_05`;
CREATE TABLE `email_items_05` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_06
-- ----------------------------
DROP TABLE IF EXISTS `email_items_06`;
CREATE TABLE `email_items_06` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_07
-- ----------------------------
DROP TABLE IF EXISTS `email_items_07`;
CREATE TABLE `email_items_07` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_08
-- ----------------------------
DROP TABLE IF EXISTS `email_items_08`;
CREATE TABLE `email_items_08` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_09
-- ----------------------------
DROP TABLE IF EXISTS `email_items_09`;
CREATE TABLE `email_items_09` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_10
-- ----------------------------
DROP TABLE IF EXISTS `email_items_10`;
CREATE TABLE `email_items_10` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_11
-- ----------------------------
DROP TABLE IF EXISTS `email_items_11`;
CREATE TABLE `email_items_11` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_12
-- ----------------------------
DROP TABLE IF EXISTS `email_items_12`;
CREATE TABLE `email_items_12` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_13
-- ----------------------------
DROP TABLE IF EXISTS `email_items_13`;
CREATE TABLE `email_items_13` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_14
-- ----------------------------
DROP TABLE IF EXISTS `email_items_14`;
CREATE TABLE `email_items_14` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_15
-- ----------------------------
DROP TABLE IF EXISTS `email_items_15`;
CREATE TABLE `email_items_15` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_16
-- ----------------------------
DROP TABLE IF EXISTS `email_items_16`;
CREATE TABLE `email_items_16` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_17
-- ----------------------------
DROP TABLE IF EXISTS `email_items_17`;
CREATE TABLE `email_items_17` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_18
-- ----------------------------
DROP TABLE IF EXISTS `email_items_18`;
CREATE TABLE `email_items_18` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for email_items_19
-- ----------------------------
DROP TABLE IF EXISTS `email_items_19`;
CREATE TABLE `email_items_19` (
  `uid` bigint(20) unsigned NOT NULL,
  `owner_uid` int(11) unsigned NOT NULL,
  `email_id` int(11) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_get` tinyint(1) NOT NULL DEFAULT '1',
  `send_time` int(11) DEFAULT '0',
  `delete_time` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_00
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_00`;
CREATE TABLE `game_counter_00` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_01
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_01`;
CREATE TABLE `game_counter_01` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_02
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_02`;
CREATE TABLE `game_counter_02` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_03
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_03`;
CREATE TABLE `game_counter_03` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_04
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_04`;
CREATE TABLE `game_counter_04` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_05
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_05`;
CREATE TABLE `game_counter_05` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_06
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_06`;
CREATE TABLE `game_counter_06` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_07
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_07`;
CREATE TABLE `game_counter_07` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_08
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_08`;
CREATE TABLE `game_counter_08` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_09
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_09`;
CREATE TABLE `game_counter_09` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_10
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_10`;
CREATE TABLE `game_counter_10` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_11
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_11`;
CREATE TABLE `game_counter_11` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_12
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_12`;
CREATE TABLE `game_counter_12` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_13
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_13`;
CREATE TABLE `game_counter_13` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_14
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_14`;
CREATE TABLE `game_counter_14` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_15
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_15`;
CREATE TABLE `game_counter_15` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_16
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_16`;
CREATE TABLE `game_counter_16` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_17
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_17`;
CREATE TABLE `game_counter_17` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_18
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_18`;
CREATE TABLE `game_counter_18` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_counter_19
-- ----------------------------
DROP TABLE IF EXISTS `game_counter_19`;
CREATE TABLE `game_counter_19` (
  `pc_uid` int(11) unsigned NOT NULL,
  `TipOff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LikeSpace` smallint(6) DEFAULT '0',
  `LadderTotalWinNum` int(11) NOT NULL DEFAULT '0',
  `BattleGold` int(11) NOT NULL DEFAULT '0',
  `BattleDiamond` int(11) NOT NULL DEFAULT '0',
  `Suggest` smallint(5) NOT NULL DEFAULT '0',
  `BattleReward` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_00
-- ----------------------------
DROP TABLE IF EXISTS `hero_00`;
CREATE TABLE `hero_00` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_01
-- ----------------------------
DROP TABLE IF EXISTS `hero_01`;
CREATE TABLE `hero_01` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_02
-- ----------------------------
DROP TABLE IF EXISTS `hero_02`;
CREATE TABLE `hero_02` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_03
-- ----------------------------
DROP TABLE IF EXISTS `hero_03`;
CREATE TABLE `hero_03` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_04
-- ----------------------------
DROP TABLE IF EXISTS `hero_04`;
CREATE TABLE `hero_04` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_05
-- ----------------------------
DROP TABLE IF EXISTS `hero_05`;
CREATE TABLE `hero_05` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_06
-- ----------------------------
DROP TABLE IF EXISTS `hero_06`;
CREATE TABLE `hero_06` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_07
-- ----------------------------
DROP TABLE IF EXISTS `hero_07`;
CREATE TABLE `hero_07` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_08
-- ----------------------------
DROP TABLE IF EXISTS `hero_08`;
CREATE TABLE `hero_08` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_09
-- ----------------------------
DROP TABLE IF EXISTS `hero_09`;
CREATE TABLE `hero_09` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_10
-- ----------------------------
DROP TABLE IF EXISTS `hero_10`;
CREATE TABLE `hero_10` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_11
-- ----------------------------
DROP TABLE IF EXISTS `hero_11`;
CREATE TABLE `hero_11` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_12
-- ----------------------------
DROP TABLE IF EXISTS `hero_12`;
CREATE TABLE `hero_12` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_13
-- ----------------------------
DROP TABLE IF EXISTS `hero_13`;
CREATE TABLE `hero_13` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_14
-- ----------------------------
DROP TABLE IF EXISTS `hero_14`;
CREATE TABLE `hero_14` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_15
-- ----------------------------
DROP TABLE IF EXISTS `hero_15`;
CREATE TABLE `hero_15` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_16
-- ----------------------------
DROP TABLE IF EXISTS `hero_16`;
CREATE TABLE `hero_16` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_17
-- ----------------------------
DROP TABLE IF EXISTS `hero_17`;
CREATE TABLE `hero_17` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_18
-- ----------------------------
DROP TABLE IF EXISTS `hero_18`;
CREATE TABLE `hero_18` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_19
-- ----------------------------
DROP TABLE IF EXISTS `hero_19`;
CREATE TABLE `hero_19` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0',
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `story_0` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `story_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `curSkin` int(11) NOT NULL DEFAULT '0',
  `skins` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_comment
-- ----------------------------
DROP TABLE IF EXISTS `hero_comment`;
CREATE TABLE `hero_comment` (
  `index` int(11) NOT NULL,
  `heroId` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `charName` varchar(32) NOT NULL DEFAULT '',
  `showFaceJpg` smallint(5) NOT NULL DEFAULT '0',
  `faceIcon` int(11) NOT NULL DEFAULT '1',
  `faceFrame` int(11) NOT NULL DEFAULT '1',
  `content` varchar(300) DEFAULT '',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_comment_likes
-- ----------------------------
DROP TABLE IF EXISTS `hero_comment_likes`;
CREATE TABLE `hero_comment_likes` (
  `index` int(11) NOT NULL,
  `subIndex` int(11) NOT NULL DEFAULT '0',
  `uidList` varchar(2046) DEFAULT NULL,
  PRIMARY KEY (`index`,`subIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_00
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_00`;
CREATE TABLE `hero_queue_00` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_01
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_01`;
CREATE TABLE `hero_queue_01` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_02
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_02`;
CREATE TABLE `hero_queue_02` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_03
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_03`;
CREATE TABLE `hero_queue_03` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_04
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_04`;
CREATE TABLE `hero_queue_04` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_05
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_05`;
CREATE TABLE `hero_queue_05` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_06
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_06`;
CREATE TABLE `hero_queue_06` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_07
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_07`;
CREATE TABLE `hero_queue_07` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_08
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_08`;
CREATE TABLE `hero_queue_08` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_09
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_09`;
CREATE TABLE `hero_queue_09` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_10
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_10`;
CREATE TABLE `hero_queue_10` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_11
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_11`;
CREATE TABLE `hero_queue_11` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_12
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_12`;
CREATE TABLE `hero_queue_12` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_13
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_13`;
CREATE TABLE `hero_queue_13` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_14
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_14`;
CREATE TABLE `hero_queue_14` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_15
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_15`;
CREATE TABLE `hero_queue_15` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_16
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_16`;
CREATE TABLE `hero_queue_16` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_17
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_17`;
CREATE TABLE `hero_queue_17` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_18
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_18`;
CREATE TABLE `hero_queue_18` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hero_queue_19
-- ----------------------------
DROP TABLE IF EXISTS `hero_queue_19`;
CREATE TABLE `hero_queue_19` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_00
-- ----------------------------
DROP TABLE IF EXISTS `items_00`;
CREATE TABLE `items_00` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_01
-- ----------------------------
DROP TABLE IF EXISTS `items_01`;
CREATE TABLE `items_01` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_02
-- ----------------------------
DROP TABLE IF EXISTS `items_02`;
CREATE TABLE `items_02` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_03
-- ----------------------------
DROP TABLE IF EXISTS `items_03`;
CREATE TABLE `items_03` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_04
-- ----------------------------
DROP TABLE IF EXISTS `items_04`;
CREATE TABLE `items_04` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_05
-- ----------------------------
DROP TABLE IF EXISTS `items_05`;
CREATE TABLE `items_05` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_06
-- ----------------------------
DROP TABLE IF EXISTS `items_06`;
CREATE TABLE `items_06` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_07
-- ----------------------------
DROP TABLE IF EXISTS `items_07`;
CREATE TABLE `items_07` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_08
-- ----------------------------
DROP TABLE IF EXISTS `items_08`;
CREATE TABLE `items_08` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_09
-- ----------------------------
DROP TABLE IF EXISTS `items_09`;
CREATE TABLE `items_09` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_10
-- ----------------------------
DROP TABLE IF EXISTS `items_10`;
CREATE TABLE `items_10` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_11
-- ----------------------------
DROP TABLE IF EXISTS `items_11`;
CREATE TABLE `items_11` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_12
-- ----------------------------
DROP TABLE IF EXISTS `items_12`;
CREATE TABLE `items_12` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_13
-- ----------------------------
DROP TABLE IF EXISTS `items_13`;
CREATE TABLE `items_13` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_14
-- ----------------------------
DROP TABLE IF EXISTS `items_14`;
CREATE TABLE `items_14` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_15
-- ----------------------------
DROP TABLE IF EXISTS `items_15`;
CREATE TABLE `items_15` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_16
-- ----------------------------
DROP TABLE IF EXISTS `items_16`;
CREATE TABLE `items_16` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_17
-- ----------------------------
DROP TABLE IF EXISTS `items_17`;
CREATE TABLE `items_17` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_18
-- ----------------------------
DROP TABLE IF EXISTS `items_18`;
CREATE TABLE `items_18` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items_19
-- ----------------------------
DROP TABLE IF EXISTS `items_19`;
CREATE TABLE `items_19` (
  `owner_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `pileNum` int(11) unsigned NOT NULL DEFAULT '1',
  `activateState` int(11) NOT NULL DEFAULT '0' COMMENT '物品激活状态 1 占用（时装使用，头像框使用等）',
  `generate_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`,`id`),
  KEY `FK_items` (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_00
-- ----------------------------
DROP TABLE IF EXISTS `recharge_00`;
CREATE TABLE `recharge_00` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_01
-- ----------------------------
DROP TABLE IF EXISTS `recharge_01`;
CREATE TABLE `recharge_01` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_02
-- ----------------------------
DROP TABLE IF EXISTS `recharge_02`;
CREATE TABLE `recharge_02` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_03
-- ----------------------------
DROP TABLE IF EXISTS `recharge_03`;
CREATE TABLE `recharge_03` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_04
-- ----------------------------
DROP TABLE IF EXISTS `recharge_04`;
CREATE TABLE `recharge_04` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_05
-- ----------------------------
DROP TABLE IF EXISTS `recharge_05`;
CREATE TABLE `recharge_05` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_06
-- ----------------------------
DROP TABLE IF EXISTS `recharge_06`;
CREATE TABLE `recharge_06` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_07
-- ----------------------------
DROP TABLE IF EXISTS `recharge_07`;
CREATE TABLE `recharge_07` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_08
-- ----------------------------
DROP TABLE IF EXISTS `recharge_08`;
CREATE TABLE `recharge_08` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_09
-- ----------------------------
DROP TABLE IF EXISTS `recharge_09`;
CREATE TABLE `recharge_09` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_10
-- ----------------------------
DROP TABLE IF EXISTS `recharge_10`;
CREATE TABLE `recharge_10` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_11
-- ----------------------------
DROP TABLE IF EXISTS `recharge_11`;
CREATE TABLE `recharge_11` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_12
-- ----------------------------
DROP TABLE IF EXISTS `recharge_12`;
CREATE TABLE `recharge_12` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_13
-- ----------------------------
DROP TABLE IF EXISTS `recharge_13`;
CREATE TABLE `recharge_13` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_14
-- ----------------------------
DROP TABLE IF EXISTS `recharge_14`;
CREATE TABLE `recharge_14` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_15
-- ----------------------------
DROP TABLE IF EXISTS `recharge_15`;
CREATE TABLE `recharge_15` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_16
-- ----------------------------
DROP TABLE IF EXISTS `recharge_16`;
CREATE TABLE `recharge_16` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_17
-- ----------------------------
DROP TABLE IF EXISTS `recharge_17`;
CREATE TABLE `recharge_17` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_18
-- ----------------------------
DROP TABLE IF EXISTS `recharge_18`;
CREATE TABLE `recharge_18` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_19
-- ----------------------------
DROP TABLE IF EXISTS `recharge_19`;
CREATE TABLE `recharge_19` (
  `pc_uid` int(11) NOT NULL,
  `accumulate_total` int(11) DEFAULT '0',
  `accumulate_current` int(11) DEFAULT '0',
  `accumulate_daily` int(11) DEFAULT '0',
  `first` int(11) DEFAULT '-1',
  `rewards` varchar(10000) NOT NULL DEFAULT '',
  `products` varchar(10000) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_00
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_00`;
CREATE TABLE `recharge_history_00` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_01
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_01`;
CREATE TABLE `recharge_history_01` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_02
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_02`;
CREATE TABLE `recharge_history_02` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_03
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_03`;
CREATE TABLE `recharge_history_03` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_04
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_04`;
CREATE TABLE `recharge_history_04` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_05
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_05`;
CREATE TABLE `recharge_history_05` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_06
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_06`;
CREATE TABLE `recharge_history_06` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_07
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_07`;
CREATE TABLE `recharge_history_07` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_08
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_08`;
CREATE TABLE `recharge_history_08` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_09
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_09`;
CREATE TABLE `recharge_history_09` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_10
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_10`;
CREATE TABLE `recharge_history_10` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_11
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_11`;
CREATE TABLE `recharge_history_11` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_12
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_12`;
CREATE TABLE `recharge_history_12` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_13
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_13`;
CREATE TABLE `recharge_history_13` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_14
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_14`;
CREATE TABLE `recharge_history_14` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_15
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_15`;
CREATE TABLE `recharge_history_15` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_16
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_16`;
CREATE TABLE `recharge_history_16` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_17
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_17`;
CREATE TABLE `recharge_history_17` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_18
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_18`;
CREATE TABLE `recharge_history_18` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recharge_history_19
-- ----------------------------
DROP TABLE IF EXISTS `recharge_history_19`;
CREATE TABLE `recharge_history_19` (
  `pc_uid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `money` float(11,2) DEFAULT '0.00',
  `way` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(11) DEFAULT '0',
  `create_state` tinyint(1) DEFAULT '0',
  `make_state` tinyint(1) DEFAULT '0',
  `get_state` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `make_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_uid`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for season
-- ----------------------------
DROP TABLE IF EXISTS `season`;
CREATE TABLE `season` (
  `season_num` smallint(6) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`season_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sensitive_word
-- ----------------------------
DROP TABLE IF EXISTS `sensitive_word`;
CREATE TABLE `sensitive_word` (
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_00
-- ----------------------------
DROP TABLE IF EXISTS `shop_00`;
CREATE TABLE `shop_00` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_01
-- ----------------------------
DROP TABLE IF EXISTS `shop_01`;
CREATE TABLE `shop_01` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_02
-- ----------------------------
DROP TABLE IF EXISTS `shop_02`;
CREATE TABLE `shop_02` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_03
-- ----------------------------
DROP TABLE IF EXISTS `shop_03`;
CREATE TABLE `shop_03` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_04
-- ----------------------------
DROP TABLE IF EXISTS `shop_04`;
CREATE TABLE `shop_04` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_05
-- ----------------------------
DROP TABLE IF EXISTS `shop_05`;
CREATE TABLE `shop_05` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_06
-- ----------------------------
DROP TABLE IF EXISTS `shop_06`;
CREATE TABLE `shop_06` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_07
-- ----------------------------
DROP TABLE IF EXISTS `shop_07`;
CREATE TABLE `shop_07` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_08
-- ----------------------------
DROP TABLE IF EXISTS `shop_08`;
CREATE TABLE `shop_08` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_09
-- ----------------------------
DROP TABLE IF EXISTS `shop_09`;
CREATE TABLE `shop_09` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_10
-- ----------------------------
DROP TABLE IF EXISTS `shop_10`;
CREATE TABLE `shop_10` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_11
-- ----------------------------
DROP TABLE IF EXISTS `shop_11`;
CREATE TABLE `shop_11` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_12
-- ----------------------------
DROP TABLE IF EXISTS `shop_12`;
CREATE TABLE `shop_12` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_13
-- ----------------------------
DROP TABLE IF EXISTS `shop_13`;
CREATE TABLE `shop_13` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_14
-- ----------------------------
DROP TABLE IF EXISTS `shop_14`;
CREATE TABLE `shop_14` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_15
-- ----------------------------
DROP TABLE IF EXISTS `shop_15`;
CREATE TABLE `shop_15` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_16
-- ----------------------------
DROP TABLE IF EXISTS `shop_16`;
CREATE TABLE `shop_16` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_17
-- ----------------------------
DROP TABLE IF EXISTS `shop_17`;
CREATE TABLE `shop_17` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_18
-- ----------------------------
DROP TABLE IF EXISTS `shop_18`;
CREATE TABLE `shop_18` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_19
-- ----------------------------
DROP TABLE IF EXISTS `shop_19`;
CREATE TABLE `shop_19` (
  `uid` int(11) unsigned NOT NULL,
  `card` varchar(1000) DEFAULT '',
  `free_card` int(11) DEFAULT '0',
  `free_time` int(11) DEFAULT '0',
  `chest` varchar(500) DEFAULT '',
  `gold` varchar(500) DEFAULT '',
  `diamond` varchar(1000) DEFAULT '',
  `heros` varchar(4000) DEFAULT '',
  `skills` varchar(2000) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_00
-- ----------------------------
DROP TABLE IF EXISTS `skill_00`;
CREATE TABLE `skill_00` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_01
-- ----------------------------
DROP TABLE IF EXISTS `skill_01`;
CREATE TABLE `skill_01` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_02
-- ----------------------------
DROP TABLE IF EXISTS `skill_02`;
CREATE TABLE `skill_02` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_03
-- ----------------------------
DROP TABLE IF EXISTS `skill_03`;
CREATE TABLE `skill_03` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_04
-- ----------------------------
DROP TABLE IF EXISTS `skill_04`;
CREATE TABLE `skill_04` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_05
-- ----------------------------
DROP TABLE IF EXISTS `skill_05`;
CREATE TABLE `skill_05` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_06
-- ----------------------------
DROP TABLE IF EXISTS `skill_06`;
CREATE TABLE `skill_06` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_07
-- ----------------------------
DROP TABLE IF EXISTS `skill_07`;
CREATE TABLE `skill_07` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_08
-- ----------------------------
DROP TABLE IF EXISTS `skill_08`;
CREATE TABLE `skill_08` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_09
-- ----------------------------
DROP TABLE IF EXISTS `skill_09`;
CREATE TABLE `skill_09` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_10
-- ----------------------------
DROP TABLE IF EXISTS `skill_10`;
CREATE TABLE `skill_10` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_11
-- ----------------------------
DROP TABLE IF EXISTS `skill_11`;
CREATE TABLE `skill_11` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_12
-- ----------------------------
DROP TABLE IF EXISTS `skill_12`;
CREATE TABLE `skill_12` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_13
-- ----------------------------
DROP TABLE IF EXISTS `skill_13`;
CREATE TABLE `skill_13` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_14
-- ----------------------------
DROP TABLE IF EXISTS `skill_14`;
CREATE TABLE `skill_14` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_15
-- ----------------------------
DROP TABLE IF EXISTS `skill_15`;
CREATE TABLE `skill_15` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_16
-- ----------------------------
DROP TABLE IF EXISTS `skill_16`;
CREATE TABLE `skill_16` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_17
-- ----------------------------
DROP TABLE IF EXISTS `skill_17`;
CREATE TABLE `skill_17` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_18
-- ----------------------------
DROP TABLE IF EXISTS `skill_18`;
CREATE TABLE `skill_18` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_19
-- ----------------------------
DROP TABLE IF EXISTS `skill_19`;
CREATE TABLE `skill_19` (
  `owner_uid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `position_0` smallint(6) NOT NULL,
  `position_1` smallint(6) NOT NULL,
  `position_2` smallint(6) NOT NULL,
  `level` smallint(6) NOT NULL,
  `exp` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`owner_uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_00
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_00`;
CREATE TABLE `skill_queue_00` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_01
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_01`;
CREATE TABLE `skill_queue_01` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_02
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_02`;
CREATE TABLE `skill_queue_02` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_03
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_03`;
CREATE TABLE `skill_queue_03` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_04
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_04`;
CREATE TABLE `skill_queue_04` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_05
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_05`;
CREATE TABLE `skill_queue_05` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_06
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_06`;
CREATE TABLE `skill_queue_06` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_07
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_07`;
CREATE TABLE `skill_queue_07` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_08
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_08`;
CREATE TABLE `skill_queue_08` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_09
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_09`;
CREATE TABLE `skill_queue_09` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_10
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_10`;
CREATE TABLE `skill_queue_10` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_11
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_11`;
CREATE TABLE `skill_queue_11` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_12
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_12`;
CREATE TABLE `skill_queue_12` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_13
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_13`;
CREATE TABLE `skill_queue_13` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_14
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_14`;
CREATE TABLE `skill_queue_14` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_15
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_15`;
CREATE TABLE `skill_queue_15` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_16
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_16`;
CREATE TABLE `skill_queue_16` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_17
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_17`;
CREATE TABLE `skill_queue_17` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_18
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_18`;
CREATE TABLE `skill_queue_18` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill_queue_19
-- ----------------------------
DROP TABLE IF EXISTS `skill_queue_19`;
CREATE TABLE `skill_queue_19` (
  `owner_uid` int(11) unsigned NOT NULL,
  `name_0` varchar(30) NOT NULL DEFAULT '',
  `name_1` varchar(30) NOT NULL DEFAULT '',
  `name_2` varchar(30) NOT NULL DEFAULT '',
  `cur_queue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_00
-- ----------------------------
DROP TABLE IF EXISTS `task_current_00`;
CREATE TABLE `task_current_00` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_01
-- ----------------------------
DROP TABLE IF EXISTS `task_current_01`;
CREATE TABLE `task_current_01` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_02
-- ----------------------------
DROP TABLE IF EXISTS `task_current_02`;
CREATE TABLE `task_current_02` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_03
-- ----------------------------
DROP TABLE IF EXISTS `task_current_03`;
CREATE TABLE `task_current_03` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_04
-- ----------------------------
DROP TABLE IF EXISTS `task_current_04`;
CREATE TABLE `task_current_04` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_05
-- ----------------------------
DROP TABLE IF EXISTS `task_current_05`;
CREATE TABLE `task_current_05` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_06
-- ----------------------------
DROP TABLE IF EXISTS `task_current_06`;
CREATE TABLE `task_current_06` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_07
-- ----------------------------
DROP TABLE IF EXISTS `task_current_07`;
CREATE TABLE `task_current_07` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_08
-- ----------------------------
DROP TABLE IF EXISTS `task_current_08`;
CREATE TABLE `task_current_08` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_09
-- ----------------------------
DROP TABLE IF EXISTS `task_current_09`;
CREATE TABLE `task_current_09` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_10
-- ----------------------------
DROP TABLE IF EXISTS `task_current_10`;
CREATE TABLE `task_current_10` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_11
-- ----------------------------
DROP TABLE IF EXISTS `task_current_11`;
CREATE TABLE `task_current_11` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_12
-- ----------------------------
DROP TABLE IF EXISTS `task_current_12`;
CREATE TABLE `task_current_12` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_13
-- ----------------------------
DROP TABLE IF EXISTS `task_current_13`;
CREATE TABLE `task_current_13` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_14
-- ----------------------------
DROP TABLE IF EXISTS `task_current_14`;
CREATE TABLE `task_current_14` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_15
-- ----------------------------
DROP TABLE IF EXISTS `task_current_15`;
CREATE TABLE `task_current_15` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_16
-- ----------------------------
DROP TABLE IF EXISTS `task_current_16`;
CREATE TABLE `task_current_16` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_17
-- ----------------------------
DROP TABLE IF EXISTS `task_current_17`;
CREATE TABLE `task_current_17` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_18
-- ----------------------------
DROP TABLE IF EXISTS `task_current_18`;
CREATE TABLE `task_current_18` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_current_19
-- ----------------------------
DROP TABLE IF EXISTS `task_current_19`;
CREATE TABLE `task_current_19` (
  `pc_uid` int(11) unsigned NOT NULL,
  `task_id` int(11) NOT NULL,
  `param_type` tinyint(11) NOT NULL DEFAULT '0',
  `param_num` smallint(11) NOT NULL DEFAULT '0',
  `cur_num` smallint(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pc_uid`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_00
-- ----------------------------
DROP TABLE IF EXISTS `title_00`;
CREATE TABLE `title_00` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_01
-- ----------------------------
DROP TABLE IF EXISTS `title_01`;
CREATE TABLE `title_01` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_02
-- ----------------------------
DROP TABLE IF EXISTS `title_02`;
CREATE TABLE `title_02` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_03
-- ----------------------------
DROP TABLE IF EXISTS `title_03`;
CREATE TABLE `title_03` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_04
-- ----------------------------
DROP TABLE IF EXISTS `title_04`;
CREATE TABLE `title_04` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_05
-- ----------------------------
DROP TABLE IF EXISTS `title_05`;
CREATE TABLE `title_05` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_06
-- ----------------------------
DROP TABLE IF EXISTS `title_06`;
CREATE TABLE `title_06` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_07
-- ----------------------------
DROP TABLE IF EXISTS `title_07`;
CREATE TABLE `title_07` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_08
-- ----------------------------
DROP TABLE IF EXISTS `title_08`;
CREATE TABLE `title_08` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_09
-- ----------------------------
DROP TABLE IF EXISTS `title_09`;
CREATE TABLE `title_09` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_10
-- ----------------------------
DROP TABLE IF EXISTS `title_10`;
CREATE TABLE `title_10` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_11
-- ----------------------------
DROP TABLE IF EXISTS `title_11`;
CREATE TABLE `title_11` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_12
-- ----------------------------
DROP TABLE IF EXISTS `title_12`;
CREATE TABLE `title_12` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_13
-- ----------------------------
DROP TABLE IF EXISTS `title_13`;
CREATE TABLE `title_13` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_14
-- ----------------------------
DROP TABLE IF EXISTS `title_14`;
CREATE TABLE `title_14` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_15
-- ----------------------------
DROP TABLE IF EXISTS `title_15`;
CREATE TABLE `title_15` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_16
-- ----------------------------
DROP TABLE IF EXISTS `title_16`;
CREATE TABLE `title_16` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_17
-- ----------------------------
DROP TABLE IF EXISTS `title_17`;
CREATE TABLE `title_17` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_18
-- ----------------------------
DROP TABLE IF EXISTS `title_18`;
CREATE TABLE `title_18` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for title_19
-- ----------------------------
DROP TABLE IF EXISTS `title_19`;
CREATE TABLE `title_19` (
  `pc_uid` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `equip_index` int(11) DEFAULT '-1',
  PRIMARY KEY (`pc_uid`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_00
-- ----------------------------
DROP TABLE IF EXISTS `welfare_00`;
CREATE TABLE `welfare_00` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_01
-- ----------------------------
DROP TABLE IF EXISTS `welfare_01`;
CREATE TABLE `welfare_01` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_02
-- ----------------------------
DROP TABLE IF EXISTS `welfare_02`;
CREATE TABLE `welfare_02` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_03
-- ----------------------------
DROP TABLE IF EXISTS `welfare_03`;
CREATE TABLE `welfare_03` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_04
-- ----------------------------
DROP TABLE IF EXISTS `welfare_04`;
CREATE TABLE `welfare_04` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_05
-- ----------------------------
DROP TABLE IF EXISTS `welfare_05`;
CREATE TABLE `welfare_05` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_06
-- ----------------------------
DROP TABLE IF EXISTS `welfare_06`;
CREATE TABLE `welfare_06` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_07
-- ----------------------------
DROP TABLE IF EXISTS `welfare_07`;
CREATE TABLE `welfare_07` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_08
-- ----------------------------
DROP TABLE IF EXISTS `welfare_08`;
CREATE TABLE `welfare_08` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_09
-- ----------------------------
DROP TABLE IF EXISTS `welfare_09`;
CREATE TABLE `welfare_09` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_10
-- ----------------------------
DROP TABLE IF EXISTS `welfare_10`;
CREATE TABLE `welfare_10` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_11
-- ----------------------------
DROP TABLE IF EXISTS `welfare_11`;
CREATE TABLE `welfare_11` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_12
-- ----------------------------
DROP TABLE IF EXISTS `welfare_12`;
CREATE TABLE `welfare_12` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_13
-- ----------------------------
DROP TABLE IF EXISTS `welfare_13`;
CREATE TABLE `welfare_13` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_14
-- ----------------------------
DROP TABLE IF EXISTS `welfare_14`;
CREATE TABLE `welfare_14` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_15
-- ----------------------------
DROP TABLE IF EXISTS `welfare_15`;
CREATE TABLE `welfare_15` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_16
-- ----------------------------
DROP TABLE IF EXISTS `welfare_16`;
CREATE TABLE `welfare_16` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_17
-- ----------------------------
DROP TABLE IF EXISTS `welfare_17`;
CREATE TABLE `welfare_17` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_18
-- ----------------------------
DROP TABLE IF EXISTS `welfare_18`;
CREATE TABLE `welfare_18` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welfare_19
-- ----------------------------
DROP TABLE IF EXISTS `welfare_19`;
CREATE TABLE `welfare_19` (
  `pc_uid` int(11) NOT NULL,
  `first_seven_receive` int(11) DEFAULT NULL,
  `first_seven_reparation` int(11) DEFAULT NULL,
  `signing_month` int(11) DEFAULT NULL,
  `signing_receive` int(11) DEFAULT NULL,
  `signing_reparation` int(11) DEFAULT NULL,
  `level_receive` int(11) DEFAULT NULL,
  `online_day` int(11) DEFAULT NULL,
  `online_second` int(11) DEFAULT NULL,
  `online_receive` int(11) DEFAULT NULL,
  `goddess_pool` varchar(255) DEFAULT '',
  `legend_pet_state` varchar(255) DEFAULT '',
  `christmas_seven_day` int(11) DEFAULT '0',
  `christmas_seven_receive` int(11) DEFAULT '0',
  `redpacketwall_historycount` int(11) DEFAULT '0',
  `redpacketwall_openinfo` varchar(255) DEFAULT '',
  `redpacketwall_daylycount` int(11) DEFAULT '0',
  `redpacketwall_resetcount` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
