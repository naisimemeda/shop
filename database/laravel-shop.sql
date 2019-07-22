/*
 Navicat Premium Data Transfer

 Source Server         : homestead
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 127.0.0.1:33060
 Source Schema         : laravel-shop

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 22/07/2019 18:01:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, '用户管理', 'fa-users', 'auth/users', NULL, NULL, '2019-07-22 10:06:46');
INSERT INTO `admin_menu` VALUES (4, 2, 4, '角色', 'fa-user', 'auth/roles', NULL, NULL, '2019-07-22 10:06:54');
INSERT INTO `admin_menu` VALUES (5, 2, 5, '权限', 'fa-ban', 'auth/permissions', NULL, NULL, '2019-07-22 10:07:20');
INSERT INTO `admin_menu` VALUES (6, 2, 6, '菜单', 'fa-bars', 'auth/menu', NULL, NULL, '2019-07-22 10:07:29');
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 0, '用户管理', 'fa-users', '/users', NULL, '2019-07-22 10:08:09', '2019-07-22 10:08:09');
INSERT INTO `admin_menu` VALUES (9, 0, 0, '商品管理', 'fa-steam-square', '/products', NULL, '2019-07-22 10:09:12', '2019-07-22 10:09:12');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '192.168.10.1', '[]', '2019-07-22 10:06:28', '2019-07-22 10:06:28');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-22 10:06:30', '2019-07-22 10:06:30');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-22 10:06:34', '2019-07-22 10:06:34');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/menu/3/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-22 10:06:38', '2019-07-22 10:06:38');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/menu/3', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"f1BZ5q1G8lg2PCqqtQRgSnfIqamaY4sK0ZybOpsy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-07-22 10:06:46', '2019-07-22 10:06:46');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-07-22 10:06:46', '2019-07-22 10:06:46');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu/4/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-22 10:06:48', '2019-07-22 10:06:48');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/menu/4', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"f1BZ5q1G8lg2PCqqtQRgSnfIqamaY4sK0ZybOpsy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-07-22 10:06:54', '2019-07-22 10:06:54');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-07-22 10:06:54', '2019-07-22 10:06:54');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/menu/5/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-22 10:06:56', '2019-07-22 10:06:56');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/menu/5', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"f1BZ5q1G8lg2PCqqtQRgSnfIqamaY4sK0ZybOpsy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-07-22 10:07:20', '2019-07-22 10:07:20');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-07-22 10:07:20', '2019-07-22 10:07:20');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/menu/6/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-22 10:07:22', '2019-07-22 10:07:22');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/menu/6', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"f1BZ5q1G8lg2PCqqtQRgSnfIqamaY4sK0ZybOpsy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2019-07-22 10:07:29', '2019-07-22 10:07:29');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-07-22 10:07:29', '2019-07-22 10:07:29');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"f1BZ5q1G8lg2PCqqtQRgSnfIqamaY4sK0ZybOpsy\"}', '2019-07-22 10:08:09', '2019-07-22 10:08:09');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-07-22 10:08:09', '2019-07-22 10:08:09');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-07-22 10:08:10', '2019-07-22 10:08:10');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-22 10:08:11', '2019-07-22 10:08:11');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-22 10:08:14', '2019-07-22 10:08:14');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-steam-square\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"f1BZ5q1G8lg2PCqqtQRgSnfIqamaY4sK0ZybOpsy\"}', '2019-07-22 10:09:12', '2019-07-22 10:09:12');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-07-22 10:09:13', '2019-07-22 10:09:13');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-07-22 10:09:13', '2019-07-22 10:09:13');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-22 10:09:14', '2019-07-22 10:09:14');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-07-22 10:09:17', '2019-07-22 10:09:17');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/products', 'GET', '192.168.10.1', '[]', '2019-07-22 10:13:26', '2019-07-22 10:13:26');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin', 'GET', '192.168.10.1', '[]', '2019-07-22 13:44:53', '2019-07-22 13:44:53');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-07-22 10:06:17', '2019-07-22 10:06:17');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$BZppmZegvVfwHzIWXtAAzukzs7WOAtKlZEXk0KntdfVuhHgtAYwp6', 'Administrator', NULL, '2LysRHwJEdKqC3MX6ZfcpbDH9eEdDnm82Z4Ne9b2DbYyhkLnR5s7tdzChfGa', '2019-07-22 10:06:17', '2019-07-22 10:06:17');

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cart_items_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `cart_items_product_sku_id_foreign`(`product_sku_id`) USING BTREE,
  CONSTRAINT `cart_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_07_20_110321_create_user_addresses_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_07_21_142927_create_products_table', 1);
INSERT INTO `migrations` VALUES (6, '2019_07_21_142949_create_product_skus_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_07_21_151539_create_user_favorite_products_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_07_21_152715_create_cart_items_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_07_22_101634_create_orders_table', 2);
INSERT INTO `migrations` VALUES (10, '2019_07_22_101732_create_order_items_table', 2);

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `rating` int(10) UNSIGNED NULL DEFAULT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `reviewed_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_items_order_id_foreign`(`order_id`) USING BTREE,
  INDEX `order_items_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `order_items_product_sku_id_foreign`(`product_sku_id`) USING BTREE,
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES (1, 12, 3, 9, 1, 6339.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (2, 13, 3, 9, 1, 6339.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (4, 15, 3, 9, 1, 6339.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (5, 16, 3, 9, 1, 6339.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (6, 17, 3, 9, 1, 6339.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (7, 18, 10, 30, 1, 424.00, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10, 2) NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `paid_at` datetime(0) NULL DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `refund_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `reviewed` tinyint(1) NOT NULL DEFAULT 0,
  `ship_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orders_no_unique`(`no`) USING BTREE,
  UNIQUE INDEX `orders_refund_no_unique`(`refund_no`) USING BTREE,
  INDEX `orders_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (12, '20190722142506279093', 1, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c823\\u53f7\",\"zip\":634300,\"contact_name\":\"\\u621a\\u745e\",\"contact_phone\":\"18512421374\"}', 6339.00, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-07-22 14:25:06', '2019-07-22 14:25:06');
INSERT INTO `orders` VALUES (13, '20190722142538395937', 1, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c823\\u53f7\",\"zip\":634300,\"contact_name\":\"\\u621a\\u745e\",\"contact_phone\":\"18512421374\"}', 6339.00, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-07-22 14:25:38', '2019-07-22 14:25:38');
INSERT INTO `orders` VALUES (15, '20190722143037186991', 1, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c823\\u53f7\",\"zip\":634300,\"contact_name\":\"\\u621a\\u745e\",\"contact_phone\":\"18512421374\"}', 12678.00, NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-07-22 14:30:37', '2019-07-22 14:30:37');
INSERT INTO `orders` VALUES (16, '20190722143123917367', 1, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c823\\u53f7\",\"zip\":634300,\"contact_name\":\"\\u621a\\u745e\",\"contact_phone\":\"18512421374\"}', 12678.00, NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2019-07-22 14:31:23', '2019-07-22 14:31:54');
INSERT INTO `orders` VALUES (17, '20190722143404092917', 1, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c823\\u53f7\",\"zip\":634300,\"contact_name\":\"\\u621a\\u745e\",\"contact_phone\":\"18512421374\"}', 12678.00, NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2019-07-22 14:34:04', '2019-07-22 14:34:36');
INSERT INTO `orders` VALUES (18, '20190722151820299318', 1, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c823\\u53f7\",\"zip\":634300,\"contact_name\":\"\\u621a\\u745e\",\"contact_phone\":\"18512421374\"}', 424.00, NULL, '2019-07-22 15:21:23', 'alipay', '2019072222001442511000030802', 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2019-07-22 15:18:20', '2019-07-22 15:21:23');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_skus
-- ----------------------------
DROP TABLE IF EXISTS `product_skus`;
CREATE TABLE `product_skus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_skus_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `product_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_skus
-- ----------------------------
INSERT INTO `product_skus` VALUES (1, 'unde', 'Illo ut quod in quis et nesciunt.', 1921.00, 58928, 1, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (2, 'dolor', 'Ipsum esse consequatur blanditiis quo delectus aut distinctio sunt.', 8176.00, 35902, 1, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (3, 'voluptatum', 'Consequatur modi eos enim deserunt quo sed.', 6041.00, 51023, 1, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (4, 'distinctio', 'Iusto sed ullam quisquam tempore dolor.', 1742.00, 34358, 2, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (5, 'earum', 'Et nisi ducimus harum aperiam.', 7221.00, 28162, 2, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (6, 'quia', 'Unde eos aliquid in tenetur ut.', 404.00, 19920, 2, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (7, 'modi', 'Dolor ipsum distinctio pariatur esse voluptas.', 7772.00, 53450, 3, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (8, 'excepturi', 'Ea non qui velit.', 6336.00, 73350, 3, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (9, 'et', 'Praesentium earum sunt earum similique.', 6339.00, 9980, 3, '2019-07-22 10:13:22', '2019-07-22 14:34:36');
INSERT INTO `product_skus` VALUES (10, 'exercitationem', 'Odio dolorem et quis natus labore.', 1480.00, 51942, 4, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (11, 'temporibus', 'Et maxime quibusdam dolor voluptatem soluta delectus aliquam et.', 3100.00, 71748, 4, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (12, 'et', 'Vero magni non est.', 3946.00, 79258, 4, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (13, 'ut', 'Consequatur consectetur quidem quos ea aspernatur dolorum sint.', 267.00, 96050, 5, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (14, 'facere', 'Excepturi suscipit excepturi accusantium saepe assumenda modi.', 6118.00, 52568, 5, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (15, 'cupiditate', 'Aut facere sit vitae.', 8888.00, 63255, 5, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (16, 'dolore', 'Perspiciatis laborum laudantium voluptatem at.', 2699.00, 51090, 6, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (17, 'est', 'Et ipsam hic ex ex fugit adipisci.', 7673.00, 98888, 6, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (18, 'nisi', 'Ratione amet quod iure aut et ducimus.', 5902.00, 18145, 6, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (19, 'accusantium', 'Labore ea quod deleniti repellat explicabo dolore ea sed.', 9220.00, 35062, 7, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (20, 'ab', 'Quia qui neque sit quisquam sit perspiciatis.', 9066.00, 30193, 7, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (21, 'excepturi', 'In maiores animi voluptates hic est reiciendis.', 9213.00, 50166, 7, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (22, 'veniam', 'Porro aut ipsum et iusto earum id nemo.', 5705.00, 16524, 8, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (23, 'aliquid', 'Id sit enim sit architecto dolor omnis.', 7641.00, 83213, 8, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (24, 'reiciendis', 'Accusantium omnis tenetur tempora excepturi non.', 7309.00, 58910, 8, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (25, 'dolores', 'Quibusdam ipsum molestias eos et illo debitis ut quia.', 5949.00, 42724, 9, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (26, 'molestiae', 'Dignissimos odio dolorum architecto deleniti ipsam.', 7889.00, 79118, 9, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (27, 'illum', 'Necessitatibus eos ab dolorum magnam maiores odio enim.', 6440.00, 96604, 9, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (28, 'mollitia', 'A qui ipsam reiciendis aliquam in esse numquam.', 8832.00, 95654, 10, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (29, 'nisi', 'Dolor qui ut natus architecto incidunt quasi.', 1725.00, 22517, 10, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (30, 'repellendus', 'Praesentium et occaecati neque at qui maiores fugit.', 424.00, 16722, 10, '2019-07-22 10:13:22', '2019-07-22 15:18:20');
INSERT INTO `product_skus` VALUES (31, 'suscipit', 'Qui illum beatae rerum ut.', 8928.00, 20866, 11, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (32, 'quos', 'Doloribus earum est possimus.', 2321.00, 42497, 11, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (33, 'expedita', 'Quis ut laborum saepe culpa.', 4204.00, 20244, 11, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (34, 'qui', 'Aperiam provident quae ut quidem expedita.', 2774.00, 37438, 12, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (35, 'soluta', 'Voluptatem adipisci excepturi aut autem modi repellendus.', 9387.00, 23885, 12, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (36, 'et', 'Veniam est voluptates et ut nobis aut voluptatem deleniti.', 1397.00, 73715, 12, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (37, 'repudiandae', 'Et voluptates officia excepturi inventore.', 7807.00, 82019, 13, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (38, 'totam', 'Sit perspiciatis ratione quis id nostrum ut mollitia.', 861.00, 42092, 13, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (39, 'reiciendis', 'Earum nisi minima earum nihil molestiae aspernatur.', 9939.00, 30583, 13, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (40, 'esse', 'Minus cupiditate optio sunt eos eos officia numquam vel.', 5974.00, 89169, 14, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (41, 'at', 'Qui accusantium similique quia quidem ut.', 966.00, 26808, 14, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (42, 'voluptate', 'Ea dolor aspernatur ab necessitatibus consectetur.', 1062.00, 58856, 14, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (43, 'velit', 'At voluptas officia iste vitae repudiandae et.', 9434.00, 16225, 15, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (44, 'consequatur', 'Laboriosam quidem sit quae et corrupti accusantium ipsum.', 9019.00, 91410, 15, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (45, 'enim', 'Iste praesentium ut voluptatem quisquam.', 8727.00, 3452, 15, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (46, 'qui', 'Quis quas voluptate qui laudantium.', 9328.00, 35923, 16, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (47, 'quia', 'Velit excepturi quaerat perferendis nesciunt ut qui.', 6742.00, 7567, 16, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (48, 'et', 'Debitis ducimus nostrum voluptatem non tempora saepe.', 5099.00, 98365, 16, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (49, 'dolorem', 'Tempore eum molestiae ad ut.', 1029.00, 54365, 17, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (50, 'a', 'Nulla porro corporis consequuntur vero praesentium quia.', 2011.00, 14420, 17, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (51, 'velit', 'Alias quod et nisi expedita.', 1387.00, 55341, 17, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (52, 'laboriosam', 'Corrupti voluptas expedita ad harum quisquam molestias praesentium in.', 4607.00, 78882, 18, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (53, 'fugit', 'Dolores necessitatibus a aut reiciendis quo.', 34.00, 46482, 18, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (54, 'labore', 'Ut explicabo libero unde molestias sed aut et.', 1847.00, 76616, 18, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (55, 'et', 'Est vel consectetur vel atque et architecto possimus sequi.', 8145.00, 33766, 19, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (56, 'mollitia', 'Tenetur mollitia natus asperiores et iusto qui quis natus.', 6360.00, 4177, 19, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (57, 'facere', 'Eum voluptatum blanditiis consectetur est.', 5511.00, 61777, 19, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (58, 'corrupti', 'Nihil voluptas illum itaque dolores et.', 9327.00, 36245, 20, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (59, 'molestiae', 'Sit corporis doloribus molestiae consequatur ab officiis.', 2762.00, 16187, 20, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (60, 'dolores', 'A dicta voluptate et quaerat.', 1680.00, 78207, 20, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (61, 'fugit', 'Id et ipsum nihil autem fugiat nihil.', 1353.00, 81138, 21, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (62, 'placeat', 'Aut molestiae veritatis sit eaque et.', 7982.00, 82667, 21, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (63, 'quis', 'Ut numquam incidunt possimus voluptates.', 6315.00, 39925, 21, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (64, 'hic', 'Perspiciatis molestias aperiam fugiat et et illum.', 629.00, 98126, 22, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (65, 'ullam', 'Asperiores sequi sapiente culpa dolores et omnis sed.', 351.00, 11178, 22, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (66, 'praesentium', 'Quam id dolores tempore beatae placeat nihil.', 5898.00, 19775, 22, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (67, 'blanditiis', 'Cupiditate repudiandae earum aut beatae et laboriosam.', 3725.00, 60039, 23, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (68, 'voluptate', 'Enim voluptatibus accusantium quo rem autem ducimus.', 1194.00, 38351, 23, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (69, 'similique', 'Non maiores sint explicabo sapiente dolor occaecati.', 4758.00, 2013, 23, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (70, 'tempora', 'Laboriosam praesentium consequatur consequatur cupiditate ut dolorem vel.', 2839.00, 50942, 24, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (71, 'vel', 'Praesentium et sit molestias omnis quis natus.', 9945.00, 58269, 24, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (72, 'reprehenderit', 'Labore corporis aut accusantium quia.', 3399.00, 18328, 24, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (73, 'voluptas', 'Modi velit autem quis libero.', 6809.00, 29227, 25, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (74, 'enim', 'Cumque provident molestiae sapiente eligendi ut.', 5776.00, 37261, 25, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (75, 'reprehenderit', 'Error aut reiciendis autem aliquid sit ut.', 6977.00, 72552, 25, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (76, 'reiciendis', 'Ipsam id saepe eius cupiditate ut.', 3307.00, 26111, 26, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (77, 'voluptatibus', 'Fugit aliquid sit ad non.', 7121.00, 38966, 26, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (78, 'ut', 'Sint sed quia et corporis.', 372.00, 83338, 26, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (79, 'consequuntur', 'Aut reprehenderit aliquam praesentium labore.', 169.00, 58760, 27, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (80, 'inventore', 'Molestias qui eos debitis mollitia deleniti.', 2688.00, 18296, 27, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (81, 'debitis', 'Ad rerum ipsum vero iure officia.', 8812.00, 2515, 27, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (82, 'consequatur', 'Doloribus aliquid quisquam quos quo saepe dolorem sed.', 9752.00, 6415, 28, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (83, 'eum', 'Qui molestias non aliquam id sed.', 4728.00, 9144, 28, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (84, 'voluptatibus', 'Sed illo facilis aspernatur voluptas necessitatibus.', 8487.00, 80269, 28, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (85, 'velit', 'Libero ut et quae quia et.', 2613.00, 10324, 29, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (86, 'quia', 'Maxime eaque explicabo magnam assumenda nesciunt quos hic harum.', 9556.00, 1601, 29, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (87, 'qui', 'Reiciendis assumenda incidunt maxime et nemo non commodi quas.', 9740.00, 47268, 29, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (88, 'quisquam', 'Deleniti sint tempora nulla ea rerum dolor.', 6836.00, 29271, 30, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (89, 'animi', 'Quia omnis qui rerum laudantium aut.', 155.00, 42111, 30, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `product_skus` VALUES (90, 'occaecati', 'Tenetur recusandae voluptatem libero labore.', 8269.00, 55428, 30, '2019-07-22 10:13:22', '2019-07-22 10:13:22');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT 1,
  `rating` double(8, 2) NOT NULL DEFAULT 5.00,
  `sold_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `review_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'at', 'Maxime molestiae est quas vel est corporis.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 3.00, 0, 0, 1921.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (2, 'dolor', 'Alias sequi alias quia voluptatem suscipit.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 1.00, 0, 0, 404.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (3, 'corporis', 'Est dolorem qui nemo autem qui consequuntur fuga.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 5.00, 0, 0, 6336.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (4, 'minus', 'Dolor numquam dolorem architecto ducimus odit non.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 3.00, 0, 0, 1480.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (5, 'eaque', 'Error aut quia eum magni.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 1.00, 0, 0, 267.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (6, 'veniam', 'Fugiat dolore ut eum odio tenetur at ut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 1.00, 0, 0, 2699.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (7, 'et', 'Occaecati debitis repellat sint.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 1.00, 0, 0, 9066.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (8, 'sit', 'Aut enim dolorem nam qui omnis minus et.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 3.00, 0, 0, 5705.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (9, 'corporis', 'Placeat beatae laborum est quasi illo eum corrupti ea.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 1.00, 0, 0, 5949.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (10, 'doloremque', 'Nostrum nisi et fugit velit est.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 1.00, 0, 0, 424.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (11, 'et', 'Numquam consectetur iure voluptatibus molestias earum omnis eaque.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 1.00, 0, 0, 2321.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (12, 'et', 'Doloribus adipisci et quo natus harum dolorum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 2.00, 0, 0, 1397.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (13, 'aut', 'Sit aliquam in velit eos necessitatibus sed quo voluptatem.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 1.00, 0, 0, 861.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (14, 'et', 'Dolorem eos vel omnis unde dolores rerum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 5.00, 0, 0, 966.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (15, 'recusandae', 'In vel odit aliquam.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 1.00, 0, 0, 8727.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (16, 'omnis', 'Quis numquam distinctio beatae corporis similique.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 5.00, 0, 0, 5099.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (17, 'magni', 'Nesciunt quam dolor dolores voluptas voluptatem pariatur nemo.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 3.00, 0, 0, 1029.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (18, 'minima', 'In et iste repellat voluptatum dolor est vel.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 1.00, 0, 0, 34.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (19, 'nulla', 'Provident ipsum incidunt eum ullam provident animi aut quia.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 0.00, 0, 0, 5511.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (20, 'perspiciatis', 'Quia enim veniam a.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 5.00, 0, 0, 1680.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (21, 'quod', 'Cupiditate sint debitis tempora et deleniti officia omnis.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 1.00, 0, 0, 1353.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (22, 'quibusdam', 'Voluptas doloremque eum reiciendis dolore minus ut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 5.00, 0, 0, 351.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (23, 'incidunt', 'Distinctio maiores maxime aut soluta non.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 1.00, 0, 0, 1194.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (24, 'facilis', 'Ex sunt iure et vel excepturi porro aspernatur.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 2.00, 0, 0, 2839.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (25, 'quas', 'Odio accusantium culpa enim sapiente qui.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 1.00, 0, 0, 5776.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (26, 'placeat', 'Quam vel asperiores est est.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 5.00, 0, 0, 372.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (27, 'omnis', 'Est deserunt amet ut sint quibusdam voluptatum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 1.00, 0, 0, 169.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (28, 'repellendus', 'Ut praesentium non rerum aspernatur.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 4.00, 0, 0, 4728.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (29, 'sit', 'Reprehenderit omnis molestias odio omnis et.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 0.00, 0, 0, 2613.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');
INSERT INTO `products` VALUES (30, 'placeat', 'Facere aut sint autem nihil molestiae aut illum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 4.00, 0, 0, 155.00, '2019-07-22 10:13:22', '2019-07-22 10:13:22');

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_addresses_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES (2, 1, '河北省', '石家庄市', '长安区', '第80街道第823号', 634300, '戚瑞', '18512421374', '2019-07-22 15:18:20', '2019-07-22 10:04:58', '2019-07-22 15:18:20');
INSERT INTO `user_addresses` VALUES (3, 1, '河北省', '石家庄市', '长安区', '第96街道第645号', 417300, '谈红', '14791760755', NULL, '2019-07-22 10:04:58', '2019-07-22 10:04:58');
INSERT INTO `user_addresses` VALUES (4, 1, '河北省', '石家庄市', '长安区', '第31街道第599号', 487900, '闵英', '17017432839', NULL, '2019-07-22 10:04:58', '2019-07-22 10:04:58');

-- ----------------------------
-- Table structure for user_favorite_products
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_products`;
CREATE TABLE `user_favorite_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_favorite_products_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `user_favorite_products_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `user_favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '奈斯', '2514430140@qq.com', '2019-07-22 10:04:19', '$2y$10$ZhSDMfVV.LCL.8bMT8RoLuGhIsFr5bsTy5dBgT.D5hC4eLD/9dr9.', NULL, '2019-07-22 10:04:03', '2019-07-22 10:04:19');

SET FOREIGN_KEY_CHECKS = 1;
