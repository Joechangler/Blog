/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 03/09/2023 21:08:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_attach
-- ----------------------------
DROP TABLE IF EXISTS `t_attach`;
CREATE TABLE `t_attach`  (
  `id` int unsigned NOT NULL,
  `fname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ftype` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  `fkey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `author_id` int(0) NULL DEFAULT NULL,
  `created` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_attach
-- ----------------------------
INSERT INTO `t_attach` VALUES (4, 'u5e4i0ut8gjbgr1fe9lc4917ah.png', 'image', '/upload/2023/09/t14coaoench0lqfplq9ge68n3a.png', 1, 1693668961);

-- ----------------------------
-- Table structure for t_comments
-- ----------------------------
DROP TABLE IF EXISTS `t_comments`;
CREATE TABLE `t_comments`  (
  `coid` int unsigned NOT NULL,
  `cid` int unsigned NULL,
  `created` int unsigned NULL,
  `author` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `author_id` int unsigned NULL,
  `owner_id` int unsigned NULL,
  `mail` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `agent` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `type` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'comment',
  `status` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'approved',
  `parent` int unsigned NULL,
  PRIMARY KEY (`coid`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE,
  INDEX `created`(`created`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_contents
-- ----------------------------
DROP TABLE IF EXISTS `t_contents`;
CREATE TABLE `t_contents`  (
  `cid` int unsigned NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `created` int unsigned NULL,
  `modified` int unsigned NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '内容文字',
  `author_id` int unsigned NULL,
  `type` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'post',
  `status` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'publish',
  `tags` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `categories` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `hits` int unsigned NULL,
  `comments_num` int unsigned NULL,
  `allow_comment` tinyint(1) NULL DEFAULT 1,
  `allow_ping` tinyint(1) NULL DEFAULT 1,
  `allow_feed` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`cid`) USING BTREE,
  UNIQUE INDEX `slug`(`slug`) USING BTREE,
  INDEX `created`(`created`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_contents
-- ----------------------------
INSERT INTO `t_contents` VALUES (10, 'About My Blog', 'about', 1693706384, 1693723654, '测试ing', 1, 'page', 'modify', NULL, NULL, 3, 0, NULL, NULL, NULL);
INSERT INTO `t_contents` VALUES (11, 'Test', NULL, 1693727455, 1693727455, '    hello，world', 1, 'post', 'publish', '测试', '随笔', 1, 0, 1, 1, 1);
INSERT INTO `t_contents` VALUES (12, 'Test2', NULL, 1693743488, 1693743488, '    hello，blog', 1, 'post', 'publish', '测试', '默认分类', 0, 0, 1, 1, 1);

-- ----------------------------
-- Table structure for t_logs
-- ----------------------------
DROP TABLE IF EXISTS `t_logs`;
CREATE TABLE `t_logs`  (
  `id` int unsigned NOT NULL,
  `action` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `data` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `author_id` int(0) NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `created` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_logs
-- ----------------------------
INSERT INTO `t_logs` VALUES (1, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1496815277);
INSERT INTO `t_logs` VALUES (2, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1496815280);
INSERT INTO `t_logs` VALUES (3, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1496815318);
INSERT INTO `t_logs` VALUES (4, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1496815398);
INSERT INTO `t_logs` VALUES (5, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1496815482);
INSERT INTO `t_logs` VALUES (6, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1496815492);
INSERT INTO `t_logs` VALUES (7, '保存系统设置', '{\"site_keywords\":\"Blog\",\"site_description\":\"SpringBoot+Mybatis+thymeleaf 搭建的 Java 博客系统\",\"site_title\":\"Blog\",\"site_theme\":\"default\",\"allow_install\":\"\"}', 1, '0:0:0:0:0:0:0:1', 1496815955);
INSERT INTO `t_logs` VALUES (8, '保存系统设置', '{\"site_keywords\":\"Blog\",\"site_description\":\"SpringBoot+Mybatis+thymeleaf 搭建的 Java 博客系统\",\"site_title\":\"Blog\",\"site_theme\":\"default\",\"allow_install\":\"\"}', 1, '0:0:0:0:0:0:0:1', 1496815964);
INSERT INTO `t_logs` VALUES (9, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1496989015);
INSERT INTO `t_logs` VALUES (10, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1496989366);
INSERT INTO `t_logs` VALUES (11, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497317863);
INSERT INTO `t_logs` VALUES (12, '保存系统设置', '{\"social_zhihu\":\"https://www.zhihu.com/people/tian-zhisheng/activities\",\"social_github\":\"https://github.com/zhisheng17\",\"social_twitter\":\"\",\"social_weibo\":\"\"}', 1, '0:0:0:0:0:0:0:1', 1497318696);
INSERT INTO `t_logs` VALUES (13, '修改个人信息', '{\"uid\":1,\"email\":\"1041218129@qq.com\",\"screenName\":\"admin\"}', 1, '0:0:0:0:0:0:0:1', 1497319220);
INSERT INTO `t_logs` VALUES (14, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497319856);
INSERT INTO `t_logs` VALUES (15, '登录后台', NULL, 1, '127.0.0.1', 1497321561);
INSERT INTO `t_logs` VALUES (16, '登录后台', NULL, 1, '127.0.0.1', 1497322738);
INSERT INTO `t_logs` VALUES (17, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497323446);
INSERT INTO `t_logs` VALUES (18, '删除文章', '2', 1, '0:0:0:0:0:0:0:1', 1497323495);
INSERT INTO `t_logs` VALUES (19, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497427641);
INSERT INTO `t_logs` VALUES (20, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497428250);
INSERT INTO `t_logs` VALUES (21, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497428290);
INSERT INTO `t_logs` VALUES (22, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497428556);
INSERT INTO `t_logs` VALUES (23, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497674581);
INSERT INTO `t_logs` VALUES (24, '修改个人信息', '{\"uid\":1,\"email\":\"1041218129@qq.com\",\"screenName\":\"admin\"}', 1, '0:0:0:0:0:0:0:1', 1497674690);
INSERT INTO `t_logs` VALUES (25, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497676623);
INSERT INTO `t_logs` VALUES (26, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497683817);
INSERT INTO `t_logs` VALUES (27, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1497685128);
INSERT INTO `t_logs` VALUES (28, '登录后台', NULL, 1, '127.0.0.1', 1497689032);
INSERT INTO `t_logs` VALUES (29, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693638569);
INSERT INTO `t_logs` VALUES (30, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693666681);
INSERT INTO `t_logs` VALUES (31, '删除文章', '6', 1, '0:0:0:0:0:0:0:1', 1693666855);
INSERT INTO `t_logs` VALUES (32, '删除文章', '/upload/2017/06/t93vgdj6o8irgo87ds56u0ou0s.jpeg', 1, '0:0:0:0:0:0:0:1', 1693666880);
INSERT INTO `t_logs` VALUES (33, '修改个人信息', '{\"uid\":1,\"email\":\"chen665775@qq.com\",\"screenName\":\"admin\"}', 1, '0:0:0:0:0:0:0:1', 1693666975);
INSERT INTO `t_logs` VALUES (34, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693667394);
INSERT INTO `t_logs` VALUES (35, '删除文章', '7', 1, '0:0:0:0:0:0:0:1', 1693668458);
INSERT INTO `t_logs` VALUES (36, '删除文章', '8', 1, '0:0:0:0:0:0:0:1', 1693668462);
INSERT INTO `t_logs` VALUES (37, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693668736);
INSERT INTO `t_logs` VALUES (38, '删除文章', '/upload/2023/09/14p26f4pqogeuptn9ifoqlg22h.png', 1, '0:0:0:0:0:0:0:1', 1693668882);
INSERT INTO `t_logs` VALUES (39, '删除文章', '/upload/2023/09/u5e4i0ut8gjbgr1fe9lc4917ah.png', 1, '0:0:0:0:0:0:0:1', 1693668970);
INSERT INTO `t_logs` VALUES (40, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693669698);
INSERT INTO `t_logs` VALUES (41, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693703790);
INSERT INTO `t_logs` VALUES (42, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693704803);
INSERT INTO `t_logs` VALUES (43, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693705748);
INSERT INTO `t_logs` VALUES (44, '删除文章', '5', 1, '0:0:0:0:0:0:0:1', 1693706117);
INSERT INTO `t_logs` VALUES (45, '删除文章', '4', 1, '0:0:0:0:0:0:0:1', 1693706121);
INSERT INTO `t_logs` VALUES (46, '删除文章', '3', 1, '0:0:0:0:0:0:0:1', 1693706127);
INSERT INTO `t_logs` VALUES (47, '删除页面', '9', 1, '0:0:0:0:0:0:0:1', 1693706143);
INSERT INTO `t_logs` VALUES (48, '删除页面', '1', 1, '0:0:0:0:0:0:0:1', 1693706155);
INSERT INTO `t_logs` VALUES (49, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693706547);
INSERT INTO `t_logs` VALUES (50, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693706885);
INSERT INTO `t_logs` VALUES (51, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693722833);
INSERT INTO `t_logs` VALUES (52, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693723046);
INSERT INTO `t_logs` VALUES (53, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693724672);
INSERT INTO `t_logs` VALUES (54, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693726981);
INSERT INTO `t_logs` VALUES (55, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693727284);
INSERT INTO `t_logs` VALUES (56, '保存系统设置', '{\"social_github\":\"\",\"social_twitter\":\"\",\"social_zhuye\":\"https://leyu.zag9.cn/\",\"social_weibo\":\"\"}', 1, '0:0:0:0:0:0:0:1', 1693727316);
INSERT INTO `t_logs` VALUES (57, '登录后台', NULL, 1, '0:0:0:0:0:0:0:1', 1693743386);

-- ----------------------------
-- Table structure for t_metas
-- ----------------------------
DROP TABLE IF EXISTS `t_metas`;
CREATE TABLE `t_metas`  (
  `mid` int unsigned NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `description` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sort` int unsigned NULL,
  `parent` int unsigned NULL,
  PRIMARY KEY (`mid`) USING BTREE,
  INDEX `slug`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_metas
-- ----------------------------
INSERT INTO `t_metas` VALUES (6, 'my account', 'https://mp.weixin.qq.com/s/deQyYYvV4vCxBkJYsWDcuA', 'link', '', 1, 0);
INSERT INTO `t_metas` VALUES (7, 'my website', 'http://leyu.zag9.cn', 'link', '', 0, 0);
INSERT INTO `t_metas` VALUES (8, '随笔', '随笔', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (9, 'Java', 'Java', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (10, 'Java', 'Java', 'category', '有关Java的博客', 0, 0);
INSERT INTO `t_metas` VALUES (11, 'HashMap', 'HashMap', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (12, 'HashTable', 'HashTable', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (13, 'HashSet', 'HashSet', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (14, 'ConcurrentHashMap', 'ConcurrentHashMap', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (15, 'Pyspider', 'Pyspider', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (16, 'Python', 'Python', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (17, '爬虫', '爬虫', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (19, 'Python', 'Python', 'category', '有关Python的博客', 0, 0);
INSERT INTO `t_metas` VALUES (20, '随笔', NULL, 'category', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (21, '测试', '测试', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (22, '测试2', '测试2', 'tag', NULL, 0, 0);
INSERT INTO `t_metas` VALUES (23, '默认分类', '默认分类', 'category', NULL, 0, 0);

-- ----------------------------
-- Table structure for t_options
-- ----------------------------
DROP TABLE IF EXISTS `t_options`;
CREATE TABLE `t_options`  (
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `value` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  `description` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_options
-- ----------------------------
INSERT INTO `t_options` VALUES ('allow_install', '', '');
INSERT INTO `t_options` VALUES ('site_description', 'SpringBoot+Mybatis+thymeleaf 搭建的 Java 博客系统', NULL);
INSERT INTO `t_options` VALUES ('site_keywords', 'Blog', NULL);
INSERT INTO `t_options` VALUES ('site_theme', 'default', NULL);
INSERT INTO `t_options` VALUES ('site_title', 'Blog', '');
INSERT INTO `t_options` VALUES ('social_github', '', NULL);
INSERT INTO `t_options` VALUES ('social_twitter', '', NULL);
INSERT INTO `t_options` VALUES ('social_weibo', '', NULL);
INSERT INTO `t_options` VALUES ('social_zhuye', 'https://leyu.zag9.cn/', NULL);

-- ----------------------------
-- Table structure for t_relationships
-- ----------------------------
DROP TABLE IF EXISTS `t_relationships`;
CREATE TABLE `t_relationships`  (
  `cid` int unsigned NOT NULL,
  `mid` int unsigned NOT NULL,
  PRIMARY KEY (`cid`, `mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_relationships
-- ----------------------------
INSERT INTO `t_relationships` VALUES (11, 20);
INSERT INTO `t_relationships` VALUES (11, 21);
INSERT INTO `t_relationships` VALUES (12, 21);
INSERT INTO `t_relationships` VALUES (12, 23);

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users`  (
  `uid` int unsigned NOT NULL,
  `username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `home_url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `screen_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `created` int unsigned NULL,
  `activated` int unsigned NULL,
  `logged` int unsigned NULL,
  `group_name` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'visitor',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `name`(`username`) USING BTREE,
  UNIQUE INDEX `mail`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES (1, 'admin', 'a66abb5684c45962d887564f08346e8d', 'chen665775@qq.com', NULL, 'admin', 1490756162, 0, 0, 'visitor');

SET FOREIGN_KEY_CHECKS = 1;
