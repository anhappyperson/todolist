/*
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44)
 Source Host           : 154.8.201.55:3306
 Source Schema         : todolist_0

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44)
 File Encoding         : 65001

*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for todolist_0
-- ----------------------------
DROP TABLE IF EXISTS `todolist_0`;
CREATE TABLE `todolist_0` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_0
-- ----------------------------
BEGIN;
INSERT INTO `todolist_0` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (0, '00000', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 20:33:29', 1.04);
COMMIT;

-- ----------------------------
-- Table structure for todolist_1
-- ----------------------------
DROP TABLE IF EXISTS `todolist_1`;
CREATE TABLE `todolist_1` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_1
-- ----------------------------
BEGIN;
INSERT INTO `todolist_1` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (1, '11111', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.85);
COMMIT;

-- ----------------------------
-- Table structure for todolist_10
-- ----------------------------
DROP TABLE IF EXISTS `todolist_10`;
CREATE TABLE `todolist_10` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_10
-- ----------------------------
BEGIN;
INSERT INTO `todolist_10` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (10, '1010101010', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.12);
COMMIT;

-- ----------------------------
-- Table structure for todolist_11
-- ----------------------------
DROP TABLE IF EXISTS `todolist_11`;
CREATE TABLE `todolist_11` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_11
-- ----------------------------
BEGIN;
INSERT INTO `todolist_11` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (11, '1111111111', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.92);
COMMIT;

-- ----------------------------
-- Table structure for todolist_12
-- ----------------------------
DROP TABLE IF EXISTS `todolist_12`;
CREATE TABLE `todolist_12` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_12
-- ----------------------------
BEGIN;
INSERT INTO `todolist_12` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (12, '1212121212', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 20:33:03', 2.03);
COMMIT;

-- ----------------------------
-- Table structure for todolist_13
-- ----------------------------
DROP TABLE IF EXISTS `todolist_13`;
CREATE TABLE `todolist_13` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_13
-- ----------------------------
BEGIN;
INSERT INTO `todolist_13` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (13, '1313131313', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.91);
COMMIT;

-- ----------------------------
-- Table structure for todolist_14
-- ----------------------------
DROP TABLE IF EXISTS `todolist_14`;
CREATE TABLE `todolist_14` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_14
-- ----------------------------
BEGIN;
INSERT INTO `todolist_14` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (14, '1414141414', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.61);
COMMIT;

-- ----------------------------
-- Table structure for todolist_15
-- ----------------------------
DROP TABLE IF EXISTS `todolist_15`;
CREATE TABLE `todolist_15` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_15
-- ----------------------------
BEGIN;
INSERT INTO `todolist_15` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (15, '1515151515', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.32);
COMMIT;

-- ----------------------------
-- Table structure for todolist_16
-- ----------------------------
DROP TABLE IF EXISTS `todolist_16`;
CREATE TABLE `todolist_16` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_16
-- ----------------------------
BEGIN;
INSERT INTO `todolist_16` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (16, '1616161616', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.93);
COMMIT;

-- ----------------------------
-- Table structure for todolist_17
-- ----------------------------
DROP TABLE IF EXISTS `todolist_17`;
CREATE TABLE `todolist_17` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_17
-- ----------------------------
BEGIN;
INSERT INTO `todolist_17` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (17, '1717171717', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.44);
COMMIT;

-- ----------------------------
-- Table structure for todolist_18
-- ----------------------------
DROP TABLE IF EXISTS `todolist_18`;
CREATE TABLE `todolist_18` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_18
-- ----------------------------
BEGIN;
INSERT INTO `todolist_18` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (18, '1818181818', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.61);
COMMIT;

-- ----------------------------
-- Table structure for todolist_19
-- ----------------------------
DROP TABLE IF EXISTS `todolist_19`;
CREATE TABLE `todolist_19` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_19
-- ----------------------------
BEGIN;
INSERT INTO `todolist_19` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (19, '1919191919', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.44);
COMMIT;

-- ----------------------------
-- Table structure for todolist_2
-- ----------------------------
DROP TABLE IF EXISTS `todolist_2`;
CREATE TABLE `todolist_2` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_2
-- ----------------------------
BEGIN;
INSERT INTO `todolist_2` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (2, '22222', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.94);
COMMIT;

-- ----------------------------
-- Table structure for todolist_3
-- ----------------------------
DROP TABLE IF EXISTS `todolist_3`;
CREATE TABLE `todolist_3` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_3
-- ----------------------------
BEGIN;
INSERT INTO `todolist_3` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (3, '33333', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.74);
COMMIT;

-- ----------------------------
-- Table structure for todolist_4
-- ----------------------------
DROP TABLE IF EXISTS `todolist_4`;
CREATE TABLE `todolist_4` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_4
-- ----------------------------
BEGIN;
INSERT INTO `todolist_4` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (4, '44444', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.67);
COMMIT;

-- ----------------------------
-- Table structure for todolist_5
-- ----------------------------
DROP TABLE IF EXISTS `todolist_5`;
CREATE TABLE `todolist_5` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_5
-- ----------------------------
BEGIN;
INSERT INTO `todolist_5` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (5, '55555', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.52);
COMMIT;

-- ----------------------------
-- Table structure for todolist_6
-- ----------------------------
DROP TABLE IF EXISTS `todolist_6`;
CREATE TABLE `todolist_6` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_6
-- ----------------------------
BEGIN;
INSERT INTO `todolist_6` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (6, '66666', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.31);
COMMIT;

-- ----------------------------
-- Table structure for todolist_7
-- ----------------------------
DROP TABLE IF EXISTS `todolist_7`;
CREATE TABLE `todolist_7` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_7
-- ----------------------------
BEGIN;
INSERT INTO `todolist_7` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (7, '77777', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.40);
COMMIT;

-- ----------------------------
-- Table structure for todolist_8
-- ----------------------------
DROP TABLE IF EXISTS `todolist_8`;
CREATE TABLE `todolist_8` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_8
-- ----------------------------
BEGIN;
INSERT INTO `todolist_8` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (8, '88888', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.41);
COMMIT;

-- ----------------------------
-- Table structure for todolist_9
-- ----------------------------
DROP TABLE IF EXISTS `todolist_9`;
CREATE TABLE `todolist_9` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_9
-- ----------------------------
BEGIN;
INSERT INTO `todolist_9` (`id`, `title`, `owner_id`, `due_date`, `create_at`, `update_at`, `score`) VALUES (9, '99999', 18, '2024-12-22 13:52:52', '2024-12-22 13:52:51', '2024-12-22 13:54:34', 1.47);
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_0
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_0`;
CREATE TABLE `todolist_user_relation_0` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_0
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_1
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_1`;
CREATE TABLE `todolist_user_relation_1` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_10
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_10`;
CREATE TABLE `todolist_user_relation_10` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_10
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_11
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_11`;
CREATE TABLE `todolist_user_relation_11` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_11
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_12
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_12`;
CREATE TABLE `todolist_user_relation_12` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_12
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_13
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_13`;
CREATE TABLE `todolist_user_relation_13` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_13
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_14
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_14`;
CREATE TABLE `todolist_user_relation_14` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_14
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_15
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_15`;
CREATE TABLE `todolist_user_relation_15` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_15
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_16
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_16`;
CREATE TABLE `todolist_user_relation_16` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_16
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_17
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_17`;
CREATE TABLE `todolist_user_relation_17` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_17
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_18
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_18`;
CREATE TABLE `todolist_user_relation_18` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_18
-- ----------------------------
BEGIN;
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (1, 1, 18, 'read', 1.85, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (2, 2, 18, 'read', 1.94, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (3, 3, 18, 'read', 1.74, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (4, 4, 18, 'read', 1.67, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (5, 5, 18, 'read', 1.52, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (6, 6, 18, 'read', 1.31, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (7, 7, 18, 'read', 1.40, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (8, 8, 18, 'read', 1.41, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (9, 9, 18, 'read', 1.47, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (10, 10, 18, 'read', 1.12, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (11, 11, 18, 'read', 1.92, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (12, 12, 18, 'read', 2.03, '2024-12-22 14:04:25', '2024-12-22 20:34:06');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (13, 13, 18, 'read', 1.91, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (14, 14, 18, 'read', 1.61, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (15, 15, 18, 'read', 1.32, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (16, 16, 18, 'read', 1.93, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (17, 17, 18, 'read', 1.44, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (18, 18, 18, 'read', 1.61, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (19, 19, 18, 'read', 1.44, '2024-12-22 14:04:25', '2024-12-22 14:04:25');
INSERT INTO `todolist_user_relation_18` (`id`, `todolist_id`, `user_id`, `permissions`, `score`, `create_at`, `update_at`) VALUES (20, 0, 18, 'read', 1.03, '2024-12-22 14:04:25', '2024-12-22 20:34:11');
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_19
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_19`;
CREATE TABLE `todolist_user_relation_19` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_19
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_2
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_2`;
CREATE TABLE `todolist_user_relation_2` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_3
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_3`;
CREATE TABLE `todolist_user_relation_3` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_4
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_4`;
CREATE TABLE `todolist_user_relation_4` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_4
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_5
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_5`;
CREATE TABLE `todolist_user_relation_5` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_5
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_6
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_6`;
CREATE TABLE `todolist_user_relation_6` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_6
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_7
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_7`;
CREATE TABLE `todolist_user_relation_7` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_7
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_8
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_8`;
CREATE TABLE `todolist_user_relation_8` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_8
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todolist_user_relation_9
-- ----------------------------
DROP TABLE IF EXISTS `todolist_user_relation_9`;
CREATE TABLE `todolist_user_relation_9` (
  `id` bigint(20) NOT NULL,
  `todolist_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT 'read',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of todolist_user_relation_9
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_0
-- ----------------------------
DROP TABLE IF EXISTS `users_0`;
CREATE TABLE `users_0` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_0
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_1
-- ----------------------------
DROP TABLE IF EXISTS `users_1`;
CREATE TABLE `users_1` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_10
-- ----------------------------
DROP TABLE IF EXISTS `users_10`;
CREATE TABLE `users_10` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_10
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_11
-- ----------------------------
DROP TABLE IF EXISTS `users_11`;
CREATE TABLE `users_11` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_11
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_12
-- ----------------------------
DROP TABLE IF EXISTS `users_12`;
CREATE TABLE `users_12` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_12
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_13
-- ----------------------------
DROP TABLE IF EXISTS `users_13`;
CREATE TABLE `users_13` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_13
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_14
-- ----------------------------
DROP TABLE IF EXISTS `users_14`;
CREATE TABLE `users_14` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_14
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_15
-- ----------------------------
DROP TABLE IF EXISTS `users_15`;
CREATE TABLE `users_15` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_15
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_16
-- ----------------------------
DROP TABLE IF EXISTS `users_16`;
CREATE TABLE `users_16` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_16
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_17
-- ----------------------------
DROP TABLE IF EXISTS `users_17`;
CREATE TABLE `users_17` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_17
-- ----------------------------
BEGIN;
INSERT INTO `users_17` (`id`, `username`, `create_at`) VALUES (17, '17777', '2024-12-21 21:29:16');
COMMIT;

-- ----------------------------
-- Table structure for users_18
-- ----------------------------
DROP TABLE IF EXISTS `users_18`;
CREATE TABLE `users_18` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_18
-- ----------------------------
BEGIN;
INSERT INTO `users_18` (`id`, `username`, `create_at`) VALUES (18, '188888', '2024-12-21 21:29:28');
COMMIT;

-- ----------------------------
-- Table structure for users_19
-- ----------------------------
DROP TABLE IF EXISTS `users_19`;
CREATE TABLE `users_19` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_19
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_2
-- ----------------------------
DROP TABLE IF EXISTS `users_2`;
CREATE TABLE `users_2` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_3
-- ----------------------------
DROP TABLE IF EXISTS `users_3`;
CREATE TABLE `users_3` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_4
-- ----------------------------
DROP TABLE IF EXISTS `users_4`;
CREATE TABLE `users_4` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_4
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_5
-- ----------------------------
DROP TABLE IF EXISTS `users_5`;
CREATE TABLE `users_5` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_5
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_6
-- ----------------------------
DROP TABLE IF EXISTS `users_6`;
CREATE TABLE `users_6` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_6
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_7
-- ----------------------------
DROP TABLE IF EXISTS `users_7`;
CREATE TABLE `users_7` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_7
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_8
-- ----------------------------
DROP TABLE IF EXISTS `users_8`;
CREATE TABLE `users_8` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_8
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_9
-- ----------------------------
DROP TABLE IF EXISTS `users_9`;
CREATE TABLE `users_9` (
  `id` bigint(20) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of users_9
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
