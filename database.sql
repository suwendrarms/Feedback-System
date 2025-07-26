/*
 Navicat Premium Data Transfer

 Source Server         : Local L 002
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : project1

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 26/07/2025 21:49:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for emailconfig
-- ----------------------------
DROP TABLE IF EXISTS `emailconfig`;
CREATE TABLE `emailconfig`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromemail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fromname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `protocol` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `security` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emailconfig
-- ----------------------------
INSERT INTO `emailconfig` VALUES (1, 'codeigniter@example.com', 'Codeigniter Auth', 'smtp', 'gmail.google.com', 'official@gmail.com', 'tls', '22', '$2y$10$PK65kpF6SflIk/iAJql6R.PRXX9GEaoRrJHHORqReU2I0E/60pVtC', '2020-08-21 17:43:51', '2020-09-11 14:34:52');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time(0) NOT NULL,
  `reference` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (13, '2025-07-26', '17:41:42', 1, 'Admin', '127.0.0.1', NULL, 'Firefox', 'Success', '2025-07-26 17:41:42', '2025-07-26 17:41:42');
INSERT INTO `logs` VALUES (14, '2025-07-26', '17:47:51', 1, 'Admin', '127.0.0.1', NULL, 'Firefox', 'Success', '2025-07-26 17:47:51', '2025-07-26 17:47:51');
INSERT INTO `logs` VALUES (15, '2025-07-26', '21:34:04', 17, 'dd', '127.0.0.1', NULL, 'Firefox', 'Success', '2025-07-26 21:34:04', '2025-07-26 21:34:04');
INSERT INTO `logs` VALUES (16, '2025-07-26', '23:43:37', 17, 'dd', '127.0.0.1', NULL, 'Firefox', 'Success', '2025-07-26 23:43:37', '2025-07-26 23:43:37');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dateformat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timeformat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iprestriction` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'en', 'Asia/Manila', 'yyyy-mm-dd', '24', '', '2020-08-21 17:43:51', '2020-09-11 14:34:44');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `new_email` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password_hash` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `lastname` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `activate_hash` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `reset_hash` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `reset_expires` bigint(20) NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin@example.com', NULL, '$2y$10$/clmNLUUxGnREFHqraU7P.aVfJ5Mk0iEKRgKVz8.ZKOZIUGJGXlya', 'Admin', 'Admin', 'User', 'ZEWv2TUIY5oDqgw9FkjnmAS78zJNKfpL', NULL, NULL, 1, '2020-08-04 16:07:50', '2020-09-11 14:32:51');
INSERT INTO `users` VALUES (17, 'adminamh@mail.com', NULL, '$2y$10$8vS.STgN2BO5lMMSK5By.uPrJT0TrUMThejV3N3FY3ynGXte.O4V6', 'dd', 'sd', 'dd', 'pnofZ2TL1XxqMhdtsrlGPY46ycuWeEB8', NULL, NULL, 1, '2025-07-26 17:49:47', '2025-07-26 17:49:55');
INSERT INTO `users` VALUES (18, 'adminamh@mail.com2', NULL, '$2y$10$ByP8WdtO9xdzfEj8tNtajO0Oid7tvxVjYnScsX.SeluF/ikTHQx9u', 'as', 'as', 'as', 'hNqAMOv5Z8CiRQaezHJtKgU7bWrYE162', NULL, NULL, 0, '2025-07-26 23:43:00', '2025-07-26 23:43:00');

SET FOREIGN_KEY_CHECKS = 1;
