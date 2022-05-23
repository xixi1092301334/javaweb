/*
 Navicat MySQL Data Transfer

 Source Server         : sssss
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : 120.25.192.31:3306
 Source Schema         : eshop

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 23/05/2022 09:20:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE `adminlog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `in` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `out` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminlog
-- ----------------------------
INSERT INTO `adminlog` VALUES (1, 'admin', '0:0:0:0:0:0:0:1', '2022-04-19 23:31:50', '2022-04-19 23:31:59');
INSERT INTO `adminlog` VALUES (2, 'admin', '0:0:0:0:0:0:0:1', '2022-04-19 23:32:50', '2022-04-19 23:32:51');
INSERT INTO `adminlog` VALUES (3, 'admin', '0:0:0:0:0:0:0:1', '2022-04-20 20:51:59', '2022-04-20 20:53:28');
INSERT INTO `adminlog` VALUES (4, 'admin', '0:0:0:0:0:0:0:1', '2022-04-20 20:53:31', '2022-04-20 20:54:55');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cid` int NOT NULL AUTO_INCREMENT,
  `uid` int NULL DEFAULT NULL,
  `pid` int NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  `total_price` double NULL DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `merchant` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (98, 2, 2, 1, 8999, '手机', 'samsung');
INSERT INTO `cart` VALUES (99, 33, 2, 1, 8999, '手机', 'samsung');
INSERT INTO `cart` VALUES (103, 2, 2, 1, 8999, '手机', 'samsung');
INSERT INTO `cart` VALUES (105, 7, 2, 1, 8999, '手机', 'samsung');
INSERT INTO `cart` VALUES (106, 7, 1, 1, 6299, '手机', 'apple');

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant`  (
  `mid` int NOT NULL AUTO_INCREMENT,
  `merchantname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES (1, 'sony', 'sony', 'sony');
INSERT INTO `merchant` VALUES (2, 'apple', 'apple', 'apple');
INSERT INTO `merchant` VALUES (3, 'samsung', 'samsung', 'samsung');
INSERT INTO `merchant` VALUES (4, 'dell', 'dell', 'dell');
INSERT INTO `merchant` VALUES (8, 'huawei', 'huawei', '123456');

-- ----------------------------
-- Table structure for merchantlog
-- ----------------------------
DROP TABLE IF EXISTS `merchantlog`;
CREATE TABLE `merchantlog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `in` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `out` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchantlog
-- ----------------------------
INSERT INTO `merchantlog` VALUES (1, 'sony', '0:0:0:0:0:0:0:1', '2022-04-19 23:36:45', '2022-04-19 23:36:51');
INSERT INTO `merchantlog` VALUES (2, 'sony', '0:0:0:0:0:0:0:1', '2022-04-22 21:22:30', '2022-04-22 21:22:46');
INSERT INTO `merchantlog` VALUES (3, 'sony', '0:0:0:0:0:0:0:1', '2022-04-22 21:25:30', '2022-04-22 21:26:24');
INSERT INTO `merchantlog` VALUES (4, 'sony', '0:0:0:0:0:0:0:1', '2022-05-10 10:47:13', '2022-05-10 10:52:05');
INSERT INTO `merchantlog` VALUES (5, 'sony', '125.216.248.55', '2022-05-10 10:51:19', '2022-05-10 10:54:27');

-- ----------------------------
-- Table structure for operation
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `details` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 269 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation
-- ----------------------------
INSERT INTO `operation` VALUES (1, '管理员：admin', '2022-05-08 19:44:23', '103.197.71.37', '删除订单：6');
INSERT INTO `operation` VALUES (2, '管理员：admin', '2022-05-08 19:44:25', '103.197.71.37', '删除订单：6');
INSERT INTO `operation` VALUES (3, '管理员：admin', '2022-05-08 19:45:21', '103.197.71.37', '查看统计数据');
INSERT INTO `operation` VALUES (4, '管理员：admin', '2022-05-08 19:45:25', '103.197.71.37', '查看订单');
INSERT INTO `operation` VALUES (5, '管理员：admin', '2022-05-08 19:46:04', '103.197.71.37', '查看订单');
INSERT INTO `operation` VALUES (6, '管理员：admin', '2022-05-08 19:46:11', '103.197.71.37', '查看统计数据');
INSERT INTO `operation` VALUES (7, '管理员：admin', '2022-05-08 19:46:26', '103.197.71.37', '查看统计数据');
INSERT INTO `operation` VALUES (8, '管理员：admin', '2022-05-08 19:47:55', '103.197.71.37', '查看订单');
INSERT INTO `operation` VALUES (9, '管理员：admin', '2022-05-08 19:48:03', '103.197.71.37', '删除订单：7');
INSERT INTO `operation` VALUES (10, '管理员：admin', '2022-05-08 19:48:05', '103.197.71.37', '删除订单：8');
INSERT INTO `operation` VALUES (11, '管理员：admin', '2022-05-08 19:48:06', '103.197.71.37', '删除订单：9');
INSERT INTO `operation` VALUES (12, '管理员：admin', '2022-05-08 19:48:07', '103.197.71.37', '删除订单：11');
INSERT INTO `operation` VALUES (128, '商户：sony', '2022-05-08 20:10:46', '103.197.71.37', '查看商品');
INSERT INTO `operation` VALUES (129, '商户：sony', '2022-05-08 20:10:55', '103.197.71.37', '修改商品：9');
INSERT INTO `operation` VALUES (130, '商户：sony', '2022-05-08 20:11:42', '103.197.71.37', '查看商品');
INSERT INTO `operation` VALUES (131, '商户：sony', '2022-05-08 20:11:47', '103.197.71.37', '修改商品：5');
INSERT INTO `operation` VALUES (132, '商户：sony', '2022-05-08 20:12:05', '103.197.71.37', '查看商品');
INSERT INTO `operation` VALUES (133, '商户：sony', '2022-05-08 20:12:14', '103.197.71.37', '修改商品：9');
INSERT INTO `operation` VALUES (134, '商户：sony', '2022-05-08 20:14:29', '103.197.71.37', '修改商品：9');
INSERT INTO `operation` VALUES (135, '商户：sony', '2022-05-08 20:15:04', '103.197.71.37', '查看商品');
INSERT INTO `operation` VALUES (136, '商户：sony', '2022-05-08 20:15:09', '103.197.71.37', '查看订单');
INSERT INTO `operation` VALUES (137, '管理员：admin', '2022-05-08 20:15:27', '103.197.71.37', '查看订单');
INSERT INTO `operation` VALUES (138, '管理员：admin', '2022-05-08 20:15:40', '103.197.71.37', '查看统计数据');
INSERT INTO `operation` VALUES (139, '管理员：admin', '2022-05-08 20:15:50', '103.197.71.37', '查看商品');
INSERT INTO `operation` VALUES (140, '管理员：admin', '2022-05-08 20:15:52', '103.197.71.37', '查看商户');
INSERT INTO `operation` VALUES (141, '管理员：admin', '2022-05-08 20:15:56', '103.197.71.37', '查看商品');
INSERT INTO `operation` VALUES (142, '管理员：admin', '2022-05-08 20:16:01', '103.197.71.37', '查看用户');
INSERT INTO `operation` VALUES (143, '管理员：admin', '2022-05-08 20:16:21', '103.197.71.37', '查看订单');
INSERT INTO `operation` VALUES (144, '管理员：admin', '2022-05-08 20:19:02', '103.197.71.37', '查看订单');
INSERT INTO `operation` VALUES (145, '管理员：admin', '2022-05-08 20:20:46', '103.197.71.37', '查看商品');
INSERT INTO `operation` VALUES (146, '管理员：admin', '2022-05-08 21:05:38', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (147, '管理员：admin', '2022-05-08 21:05:48', '125.216.248.55', '查看用户');
INSERT INTO `operation` VALUES (148, '管理员：admin', '2022-05-08 21:06:35', '125.216.248.55', '查看用户');
INSERT INTO `operation` VALUES (149, '管理员：admin', '2022-05-08 21:06:53', '125.216.248.55', '删除用户：32');
INSERT INTO `operation` VALUES (150, '管理员：admin', '2022-05-09 10:46:57', '125.216.248.55', '查看用户');
INSERT INTO `operation` VALUES (151, '商户：sony', '2022-05-09 10:48:05', '125.216.248.55', '查看商品');
INSERT INTO `operation` VALUES (152, '商户：sony', '2022-05-09 10:48:09', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (153, '管理员：admin', '2022-05-09 10:48:26', '125.216.248.55', '查看用户');
INSERT INTO `operation` VALUES (154, '管理员：admin', '2022-05-09 10:48:28', '125.216.248.55', '查看商户');
INSERT INTO `operation` VALUES (155, '管理员：admin', '2022-05-09 10:48:31', '125.216.248.55', '查看商品');
INSERT INTO `operation` VALUES (156, '管理员：admin', '2022-05-09 10:48:34', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (157, '管理员：admin', '2022-05-09 10:48:40', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (158, '管理员：admin', '2022-05-09 11:01:00', '125.216.248.55', '查看商品');
INSERT INTO `operation` VALUES (159, '管理员：admin', '2022-05-09 11:01:05', '125.216.248.55', '查看用户');
INSERT INTO `operation` VALUES (160, '管理员：admin', '2022-05-09 11:21:15', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (161, '管理员：admin', '2022-05-09 11:27:23', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (162, '管理员：admin', '2022-05-09 11:27:25', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (163, '管理员：admin', '2022-05-09 11:27:28', '125.216.248.55', '查看商品');
INSERT INTO `operation` VALUES (164, '管理员：admin', '2022-05-09 11:27:30', '125.216.248.55', '查看用户');
INSERT INTO `operation` VALUES (165, '管理员：admin', '2022-05-09 11:27:47', '125.216.248.55', '查看用户');
INSERT INTO `operation` VALUES (166, '管理员：admin', '2022-05-09 11:42:45', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (167, '管理员：admin', '2022-05-09 11:42:51', '125.216.248.55', '查看商品');
INSERT INTO `operation` VALUES (168, '管理员：admin', '2022-05-09 11:42:52', '125.216.248.55', '查看商户');
INSERT INTO `operation` VALUES (169, '管理员：admin', '2022-05-09 11:42:54', '125.216.248.55', '查看用户');
INSERT INTO `operation` VALUES (170, '管理员：admin', '2022-05-09 15:47:34', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (171, '管理员：admin', '2022-05-09 15:47:36', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (172, '管理员：admin', '2022-05-09 15:47:38', '0:0:0:0:0:0:0:1', '查看统计数据');
INSERT INTO `operation` VALUES (173, '管理员：admin', '2022-05-10 09:45:08', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (174, '管理员：admin', '2022-05-10 09:45:12', '0:0:0:0:0:0:0:1', '查看统计数据');
INSERT INTO `operation` VALUES (175, '商户：sony', '2022-05-10 10:30:59', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (176, '商户：sony', '2022-05-10 10:42:45', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (177, '管理员：admin', '2022-05-10 10:44:05', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (178, '管理员：admin', '2022-05-10 10:44:22', '0:0:0:0:0:0:0:1', '新建商品类型12');
INSERT INTO `operation` VALUES (179, '管理员：admin', '2022-05-10 10:44:30', '0:0:0:0:0:0:0:1', '删除商品类型：null');
INSERT INTO `operation` VALUES (180, '管理员：admin', '2022-05-10 10:44:36', '0:0:0:0:0:0:0:1', '新建商品类型书');
INSERT INTO `operation` VALUES (181, '商户：sony', '2022-05-10 10:44:52', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (182, '商户：sony', '2022-05-10 10:45:51', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (183, '商户：sony', '2022-05-10 10:47:15', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (184, '商户：sony', '2022-05-10 10:49:52', '0:0:0:0:0:0:0:1', '新建商品：JAVAWEB');
INSERT INTO `operation` VALUES (185, '商户：sony', '2022-05-10 10:49:55', '0:0:0:0:0:0:0:1', '新建商品：JAVAWEB');
INSERT INTO `operation` VALUES (186, '商户：sony', '2022-05-10 10:49:57', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (187, '管理员：admin', '2022-05-10 10:50:19', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (188, '商户：sony', '2022-05-10 10:51:21', '125.216.248.55', '查看商品');
INSERT INTO `operation` VALUES (189, '商户：sony', '2022-05-10 10:52:03', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (190, '商户：123456', '2022-05-10 10:52:40', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (191, '商户：123456', '2022-05-10 10:53:01', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (192, '商户：123456', '2022-05-10 10:53:03', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (193, '管理员：admin', '2022-05-10 10:53:16', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (194, '商户：123456', '2022-05-10 10:53:38', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (195, '商户：123456', '2022-05-10 10:53:42', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (196, '商户：123456', '2022-05-10 10:53:45', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (197, '商户：123456', '2022-05-10 10:53:55', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (198, '商户：123456', '2022-05-10 10:54:36', '125.216.248.55', '查看商品');
INSERT INTO `operation` VALUES (199, '商户：123456', '2022-05-10 10:57:07', '0:0:0:0:0:0:0:1', '新建商品：学生手册');
INSERT INTO `operation` VALUES (200, '商户：123456', '2022-05-10 10:58:33', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (201, '管理员：admin', '2022-05-10 11:27:35', '125.216.248.55', '查看用户');
INSERT INTO `operation` VALUES (202, '管理员：admin', '2022-05-10 11:27:36', '125.216.248.55', '查看商户');
INSERT INTO `operation` VALUES (203, '管理员：admin', '2022-05-10 11:27:37', '125.216.248.55', '查看商品');
INSERT INTO `operation` VALUES (204, '管理员：admin', '2022-05-10 21:05:25', '0:0:0:0:0:0:0:1', '查看用户');
INSERT INTO `operation` VALUES (205, '管理员：admin', '2022-05-10 21:05:27', '0:0:0:0:0:0:0:1', '查看商户');
INSERT INTO `operation` VALUES (206, '管理员：admin', '2022-05-10 21:05:29', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (207, '管理员：admin', '2022-05-10 21:05:34', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (208, '管理员：admin', '2022-05-10 21:05:37', '0:0:0:0:0:0:0:1', '查看统计数据');
INSERT INTO `operation` VALUES (209, '商户：123456', '2022-05-10 21:06:09', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (210, '商户：123456', '2022-05-10 21:06:11', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (211, '商户：123456', '2022-05-10 21:06:17', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (212, '管理员：admin', '2022-05-11 14:43:12', '221.4.34.159', '查看统计数据');
INSERT INTO `operation` VALUES (213, '商户：sony', '2022-05-11 22:21:15', '221.4.34.176', '查看商品');
INSERT INTO `operation` VALUES (214, '商户：sony', '2022-05-11 22:28:12', '221.4.34.176', '查看订单');
INSERT INTO `operation` VALUES (215, '管理员：admin', '2022-05-18 21:36:45', '0:0:0:0:0:0:0:1', '查看用户');
INSERT INTO `operation` VALUES (216, '管理员：admin', '2022-05-18 21:40:19', '0:0:0:0:0:0:0:1', '查看商户');
INSERT INTO `operation` VALUES (217, '管理员：admin', '2022-05-18 21:44:29', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (218, '管理员：admin', '2022-05-18 21:53:44', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (219, '管理员：admin', '2022-05-18 21:58:01', '0:0:0:0:0:0:0:1', '查看统计数据');
INSERT INTO `operation` VALUES (220, '管理员：admin', '2022-05-18 21:58:18', '0:0:0:0:0:0:0:1', '查看统计数据');
INSERT INTO `operation` VALUES (221, '管理员：admin', '2022-05-18 21:58:42', '0:0:0:0:0:0:0:1', '查看统计数据');
INSERT INTO `operation` VALUES (222, '管理员：admin', '2022-05-18 21:59:49', '0:0:0:0:0:0:0:1', '查看统计数据');
INSERT INTO `operation` VALUES (223, '管理员：admin', '2022-05-18 22:00:37', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (224, '管理员：admin', '2022-05-18 22:01:21', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (225, '管理员：admin', '2022-05-18 22:01:25', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (226, '管理员：admin', '2022-05-18 22:02:30', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (227, '管理员：admin', '2022-05-18 22:02:35', '0:0:0:0:0:0:0:1', '查看统计数据');
INSERT INTO `operation` VALUES (228, '管理员：admin', '2022-05-18 22:05:26', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (229, '管理员：admin', '2022-05-18 22:05:27', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (230, '管理员：admin', '2022-05-18 22:07:22', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (231, '管理员：admin', '2022-05-18 22:07:23', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (232, '管理员：admin', '2022-05-18 22:09:51', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (233, '管理员：admin', '2022-05-18 22:09:53', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (234, '管理员：admin', '2022-05-18 22:10:44', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (235, '管理员：admin', '2022-05-18 22:17:16', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (236, '管理员：admin', '2022-05-18 22:23:52', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (237, '管理员：admin', '2022-05-18 22:23:52', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (238, '管理员：admin', '2022-05-18 22:25:05', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (239, '管理员：admin', '2022-05-18 22:25:13', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (240, '管理员：admin', '2022-05-18 22:25:14', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (241, '管理员：admin', '2022-05-18 22:25:21', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (242, '管理员：admin', '2022-05-18 22:25:48', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (243, '管理员：admin', '2022-05-18 22:25:52', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (244, '管理员：admin', '2022-05-18 22:25:53', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (245, '管理员：admin', '2022-05-18 22:28:25', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (246, '管理员：admin', '2022-05-18 22:28:43', '0:0:0:0:0:0:0:1', '查看统计数据');
INSERT INTO `operation` VALUES (247, '管理员：admin', '2022-05-18 22:46:43', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (248, '管理员：admin', '2022-05-18 23:12:33', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (249, '管理员：admin', '2022-05-18 23:13:02', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (250, '管理员：admin', '2022-05-18 23:13:06', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (251, '管理员：admin', '2022-05-22 11:31:26', '0:0:0:0:0:0:0:1', '查看统计数据');
INSERT INTO `operation` VALUES (252, '商户：sony', '2022-05-22 16:13:58', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (253, '商户：sony', '2022-05-22 16:14:14', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (254, '商户：sony', '2022-05-22 16:14:15', '0:0:0:0:0:0:0:1', '查看订单');
INSERT INTO `operation` VALUES (255, '商户：sony', '2022-05-22 16:14:16', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (256, '管理员：admin', '2022-05-22 16:33:26', '0:0:0:0:0:0:0:1', '查看商户');
INSERT INTO `operation` VALUES (257, '管理员：admin', '2022-05-22 16:33:26', '0:0:0:0:0:0:0:1', '查看商品');
INSERT INTO `operation` VALUES (258, '管理员：admin', '2022-05-22 17:26:08', '125.216.248.55', '查看商户');
INSERT INTO `operation` VALUES (259, '管理员：admin', '2022-05-22 17:26:12', '125.216.248.55', '查看商品');
INSERT INTO `operation` VALUES (260, '管理员：admin', '2022-05-22 17:26:19', '125.216.248.55', '查看订单');
INSERT INTO `operation` VALUES (261, '管理员：admin', '2022-05-22 17:26:23', '125.216.248.55', '查看统计数据');
INSERT INTO `operation` VALUES (262, '商户：sony', '2022-05-22 20:10:29', '185.14.47.185', '查看商品');
INSERT INTO `operation` VALUES (263, '商户：sony', '2022-05-22 20:10:57', '185.14.47.185', '查看订单');
INSERT INTO `operation` VALUES (264, '管理员：admin', '2022-05-22 20:11:59', '185.14.47.185', '查看用户');
INSERT INTO `operation` VALUES (265, '管理员：admin', '2022-05-22 20:12:38', '185.14.47.185', '查看商户');
INSERT INTO `operation` VALUES (266, '管理员：admin', '2022-05-22 20:13:01', '185.14.47.185', '查看商品');
INSERT INTO `operation` VALUES (267, '管理员：admin', '2022-05-22 20:14:38', '185.14.47.185', '查看订单');
INSERT INTO `operation` VALUES (268, '管理员：admin', '2022-05-22 20:15:12', '185.14.47.185', '查看统计数据');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `oid` int NOT NULL AUTO_INCREMENT,
  `uid` int NULL DEFAULT NULL,
  `uname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `telephone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pid` int NULL DEFAULT NULL,
  `pname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  `total_price` double NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `pay` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `merchant` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 22, '测试', '广州', '123456789', 1, 'Iphone12', 2, 12598, '2022-03-16 18:14:58', '支付宝', '1111@qq.com', 'apple', '手机');
INSERT INTO `order` VALUES (2, 22, '测试', '广州', '123456789', 2, '三星 Galaxy S20 Ultra', 1, 8999, '2022-03-17 18:14:58', '支付宝', '1111@qq.com', 'samsung', '手机');
INSERT INTO `order` VALUES (3, 23, 'asdfasf', 'asdfasdfasdfasdfsadf', '11223344556', 4, '戴尔XPS 15', 1, 16999, '2022-03-24 17:49:54', '支付宝', 'asdfasfasf@324.ASF', 'dell', '电脑');
INSERT INTO `order` VALUES (4, 23, 'asdfasf', 'asdfasdfasdfasdfsadf', '11223344556', 2, '三星 Galaxy S20 Ultra', 1, 8999, '2022-03-30 17:49:54', '支付宝', 'asdfasfasf@324.ASF', 'samsung', '手机');
INSERT INTO `order` VALUES (5, 1, '1', '1', '1', 1, 'Iphone12', 1, 6299, '2022-04-01 21:27:26', '支付宝', '11@qq.com', 'apple', '手机');
INSERT INTO `order` VALUES (6, 1, 'l', '1', '13926248003', 4, '戴尔XPS 15', 1, 16999, '2022-04-12 21:35:12', '支付宝', '561@qq.com', 'dell', '电脑');
INSERT INTO `order` VALUES (8, 2, 'hhhhh', '11111', '111111', 2, '三星 Galaxy S20 Ultra', 1, 8999, '2022-05-08 19:11:09', '货到付款', '11111111@qq.com', 'samsung', '手机');
INSERT INTO `order` VALUES (9, 2, 'hhhhh', '11111', '111111', 2, '三星 Galaxy S20 Ultra', 1, 8999, '2022-05-08 19:11:55', '货到付款', '11111111@qq.com', 'samsung', '手机');
INSERT INTO `order` VALUES (61, 33, 'hhhhhh', '1111', '111', 9, 'PS5', 1, 3499, '2022-05-08 21:07:51', '支付宝', '111', 'sony', '游戏机');
INSERT INTO `order` VALUES (62, 33, 'hhhhhh', '1111', '111', 10, 'Xbox_One', 1, 3999, '2022-05-08 21:07:51', '支付宝', '111', 'microsoft', '游戏机');
INSERT INTO `order` VALUES (63, 7, 'aaa', 'aaa', 'aaa', 2, '三星 Galaxy S20 Ultra', 1, 8999, '2022-05-10 21:04:57', '微信支付', 'aaa', 'samsung', '手机');
INSERT INTO `order` VALUES (64, 7, 'ssss', 'ssss', 'ssss', 3, '戴尔G7', 1, 13499, '2022-05-18 22:06:34', '支付宝', 'ssssss', 'dell', '电脑');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `image` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image1` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image2` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `intro` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stock` int NULL DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `merchant` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Iphone12', 6299, 'images/product/Iphone12_0.jpg', 'images/product/Iphone12_1.jpg', 'images/product/Iphone12_2.jpg', '手机', 'Apple iPhone 12 (A2404) 64GB 蓝色 支持移动联通电信5G 双卡双待手机', 9999, '奢华成功', 'apple');
INSERT INTO `product` VALUES (2, '三星 Galaxy S20 Ultra', 8999, 'images/product/S20_Ultra_0.jpg', 'images/product/S20_Ultra_1.jpg', 'images/product/S20_Ultra_2.jpg', '手机', '三星 Galaxy S20 Ultra 5G(SM-G9880)双模5G 骁龙865 1.08亿像素 100倍变焦 游戏手机 12GB+256GB 幻游黑', 5000, '牛', 'samsung');
INSERT INTO `product` VALUES (3, '戴尔G7', 13499, 'images/product/G7_0.jpg', 'images/product/G7_1.jpg', 'images/product/G7_2.jpg', '电脑', '【2020新款】G7 15.6英寸精工合金游戏本 创作版 12区RGB底盘光刃 OLED 4K显示屏', 10000, '快速', 'dell');
INSERT INTO `product` VALUES (4, '戴尔XPS 15', 16999, 'images/product/XPS15_0.jpg', 'images/product/XPS15_1.jpg', 'images/product/XPS15_2.jpg', '电脑', '【2020新款】XPS 15(9500) 15.6英寸全面屏设计轻薄本 爆款版 创作全面屏/物理防蓝光 1TB固态硬盘', 500, '强悍', 'dell');
INSERT INTO `product` VALUES (5, 'Sony Alpha 7S III', 23999, 'images/product/Alpha7SIII_0.jpg', 'images/product/Alpha7SIII_1.jpg', 'images/product/Alpha7SIII_2.jpg', '相机', '新开发的BIONZ XR™影像处理器/背照式Exmor R™CMOS影像传感器/ 15+级动态范围*1 /感光度范围扩展可达ISO 40-409600*6 ', 500, '无敌', 'sony');
INSERT INTO `product` VALUES (6, 'WH-1000XM4', 2999, 'images/product/WH-1000XM4_0.jpg', 'images/product/WH-1000XM4_1.jpg', 'images/product/WH-1000XM4_2.jpg', '耳机', 'WH-1000XM4 高解析度头戴式无线降噪立体声耳机 黑色', 600, '芜湖', 'sony');
INSERT INTO `product` VALUES (7, 'Apple_Watch', 3199, 'images/product/Apple_Watch_0.jpg', 'images/product/Apple_Watch_1.jpg', 'images/product/Apple_Watch_2.jpg', '手表', 'Apple Watch Series6 智能手表 GPS款 44毫米深空灰铝金属外壳 黑色运动表带', 1000, 'hhh', 'apple');
INSERT INTO `product` VALUES (8, 'Huawei_Watch', 2999, 'images/product/Huawei_Watch_0.jpg', 'images/product/Huawei_Watch_1.jpg', 'images/product/Huawei_Watch_2.jpg', '手表', '产品介绍产品介绍', 5999, '就用华为', 'huawei');
INSERT INTO `product` VALUES (9, 'PS5', 3499, 'images/product/PS5_0.jpg', 'images/product/PS5_1.jpg', 'images/product/PS5_2.jpg', '游戏机', '产品介绍产品介绍', 2000, 'xbox垃圾', 'sony');
INSERT INTO `product` VALUES (10, 'Xbox_One', 3999, 'images/product/Xbox_One_0.jpg', 'images/product/Xbox_One_1.jpg', 'images/product/Xbox_One_2.jpg', '游戏机', '产品介绍产品介绍', 1000, 'ps5垃圾', 'microsoft');
INSERT INTO `product` VALUES (11, 'Acer投影仪', 2899, 'images/product/Acer投影仪_0.jpg', 'images/product/Acer投影仪_1.jpg', 'images/product/Acer投影仪_2.jpg', '投影仪', '产品介绍产品介绍', 1000, '我是投影仪', 'acer');
INSERT INTO `product` VALUES (12, '小米扫地机器人', 1299, 'images/product/小米扫地机器人_0.jpg', 'images/product/小米扫地机器人_1.jpg', 'images/product/小米扫地机器人_2.jpg', '扫地机器人', '产品介绍产品介绍', 1000, '扫地机器人人', 'mi');
INSERT INTO `product` VALUES (13, '小米手环', 399, 'images/product/小米手环_0.jpg', 'images/product/小米手环_1.jpg', 'images/product/小米手环_2.jpg', '手环', '产品介绍产品介绍', 1000, '小米手环', 'mi');
INSERT INTO `product` VALUES (14, '小米投影仪', 1999, 'images/product/小米投影仪_0.jpg', 'images/product/小米投影仪_1.jpg', 'images/product/小米投影仪_2.jpg', '投影仪', '产品介绍产品介绍', 1000, '小米投影仪', 'mi');
INSERT INTO `product` VALUES (16, 'JAVAWEB', 9999, 'images/product/JAVAweb_1.jpg', 'images/product/JAVAweb_2.jpg', 'images/product/JAVAweb_3.jpg', '书', '学javaweb，走向成功人生！', 3, '学就完事了！', 'sony');
INSERT INTO `product` VALUES (18, '学生手册', 9999, 'images/product/fly_1.jpg', 'images/product/fly_2.jpg', 'images/product/fly_3.jpg', '书', '走进华工，走向成功！', 3, '上华工就完事了！', '123456');

-- ----------------------------
-- Table structure for producttype
-- ----------------------------
DROP TABLE IF EXISTS `producttype`;
CREATE TABLE `producttype`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producttype
-- ----------------------------
INSERT INTO `producttype` VALUES (1, '手机');
INSERT INTO `producttype` VALUES (2, '电脑');
INSERT INTO `producttype` VALUES (3, '耳机');
INSERT INTO `producttype` VALUES (4, '相机');
INSERT INTO `producttype` VALUES (5, '平板');
INSERT INTO `producttype` VALUES (6, '投影仪');
INSERT INTO `producttype` VALUES (7, '手表');
INSERT INTO `producttype` VALUES (8, '游戏机');
INSERT INTO `producttype` VALUES (9, '手环');
INSERT INTO `producttype` VALUES (10, '扫地机器人');
INSERT INTO `producttype` VALUES (11, '手机配件');
INSERT INTO `producttype` VALUES (12, '书');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `telephone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `username_UNIQUE`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'test2', '123456', 'test2', '1@qq.com', '123123123', '2020-11-04', '男', '123');
INSERT INTO `user` VALUES (2, 'oyxq', '123', 'oyxq', 'qqq@qq.com', '1111111', '2020-11-19', '男', '11111');
INSERT INTO `user` VALUES (3, 'aabbcc', 'aabbcc', 'aabbcc', 'aabbcc@aabbcc.com', '11223344556', '2020-12-09', '女', '231421412342');
INSERT INTO `user` VALUES (4, 'd', '11111', 'df', '111', '111', '2019-12-13', '男', '111');
INSERT INTO `user` VALUES (5, 'fff', '123456', 'fff', '123456', '123456', '2000-02-05', '男', '123456');
INSERT INTO `user` VALUES (6, 'aaa', '123', 'aaa', 'aaa', 'aaa', '2022-04-01', '男', 'aaa');
INSERT INTO `user` VALUES (7, 'test', '123', 'test', '123@qq.com', '123', '2022-05-20', '男', '123');
INSERT INTO `user` VALUES (34, 'hhh', '111', 'hhh', 'hhh@qq.com', '111', '2022-05-09', '男', '111');

-- ----------------------------
-- Table structure for userlog
-- ----------------------------
DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `in` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `out` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userlog
-- ----------------------------
INSERT INTO `userlog` VALUES (1, 'aaa', '0:0:0:0:0:0:0:1', '2022-04-19 23:19:29', '2022-04-19 23:19:30');
INSERT INTO `userlog` VALUES (2, 'test', '0:0:0:0:0:0:0:1', '2022-04-23 18:29:59', '2022-04-23 18:38:13');
INSERT INTO `userlog` VALUES (3, 'test', '0:0:0:0:0:0:0:1', '2022-04-24 16:02:34', '2022-04-24 16:05:48');

-- ----------------------------
-- Table structure for viewrecord
-- ----------------------------
DROP TABLE IF EXISTS `viewrecord`;
CREATE TABLE `viewrecord`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NULL DEFAULT NULL,
  `pid` int NULL DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `end` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `minus` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of viewrecord
-- ----------------------------
INSERT INTO `viewrecord` VALUES (1, 1, 2, '手机', '2022-04-21 00:00:58', '2022-04-21 00:01:52', '4');
INSERT INTO `viewrecord` VALUES (2, 1, 1, '手机', '2022-04-21 00:03:57', '2022-04-21 00:04:00', '3');
INSERT INTO `viewrecord` VALUES (3, 1, 3, '电脑', '2022-04-21 00:04:58', '2022-04-21 00:05:00', '2');
INSERT INTO `viewrecord` VALUES (4, 1, 4, '电脑', '2022-04-21 00:05:42', '2022-04-21 00:05:44', '1');
INSERT INTO `viewrecord` VALUES (5, 1, 5, '相机', '2022-04-21 00:06:03', '2022-04-21 00:06:09', '6');
INSERT INTO `viewrecord` VALUES (17, 7, 16, '书', '2022-05-22 20:07:00', '2022-05-22 20:07:50', '50');

SET FOREIGN_KEY_CHECKS = 1;
