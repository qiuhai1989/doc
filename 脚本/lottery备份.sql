/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50518
Source Host           : localhost:3306
Source Database       : lottery

Target Server Type    : MYSQL
Target Server Version : 50518
File Encoding         : 65001

Date: 2017-01-06 17:45:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_schedule_task_job
-- ----------------------------
DROP TABLE IF EXISTS `cms_schedule_task_job`;
CREATE TABLE `cms_schedule_task_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(100) DEFAULT NULL COMMENT '任务标识',
  `job_group` varchar(100) DEFAULT NULL COMMENT '所属组标识',
  `job_status` varchar(1) DEFAULT NULL COMMENT '状态0不可用1可用',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT '时间表达式',
  `description` varchar(100) DEFAULT NULL,
  `bean_class` varchar(100) DEFAULT NULL,
  `is_concurrent` varchar(1) DEFAULT NULL COMMENT '0同步1异步',
  `spring_id` varchar(100) DEFAULT NULL,
  `method_name` varchar(100) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='定时任务表';

-- ----------------------------
-- Records of cms_schedule_task_job
-- ----------------------------
INSERT INTO `cms_schedule_task_job` VALUES ('1', 'demo', 'test', '1', '0/50 * * * * ?', '测试', 'com.hai.demo.schedule.schedule.DemoSchedule', '1', 'demoSchedule', 'test', '2016-03-14', '2016-03-14');

-- ----------------------------
-- Table structure for lottery_activity
-- ----------------------------
DROP TABLE IF EXISTS `lottery_activity`;
CREATE TABLE `lottery_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hb_type` varchar(10) DEFAULT NULL COMMENT '红包类型NORMAL-普通红包；GROUP-裂变红包',
  `amt_type` varchar(10) DEFAULT NULL COMMENT 'RAND随机，NORMAL普通',
  `total_amount` float DEFAULT NULL COMMENT '总金额',
  `total_num` int(3) DEFAULT NULL COMMENT '红包发放总人数',
  `wishing` varchar(999) DEFAULT NULL COMMENT '祝福语',
  `sign` varchar(100) DEFAULT NULL COMMENT '唯一签名',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COMMENT='红包活动信息表';

-- ----------------------------
-- Records of lottery_activity
-- ----------------------------
INSERT INTO `lottery_activity` VALUES ('1', 'GROUP', 'RAND', '10', '10', '新年快乐1', null, '2016-06-02 11:58:35', '2016-03-17 09:51:43');
INSERT INTO `lottery_activity` VALUES ('2', 'GROUP', 'RAND', '10', '10', '新年快乐2', null, '2016-06-02 11:58:35', '2016-03-17 10:00:22');
INSERT INTO `lottery_activity` VALUES ('3', 'GROUP', 'RAND', '10', '10', '新年快乐3', null, '2016-06-02 11:58:35', '2016-03-17 10:01:30');
INSERT INTO `lottery_activity` VALUES ('4', 'GROUP', 'RAND', '10', '10', '新年快乐4', null, '2016-06-02 11:58:35', '2016-03-17 10:01:42');
INSERT INTO `lottery_activity` VALUES ('5', 'GROUP', 'RAND', '10', '10', '新年快乐5', null, '2016-06-02 11:58:35', '2016-03-17 10:01:43');
INSERT INTO `lottery_activity` VALUES ('6', 'GROUP', 'RAND', '10', '10', '新年快乐6', null, '2016-06-02 11:58:35', '2016-03-17 10:01:43');
INSERT INTO `lottery_activity` VALUES ('7', 'GROUP', 'RAND', '10', '10', '新年快乐7', null, '2016-06-02 11:58:35', '2016-03-17 10:01:44');
INSERT INTO `lottery_activity` VALUES ('8', 'GROUP', 'RAND', '10', '10', '新年快乐8', null, '2016-06-02 11:58:35', '2016-03-17 10:01:44');
INSERT INTO `lottery_activity` VALUES ('9', 'GROUP', 'RAND', '10', '10', '新年快乐9', null, '2016-06-02 11:58:35', '2016-05-16 17:19:43');
INSERT INTO `lottery_activity` VALUES ('10', 'GROUP', 'RAND', '10', '10', 'dddd', null, '2016-05-30 15:56:40', '2016-05-30 15:56:40');
INSERT INTO `lottery_activity` VALUES ('11', 'GROUP', 'RAND', '10', '10', '新年快乐10', null, '2016-06-02 11:58:35', '2016-05-30 16:06:59');
INSERT INTO `lottery_activity` VALUES ('12', 'GROUP', 'RAND', '10', '10', '新年快乐11', null, '2016-06-02 11:58:35', '2016-05-30 16:24:19');
INSERT INTO `lottery_activity` VALUES ('13', 'GROUP', 'RAND', '10', '10', '新年快乐12', null, '2016-06-02 11:58:35', '2016-06-02 11:55:08');
INSERT INTO `lottery_activity` VALUES ('14', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-06-02 14:22:20', '2016-06-02 14:22:20');
INSERT INTO `lottery_activity` VALUES ('15', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-06-02 14:31:55', '2016-06-02 14:31:55');
INSERT INTO `lottery_activity` VALUES ('16', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-06-02 14:32:31', '2016-06-02 14:32:31');
INSERT INTO `lottery_activity` VALUES ('17', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-06-02 14:42:37', '2016-06-02 14:42:37');
INSERT INTO `lottery_activity` VALUES ('18', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-06-02 15:01:02', '2016-06-02 15:01:02');
INSERT INTO `lottery_activity` VALUES ('19', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-06-02 15:03:54', '2016-06-02 15:03:54');
INSERT INTO `lottery_activity` VALUES ('20', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-06-02 15:05:18', '2016-06-02 15:05:18');
INSERT INTO `lottery_activity` VALUES ('21', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-06-02 15:06:29', '2016-06-02 15:06:29');
INSERT INTO `lottery_activity` VALUES ('22', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-06-02 15:10:33', '2016-06-02 15:10:33');
INSERT INTO `lottery_activity` VALUES ('23', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-07-07 09:33:51', '2016-07-07 09:33:51');
INSERT INTO `lottery_activity` VALUES ('24', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-07-07 09:40:59', '2016-07-07 09:40:59');
INSERT INTO `lottery_activity` VALUES ('25', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-26 15:06:44', '2016-09-26 15:06:44');
INSERT INTO `lottery_activity` VALUES ('26', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-26 15:33:33', '2016-09-26 15:33:33');
INSERT INTO `lottery_activity` VALUES ('27', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-26 15:33:35', '2016-09-26 15:33:35');
INSERT INTO `lottery_activity` VALUES ('28', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-26 15:33:35', '2016-09-26 15:33:35');
INSERT INTO `lottery_activity` VALUES ('29', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-26 15:33:36', '2016-09-26 15:33:36');
INSERT INTO `lottery_activity` VALUES ('30', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-26 16:22:37', '2016-09-26 16:22:37');
INSERT INTO `lottery_activity` VALUES ('31', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-26 16:26:57', '2016-09-26 16:26:57');
INSERT INTO `lottery_activity` VALUES ('32', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-26 16:27:00', '2016-09-26 16:27:00');
INSERT INTO `lottery_activity` VALUES ('33', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_activity` VALUES ('34', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_activity` VALUES ('35', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_activity` VALUES ('36', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_activity` VALUES ('37', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_activity` VALUES ('38', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_activity` VALUES ('39', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_activity` VALUES ('40', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_activity` VALUES ('41', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_activity` VALUES ('42', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_activity` VALUES ('43', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_activity` VALUES ('44', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_activity` VALUES ('45', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_activity` VALUES ('46', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_activity` VALUES ('47', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_activity` VALUES ('48', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_activity` VALUES ('49', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_activity` VALUES ('50', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_activity` VALUES ('51', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_activity` VALUES ('52', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_activity` VALUES ('53', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_activity` VALUES ('54', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_activity` VALUES ('55', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_activity` VALUES ('56', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_activity` VALUES ('57', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_activity` VALUES ('58', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_activity` VALUES ('59', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_activity` VALUES ('60', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_activity` VALUES ('61', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_activity` VALUES ('62', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_activity` VALUES ('63', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_activity` VALUES ('64', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_activity` VALUES ('65', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_activity` VALUES ('66', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_activity` VALUES ('67', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_activity` VALUES ('68', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_activity` VALUES ('69', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_activity` VALUES ('70', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_activity` VALUES ('71', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_activity` VALUES ('72', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_activity` VALUES ('73', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_activity` VALUES ('74', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_activity` VALUES ('75', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_activity` VALUES ('76', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_activity` VALUES ('77', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_activity` VALUES ('78', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_activity` VALUES ('79', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_activity` VALUES ('80', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_activity` VALUES ('81', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_activity` VALUES ('82', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_activity` VALUES ('83', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_activity` VALUES ('84', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_activity` VALUES ('85', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_activity` VALUES ('86', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_activity` VALUES ('87', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_activity` VALUES ('88', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_activity` VALUES ('89', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_activity` VALUES ('90', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_activity` VALUES ('91', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_activity` VALUES ('92', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_activity` VALUES ('93', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_activity` VALUES ('94', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_activity` VALUES ('95', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_activity` VALUES ('96', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_activity` VALUES ('97', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_activity` VALUES ('98', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_activity` VALUES ('99', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_activity` VALUES ('100', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_activity` VALUES ('101', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_activity` VALUES ('102', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_activity` VALUES ('103', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_activity` VALUES ('104', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_activity` VALUES ('105', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_activity` VALUES ('106', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_activity` VALUES ('107', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_activity` VALUES ('108', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_activity` VALUES ('109', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_activity` VALUES ('110', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_activity` VALUES ('111', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_activity` VALUES ('112', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_activity` VALUES ('113', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_activity` VALUES ('114', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_activity` VALUES ('115', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_activity` VALUES ('116', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_activity` VALUES ('117', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_activity` VALUES ('118', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 16:47:22', '2016-11-03 16:47:22');
INSERT INTO `lottery_activity` VALUES ('119', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 16:59:24', '2016-11-03 16:59:24');
INSERT INTO `lottery_activity` VALUES ('120', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:06:30', '2016-11-03 17:06:30');
INSERT INTO `lottery_activity` VALUES ('121', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:06:31', '2016-11-03 17:06:31');
INSERT INTO `lottery_activity` VALUES ('122', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:07:06', '2016-11-03 17:07:06');
INSERT INTO `lottery_activity` VALUES ('123', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:07:06', '2016-11-03 17:07:06');
INSERT INTO `lottery_activity` VALUES ('124', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:07:07', '2016-11-03 17:07:07');
INSERT INTO `lottery_activity` VALUES ('125', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:18:36', '2016-11-03 17:18:36');
INSERT INTO `lottery_activity` VALUES ('126', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:27:21', '2016-11-03 17:27:21');
INSERT INTO `lottery_activity` VALUES ('127', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:27:22', '2016-11-03 17:27:22');
INSERT INTO `lottery_activity` VALUES ('128', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:27:22', '2016-11-03 17:27:22');
INSERT INTO `lottery_activity` VALUES ('129', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:27:22', '2016-11-03 17:27:22');
INSERT INTO `lottery_activity` VALUES ('130', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:38:42', '2016-11-03 17:38:42');
INSERT INTO `lottery_activity` VALUES ('131', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:45:59', '2016-11-03 17:45:59');
INSERT INTO `lottery_activity` VALUES ('132', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:48:06', '2016-11-03 17:48:06');
INSERT INTO `lottery_activity` VALUES ('133', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 17:57:15', '2016-11-03 17:57:15');
INSERT INTO `lottery_activity` VALUES ('134', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 18:10:41', '2016-11-03 18:10:41');
INSERT INTO `lottery_activity` VALUES ('135', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 18:10:42', '2016-11-03 18:10:42');
INSERT INTO `lottery_activity` VALUES ('136', 'GROUP', 'RAND', '10', '10', '最近好穷啊，觉得自己好失败', null, '2016-11-03 18:10:45', '2016-11-03 18:10:45');
INSERT INTO `lottery_activity` VALUES ('137', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:53:01', '2016-11-28 10:53:01');
INSERT INTO `lottery_activity` VALUES ('138', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:53:37', '2016-11-28 10:53:37');
INSERT INTO `lottery_activity` VALUES ('139', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:53:38', '2016-11-28 10:53:38');
INSERT INTO `lottery_activity` VALUES ('140', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:56:01', '2016-11-28 10:56:01');
INSERT INTO `lottery_activity` VALUES ('141', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:56:01', '2016-11-28 10:56:01');
INSERT INTO `lottery_activity` VALUES ('142', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:56:01', '2016-11-28 10:56:01');
INSERT INTO `lottery_activity` VALUES ('143', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:56:02', '2016-11-28 10:56:02');
INSERT INTO `lottery_activity` VALUES ('144', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:56:02', '2016-11-28 10:56:02');
INSERT INTO `lottery_activity` VALUES ('145', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:56:02', '2016-11-28 10:56:02');
INSERT INTO `lottery_activity` VALUES ('146', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:56:02', '2016-11-28 10:56:02');
INSERT INTO `lottery_activity` VALUES ('147', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:56:03', '2016-11-28 10:56:03');
INSERT INTO `lottery_activity` VALUES ('148', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:56:16', '2016-11-28 10:56:16');
INSERT INTO `lottery_activity` VALUES ('149', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:56:17', '2016-11-28 10:56:17');
INSERT INTO `lottery_activity` VALUES ('150', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-11-28 10:57:11', '2016-11-28 10:57:11');
INSERT INTO `lottery_activity` VALUES ('151', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_activity` VALUES ('152', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-12-16 18:05:12', '2016-12-16 18:05:12');
INSERT INTO `lottery_activity` VALUES ('153', 'GROUP', 'RAND', '10', '10', '新年快乐', null, '2016-12-16 18:14:43', '2016-12-16 18:14:43');

-- ----------------------------
-- Table structure for lottery_item
-- ----------------------------
DROP TABLE IF EXISTS `lottery_item`;
CREATE TABLE `lottery_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lottery_id` bigint(20) DEFAULT NULL COMMENT '红包活动表对应记录主键',
  `amount` float DEFAULT NULL COMMENT '金额',
  `wishing` varchar(999) DEFAULT NULL COMMENT '祝福语',
  `is_open` tinyint(4) DEFAULT NULL COMMENT '状态0未被领取1已被领取',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1640 DEFAULT CHARSET=utf8 COMMENT='红包拆分明细表';

-- ----------------------------
-- Records of lottery_item
-- ----------------------------
INSERT INTO `lottery_item` VALUES ('1', '1', '0.7', '新年快乐', '1', '2016-03-17 00:00:00', '2016-05-16 16:58:11');
INSERT INTO `lottery_item` VALUES ('2', '1', '0.89', '新年快乐', '1', '2016-03-17 00:00:00', '2016-05-16 16:58:20');
INSERT INTO `lottery_item` VALUES ('3', '1', '0.57', '新年快乐', '1', '2016-03-17 00:00:00', '2016-05-16 16:58:20');
INSERT INTO `lottery_item` VALUES ('4', '1', '0.14', '新年快乐', '1', '2016-03-17 00:00:00', '2016-05-16 16:59:02');
INSERT INTO `lottery_item` VALUES ('5', '1', '0.34', '新年快乐', '1', '2016-03-17 00:00:00', '2016-09-26 15:25:41');
INSERT INTO `lottery_item` VALUES ('6', '1', '0.86', '新年快乐', '1', '2016-03-17 00:00:00', '2016-09-26 15:27:35');
INSERT INTO `lottery_item` VALUES ('7', '1', '0.55', '新年快乐', '1', '2016-03-17 00:00:00', '2016-09-27 17:28:14');
INSERT INTO `lottery_item` VALUES ('8', '1', '0.09', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('9', '1', '2.77', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('10', '1', '3.09', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('11', '1', '3.09', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('12', '2', '0.27', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('13', '2', '0.21', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('14', '2', '0.06', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('15', '2', '0.08', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('16', '2', '1.02', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('17', '2', '1.58', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('18', '2', '2.03', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('19', '2', '1.63', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('20', '2', '1.88', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('21', '2', '1.24', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('22', '2', '1.24', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('23', '3', '0.13', '新年快乐', '1', '2016-03-17 00:00:00', '2016-11-24 12:10:51');
INSERT INTO `lottery_item` VALUES ('24', '3', '0.16', '新年快乐', '1', '2016-03-17 00:00:00', '2016-11-24 12:12:56');
INSERT INTO `lottery_item` VALUES ('25', '3', '1.01', '新年快乐', '1', '2016-03-17 00:00:00', '2016-11-24 12:15:22');
INSERT INTO `lottery_item` VALUES ('26', '3', '1', '新年快乐', '1', '2016-03-17 00:00:00', '2016-11-24 12:19:07');
INSERT INTO `lottery_item` VALUES ('27', '3', '0.3', '新年快乐', '1', '2016-03-17 00:00:00', '2016-11-24 16:10:38');
INSERT INTO `lottery_item` VALUES ('28', '3', '1.02', '新年快乐', '1', '2016-03-17 00:00:00', '2016-12-22 14:27:07');
INSERT INTO `lottery_item` VALUES ('29', '3', '0.54', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('30', '3', '1.58', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('31', '3', '2.74', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('32', '3', '1.52', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('33', '3', '1.52', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('34', '4', '0.27', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('35', '4', '0.34', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('36', '4', '0.34', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('37', '4', '1.21', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('38', '4', '0.43', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('39', '4', '0.59', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('40', '4', '0.16', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('41', '4', '2.06', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('42', '4', '2.74', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('43', '4', '1.86', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('44', '4', '1.86', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('45', '5', '0.3', '新年快乐', '1', '2016-03-17 00:00:00', '2016-09-23 10:09:09');
INSERT INTO `lottery_item` VALUES ('46', '5', '0.1', '新年快乐', '1', '2016-03-17 00:00:00', '2016-09-23 10:09:12');
INSERT INTO `lottery_item` VALUES ('47', '5', '0.82', '新年快乐', '1', '2016-03-17 00:00:00', '2016-09-23 10:09:12');
INSERT INTO `lottery_item` VALUES ('48', '5', '0.7', '新年快乐', '1', '2016-03-17 00:00:00', '2016-09-23 10:09:13');
INSERT INTO `lottery_item` VALUES ('49', '5', '1.6', '新年快乐', '1', '2016-03-17 00:00:00', '2016-09-23 10:09:13');
INSERT INTO `lottery_item` VALUES ('50', '5', '1.07', '新年快乐', '1', '2016-03-17 00:00:00', '2016-09-23 17:31:01');
INSERT INTO `lottery_item` VALUES ('51', '5', '0.36', '新年快乐', '1', '2016-03-17 00:00:00', '2016-09-23 17:31:04');
INSERT INTO `lottery_item` VALUES ('52', '5', '2.08', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('53', '5', '0.57', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('54', '5', '2.4', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('55', '5', '2.4', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('56', '6', '0.41', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('57', '6', '0.07', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('58', '6', '1.3', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('59', '6', '0.4', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('60', '6', '0.65', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('61', '6', '1.04', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('62', '6', '0.37', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('63', '6', '0.85', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('64', '6', '0.83', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('65', '6', '4.08', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('66', '6', '4.08', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('67', '7', '0.23', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('68', '7', '0.93', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('69', '7', '1.07', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('70', '7', '0.22', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('71', '7', '1.05', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('72', '7', '1.2', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('73', '7', '1.15', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('74', '7', '1.89', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('75', '7', '0.95', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('76', '7', '1.31', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('77', '7', '1.31', '新年快乐', '0', '2016-03-17 00:00:00', '2016-03-17 00:00:00');
INSERT INTO `lottery_item` VALUES ('78', '8', '0.8', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:06:38');
INSERT INTO `lottery_item` VALUES ('79', '8', '0.11', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:07:17');
INSERT INTO `lottery_item` VALUES ('80', '8', '0.39', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:07:33');
INSERT INTO `lottery_item` VALUES ('81', '8', '1.28', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:07:33');
INSERT INTO `lottery_item` VALUES ('82', '8', '0.12', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:07:34');
INSERT INTO `lottery_item` VALUES ('83', '8', '0.26', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:07:34');
INSERT INTO `lottery_item` VALUES ('84', '8', '0.52', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:07:34');
INSERT INTO `lottery_item` VALUES ('85', '8', '3.17', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:07:34');
INSERT INTO `lottery_item` VALUES ('86', '8', '0.5', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:07:35');
INSERT INTO `lottery_item` VALUES ('87', '8', '2.85', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:07:35');
INSERT INTO `lottery_item` VALUES ('88', '8', '2.85', '新年快乐', '1', '2016-03-17 00:00:00', '2016-03-17 10:07:35');
INSERT INTO `lottery_item` VALUES ('89', '9', '0.47', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('90', '9', '0.03', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('91', '9', '0.41', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('92', '9', '0.52', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('93', '9', '0.53', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('94', '9', '1.65', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('95', '9', '1.65', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('96', '9', '1.7', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('97', '9', '2.81', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('98', '9', '0.23', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('99', '9', '0.23', '新年快乐', '0', '2016-05-16 00:00:00', '2016-05-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('100', '10', '0.5', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('101', '10', '1.15', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('102', '10', '0.77', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('103', '10', '0.78', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('104', '10', '0.69', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('105', '10', '0.95', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('106', '10', '1.53', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('107', '10', '0.14', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('108', '10', '2.7', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('109', '10', '0.79', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('110', '10', '0.79', 'dddd', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('111', '11', '0.25', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('112', '11', '0.83', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('113', '11', '0.05', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('114', '11', '0.21', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('115', '11', '1.69', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('116', '11', '0.52', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('117', '11', '0.12', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('118', '11', '2.16', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('119', '11', '1.06', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('120', '11', '3.11', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('121', '11', '3.11', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('122', '12', '0.35', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('123', '12', '0.9', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('124', '12', '1.2', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('125', '12', '1.12', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('126', '12', '0.33', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('127', '12', '0.52', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('128', '12', '1.42', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('129', '12', '1.76', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('130', '12', '0.78', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('131', '12', '1.62', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('132', '12', '1.62', '新年快乐', '0', '2016-05-30 00:00:00', '2016-05-30 00:00:00');
INSERT INTO `lottery_item` VALUES ('133', '18', '0.36', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('134', '18', '0.17', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('135', '18', '0.32', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('136', '18', '0.42', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('137', '18', '0.64', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('138', '18', '1.36', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('139', '18', '1.39', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('140', '18', '0.58', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('141', '18', '0.92', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('142', '18', '3.84', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('143', '18', '3.84', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('144', '19', '0.13', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('145', '19', '0.16', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('146', '19', '0.32', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('147', '19', '1.35', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('148', '19', '1.53', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('149', '19', '1.01', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('150', '19', '1.62', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('151', '19', '1.64', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('152', '19', '0.9', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('153', '19', '1.34', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('154', '19', '1.34', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('155', '20', '0.68', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('156', '20', '1.13', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('157', '20', '0.32', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('158', '20', '1.3', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('159', '20', '0.99', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('160', '20', '0.03', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('161', '20', '0.52', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('162', '20', '0.35', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('163', '20', '3.01', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('164', '20', '1.67', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('165', '20', '1.67', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('166', '21', '0.49', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('167', '21', '0.76', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('168', '21', '0.24', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('169', '21', '0.3', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('170', '21', '0.66', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('171', '21', '1.81', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('172', '21', '1.18', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('173', '21', '0.67', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('174', '21', '0.72', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('175', '21', '3.17', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('176', '21', '3.17', '新年快乐', '0', '2016-06-02 00:00:00', '2016-06-02 00:00:00');
INSERT INTO `lottery_item` VALUES ('177', '22', '0.03', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('178', '22', '0.79', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('179', '22', '0.29', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('180', '22', '0.76', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('181', '22', '0.7', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('182', '22', '1.55', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('183', '22', '1.27', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('184', '22', '2.01', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('185', '22', '2.04', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('186', '22', '0.56', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('187', '22', '0.56', 'eodifidf', '0', '2016-06-03 09:48:32', '2016-06-02 15:10:33');
INSERT INTO `lottery_item` VALUES ('188', null, '0.9', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('189', null, '0.25', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('190', null, '0.59', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('191', null, '0.61', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('192', null, '1.36', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('193', null, '0.3', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('194', null, '0.46', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('195', null, '0.53', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('196', null, '4.27', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('197', null, '0.73', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('198', null, '0.73', '新年快乐', '0', '2016-07-06 00:00:00', '2016-07-06 00:00:00');
INSERT INTO `lottery_item` VALUES ('199', '23', '0.96', '新年快乐', '1', '2016-07-07 00:00:00', '2016-09-26 16:22:13');
INSERT INTO `lottery_item` VALUES ('200', '23', '0.87', '新年快乐', '1', '2016-07-07 00:00:00', '2016-09-26 16:26:51');
INSERT INTO `lottery_item` VALUES ('201', '23', '0.39', '新年快乐', '1', '2016-07-07 00:00:00', '2016-09-26 16:26:52');
INSERT INTO `lottery_item` VALUES ('202', '23', '0.49', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('203', '23', '0.84', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('204', '23', '0.32', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('205', '23', '0.23', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('206', '23', '0.26', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('207', '23', '3.76', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('208', '23', '1.88', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('209', '23', '1.88', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('210', '24', '0.52', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('211', '24', '0.83', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('212', '24', '0.68', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('213', '24', '1.08', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('214', '24', '0.33', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('215', '24', '0.06', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('216', '24', '0.9', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('217', '24', '2.54', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('218', '24', '1.69', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('219', '24', '1.37', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('220', '24', '1.37', '新年快乐', '0', '2016-07-07 00:00:00', '2016-07-07 00:00:00');
INSERT INTO `lottery_item` VALUES ('221', '25', '1.06', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 15:33:51');
INSERT INTO `lottery_item` VALUES ('222', '25', '0.55', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 15:33:53');
INSERT INTO `lottery_item` VALUES ('223', '25', '0.27', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 15:33:53');
INSERT INTO `lottery_item` VALUES ('224', '25', '0.49', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 15:33:53');
INSERT INTO `lottery_item` VALUES ('225', '25', '0.75', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('226', '25', '0.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('227', '25', '1', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('228', '25', '2.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('229', '25', '1.68', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('230', '25', '2.04', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('231', '25', '2.04', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('232', '26', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('233', '26', '0.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('234', '26', '0.54', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('235', '26', '0.5', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('236', '26', '1.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('237', '26', '0.18', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('238', '26', '1.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('239', '26', '2.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('240', '26', '2.67', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('241', '26', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('242', '26', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('243', '27', '0.92', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:03');
INSERT INTO `lottery_item` VALUES ('244', '27', '1.12', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:03');
INSERT INTO `lottery_item` VALUES ('245', '27', '0.85', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:03');
INSERT INTO `lottery_item` VALUES ('246', '27', '1.04', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:04');
INSERT INTO `lottery_item` VALUES ('247', '27', '0.04', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:04');
INSERT INTO `lottery_item` VALUES ('248', '27', '1.46', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:04');
INSERT INTO `lottery_item` VALUES ('249', '27', '0.9', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:04');
INSERT INTO `lottery_item` VALUES ('250', '27', '0.53', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:04');
INSERT INTO `lottery_item` VALUES ('251', '27', '1.08', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:05');
INSERT INTO `lottery_item` VALUES ('252', '27', '2.06', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:05');
INSERT INTO `lottery_item` VALUES ('253', '27', '2.06', '最近好穷啊，觉得自己好失败', '1', '2016-09-26 00:00:00', '2016-09-26 16:22:05');
INSERT INTO `lottery_item` VALUES ('254', '28', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('255', '28', '1.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('256', '28', '1.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('257', '28', '0.24', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('258', '28', '0.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('259', '28', '1.55', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('260', '28', '0.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('261', '28', '2.04', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('262', '28', '3.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('263', '28', '0.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('264', '28', '0.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('265', '29', '0.75', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('266', '29', '0.28', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('267', '29', '1.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('268', '29', '0.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('269', '29', '0.89', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('270', '29', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('271', '29', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('272', '29', '1.5', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('273', '29', '0.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('274', '29', '4.22', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('275', '29', '4.22', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('276', '30', '1.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('277', '30', '0.89', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('278', '30', '0.76', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('279', '30', '0.29', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('280', '30', '0.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('281', '30', '1.25', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('282', '30', '1.38', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('283', '30', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('284', '30', '2.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('285', '30', '1.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('286', '30', '1.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('287', '31', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('288', '31', '0.54', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('289', '31', '0.83', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('290', '31', '0.91', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('291', '31', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('292', '31', '1.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('293', '31', '1.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('294', '31', '1.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('295', '31', '0.77', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('296', '31', '1.44', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('297', '31', '1.44', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('298', '32', '0.98', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('299', '32', '0.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('300', '32', '0.28', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('301', '32', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('302', '32', '0.22', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('303', '32', '0.57', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('304', '32', '0.62', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('305', '32', '0.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('306', '32', '0.64', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('307', '32', '4.91', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('308', '32', '4.91', '最近好穷啊，觉得自己好失败', '0', '2016-09-26 00:00:00', '2016-09-26 00:00:00');
INSERT INTO `lottery_item` VALUES ('309', '33', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('310', '33', '0.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('311', '33', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('312', '33', '0.31', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('313', '33', '0.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('314', '33', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('315', '33', '1.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('316', '33', '1.31', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('317', '33', '2.68', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('318', '33', '0.84', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('319', '33', '0.84', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:56', '2016-09-27 17:00:56');
INSERT INTO `lottery_item` VALUES ('320', '34', '0.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('321', '34', '0.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('322', '34', '1.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('323', '34', '0.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('324', '34', '1.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('325', '34', '0.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('326', '34', '1.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('327', '34', '1.94', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('328', '34', '2.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('329', '34', '0.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('330', '34', '0.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('331', '35', '0.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('332', '35', '0.38', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('333', '35', '0.33', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('334', '35', '0.94', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('335', '35', '0.5', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('336', '35', '0.99', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('337', '35', '1.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('338', '35', '1.99', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('339', '35', '0.01', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('340', '35', '3.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('341', '35', '3.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:00:59', '2016-09-27 17:00:59');
INSERT INTO `lottery_item` VALUES ('342', '36', '0.23', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('343', '36', '0.59', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('344', '36', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('345', '36', '1.44', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('346', '36', '0.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('347', '36', '0.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('348', '36', '1.31', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('349', '36', '0.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('350', '36', '2.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('351', '36', '2.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('352', '36', '2.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('353', '37', '0.7', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:25');
INSERT INTO `lottery_item` VALUES ('354', '37', '0.46', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:25');
INSERT INTO `lottery_item` VALUES ('355', '37', '0.92', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:25');
INSERT INTO `lottery_item` VALUES ('356', '37', '1.07', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:26');
INSERT INTO `lottery_item` VALUES ('357', '37', '0.24', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:26');
INSERT INTO `lottery_item` VALUES ('358', '37', '1.51', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:27');
INSERT INTO `lottery_item` VALUES ('359', '37', '0.25', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:28');
INSERT INTO `lottery_item` VALUES ('360', '37', '0.22', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:28');
INSERT INTO `lottery_item` VALUES ('361', '37', '3.23', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:29');
INSERT INTO `lottery_item` VALUES ('362', '37', '1.4', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:29');
INSERT INTO `lottery_item` VALUES ('363', '37', '1.4', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:03:29');
INSERT INTO `lottery_item` VALUES ('364', '38', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('365', '38', '0.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('366', '38', '1.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('367', '38', '0.24', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('368', '38', '0.67', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('369', '38', '0.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('370', '38', '0.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('371', '38', '1.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('372', '38', '0.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('373', '38', '4.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('374', '38', '4.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('375', '39', '0.8', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:26:04');
INSERT INTO `lottery_item` VALUES ('376', '39', '0.08', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:26:12');
INSERT INTO `lottery_item` VALUES ('377', '39', '0.65', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:26:12');
INSERT INTO `lottery_item` VALUES ('378', '39', '0.45', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:26:32');
INSERT INTO `lottery_item` VALUES ('379', '39', '1.02', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:01:00', '2016-09-27 17:27:43');
INSERT INTO `lottery_item` VALUES ('380', '39', '0.92', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('381', '39', '0.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('382', '39', '1.99', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('383', '39', '2.36', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('384', '39', '0.77', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('385', '39', '0.77', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:00', '2016-09-27 17:01:00');
INSERT INTO `lottery_item` VALUES ('386', '40', '0.94', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('387', '40', '0.35', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('388', '40', '0.92', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('389', '40', '1.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('390', '40', '1.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('391', '40', '0.59', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('392', '40', '0.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('393', '40', '1.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('394', '40', '0.35', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('395', '40', '2.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('396', '40', '2.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:01:01', '2016-09-27 17:01:01');
INSERT INTO `lottery_item` VALUES ('397', '41', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('398', '41', '0.52', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('399', '41', '0.4', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('400', '41', '0.6', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('401', '41', '0.33', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('402', '41', '0.36', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('403', '41', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('404', '41', '0.22', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('405', '41', '0.9', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('406', '41', '5.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('407', '41', '5.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('408', '42', '0.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('409', '42', '0.6', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('410', '42', '0.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('411', '42', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('412', '42', '1.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('413', '42', '0.04', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('414', '42', '1.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('415', '42', '1.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('416', '42', '2.38', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('417', '42', '2.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('418', '42', '2.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('419', '43', '0.62', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('420', '43', '0.34', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('421', '43', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('422', '43', '0.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('423', '43', '1.37', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('424', '43', '0.38', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('425', '43', '1.73', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('426', '43', '1.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('427', '43', '0.67', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('428', '43', '1.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('429', '43', '1.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('430', '44', '0.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('431', '44', '0.4', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('432', '44', '0.75', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('433', '44', '0.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('434', '44', '1.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('435', '44', '0.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('436', '44', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('437', '44', '1.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('438', '44', '0.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('439', '44', '4.25', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('440', '44', '4.25', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('441', '45', '0.54', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:02:39', '2016-09-27 17:31:01');
INSERT INTO `lottery_item` VALUES ('442', '45', '0.28', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:02:39', '2016-09-27 17:31:06');
INSERT INTO `lottery_item` VALUES ('443', '45', '1.29', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:02:39', '2016-09-27 17:34:43');
INSERT INTO `lottery_item` VALUES ('444', '45', '0.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('445', '45', '1.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('446', '45', '1.54', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('447', '45', '0.98', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('448', '45', '1.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('449', '45', '0.37', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('450', '45', '2.63', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('451', '45', '2.63', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:39', '2016-09-27 17:02:39');
INSERT INTO `lottery_item` VALUES ('452', '46', '0.89', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('453', '46', '0.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('454', '46', '0.39', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('455', '46', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('456', '46', '1.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('457', '46', '0.99', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('458', '46', '1.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('459', '46', '0.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('460', '46', '0.84', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('461', '46', '2.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('462', '46', '2.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('463', '47', '0.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('464', '47', '0.33', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('465', '47', '0.22', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('466', '47', '1.36', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('467', '47', '0.64', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('468', '47', '0.53', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('469', '47', '2.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('470', '47', '0.53', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('471', '47', '2.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('472', '47', '0.85', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('473', '47', '0.85', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('474', '48', '0.75', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('475', '48', '0.01', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('476', '48', '0.37', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('477', '48', '1.24', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('478', '48', '1.49', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('479', '48', '0.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('480', '48', '0.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('481', '48', '0.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('482', '48', '3.25', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('483', '48', '1.25', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('484', '48', '1.25', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('485', '49', '0.52', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('486', '49', '0.23', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('487', '49', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('488', '49', '1.26', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('489', '49', '0.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('490', '49', '1.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('491', '49', '1.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('492', '49', '0.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('493', '49', '4.28', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('494', '49', '0.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('495', '49', '0.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:02:42', '2016-09-27 17:02:42');
INSERT INTO `lottery_item` VALUES ('496', '50', '0.14', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:39');
INSERT INTO `lottery_item` VALUES ('497', '50', '0.87', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:40');
INSERT INTO `lottery_item` VALUES ('498', '50', '0.24', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:41');
INSERT INTO `lottery_item` VALUES ('499', '50', '1.1', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:41');
INSERT INTO `lottery_item` VALUES ('500', '50', '1.37', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:41');
INSERT INTO `lottery_item` VALUES ('501', '50', '1.32', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:41');
INSERT INTO `lottery_item` VALUES ('502', '50', '1.6', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:42');
INSERT INTO `lottery_item` VALUES ('503', '50', '1.67', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:42');
INSERT INTO `lottery_item` VALUES ('504', '50', '0.78', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:42');
INSERT INTO `lottery_item` VALUES ('505', '50', '0.91', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:42');
INSERT INTO `lottery_item` VALUES ('506', '50', '0.91', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:45:42');
INSERT INTO `lottery_item` VALUES ('507', '51', '0.4', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:54:20');
INSERT INTO `lottery_item` VALUES ('508', '51', '0.08', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:54:20');
INSERT INTO `lottery_item` VALUES ('509', '51', '0.23', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:54:20');
INSERT INTO `lottery_item` VALUES ('510', '51', '0.63', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:54:21');
INSERT INTO `lottery_item` VALUES ('511', '51', '1.17', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:54:21');
INSERT INTO `lottery_item` VALUES ('512', '51', '1.41', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:54:21');
INSERT INTO `lottery_item` VALUES ('513', '51', '1.58', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:54:21');
INSERT INTO `lottery_item` VALUES ('514', '51', '0.74', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:54:21');
INSERT INTO `lottery_item` VALUES ('515', '51', '1.18', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:57:33');
INSERT INTO `lottery_item` VALUES ('516', '51', '2.58', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:57:37');
INSERT INTO `lottery_item` VALUES ('517', '51', '2.58', '最近好穷啊，觉得自己好失败', '1', '2016-09-27 17:03:13', '2016-09-27 17:57:38');
INSERT INTO `lottery_item` VALUES ('518', '52', '0.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('519', '52', '0.95', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('520', '52', '0.72', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('521', '52', '0.84', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('522', '52', '0.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('523', '52', '1.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('524', '52', '0.85', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('525', '52', '1.36', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('526', '52', '2.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('527', '52', '0.57', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('528', '52', '0.57', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:03:13', '2016-09-27 17:03:13');
INSERT INTO `lottery_item` VALUES ('529', '53', '0.76', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('530', '53', '0.44', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('531', '53', '0.97', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('532', '53', '0.23', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('533', '53', '0.25', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('534', '53', '0.63', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('535', '53', '1.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('536', '53', '2.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('537', '53', '1.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('538', '53', '1.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('539', '53', '1.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('540', '54', '0.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('541', '54', '0.52', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('542', '54', '0.68', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('543', '54', '0.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('544', '54', '0.37', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('545', '54', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('546', '54', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('547', '54', '1.63', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('548', '54', '1.52', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('549', '54', '2.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('550', '54', '2.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:22', '2016-09-27 17:09:22');
INSERT INTO `lottery_item` VALUES ('551', '55', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('552', '55', '0.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('553', '55', '1.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('554', '55', '0.37', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('555', '55', '0.75', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('556', '55', '0.26', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('557', '55', '1.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('558', '55', '0.24', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('559', '55', '3.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('560', '55', '2.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('561', '55', '2.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('562', '56', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('563', '56', '0.6', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('564', '56', '0.59', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('565', '56', '0.98', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('566', '56', '1.37', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('567', '56', '1.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('568', '56', '0.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('569', '56', '2.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('570', '56', '2.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('571', '56', '0.39', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('572', '56', '0.39', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('573', '57', '0.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('574', '57', '0.67', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('575', '57', '0.55', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('576', '57', '1.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('577', '57', '1.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('578', '57', '0.34', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('579', '57', '0.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('580', '57', '2.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('581', '57', '2.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('582', '57', '0.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('583', '57', '0.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('584', '58', '0.68', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('585', '58', '0.82', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('586', '58', '0.68', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('587', '58', '0.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('588', '58', '0.65', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('589', '58', '0.56', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('590', '58', '1.52', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('591', '58', '1.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('592', '58', '1.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('593', '58', '2.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('594', '58', '2.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('595', '59', '0.56', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('596', '59', '0.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('597', '59', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('598', '59', '0.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('599', '59', '1.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('600', '59', '0.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('601', '59', '0.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('602', '59', '0.99', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('603', '59', '2.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('604', '59', '1.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('605', '59', '1.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:23', '2016-09-27 17:09:23');
INSERT INTO `lottery_item` VALUES ('606', '60', '0.81', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('607', '60', '1.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('608', '60', '0.22', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('609', '60', '0.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('610', '60', '1.04', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('611', '60', '1.36', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('612', '60', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('613', '60', '0.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('614', '60', '0.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('615', '60', '3.29', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('616', '60', '3.29', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('617', '61', '0.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('618', '61', '0.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('619', '61', '0.99', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('620', '61', '0.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('621', '61', '1.35', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('622', '61', '1.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('623', '61', '1.38', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('624', '61', '1.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('625', '61', '1.73', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('626', '61', '1.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('627', '61', '1.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('628', '62', '0.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('629', '62', '0.81', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('630', '62', '0.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('631', '62', '1.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('632', '62', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('633', '62', '0.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('634', '62', '0.64', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('635', '62', '1.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('636', '62', '1.38', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('637', '62', '2.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('638', '62', '2.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('639', '63', '0.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('640', '63', '1.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('641', '63', '1.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('642', '63', '1.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('643', '63', '0.76', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('644', '63', '0.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('645', '63', '1.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('646', '63', '0.51', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('647', '63', '1.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('648', '63', '0.9', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('649', '63', '0.9', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('650', '64', '1.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('651', '64', '0.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('652', '64', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('653', '64', '0.34', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('654', '64', '0.97', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('655', '64', '1.18', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('656', '64', '1.73', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('657', '64', '0.76', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('658', '64', '3.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('659', '64', '0.57', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('660', '64', '0.57', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:24', '2016-09-27 17:09:24');
INSERT INTO `lottery_item` VALUES ('661', '65', '0.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('662', '65', '0.25', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('663', '65', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('664', '65', '0.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('665', '65', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('666', '65', '1.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('667', '65', '0.57', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('668', '65', '2.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('669', '65', '3.95', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('670', '65', '0.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('671', '65', '0.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('672', '66', '0.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('673', '66', '0.87', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('674', '66', '1.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('675', '66', '0.49', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('676', '66', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('677', '66', '0.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('678', '66', '0.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('679', '66', '0.01', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('680', '66', '1.24', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('681', '66', '5.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('682', '66', '5.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('683', '67', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('684', '67', '0.25', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('685', '67', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('686', '67', '1.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('687', '67', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('688', '67', '1.51', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('689', '67', '0.01', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('690', '67', '0.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('691', '67', '1.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('692', '67', '2.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('693', '67', '2.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('694', '68', '0.63', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('695', '68', '0.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('696', '68', '1.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('697', '68', '0.48', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('698', '68', '0.89', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('699', '68', '0.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('700', '68', '1.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('701', '68', '0.81', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('702', '68', '2.49', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('703', '68', '1.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('704', '68', '1.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('705', '69', '0.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('706', '69', '0.49', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('707', '69', '0.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('708', '69', '1.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('709', '69', '0.4', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('710', '69', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('711', '69', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('712', '69', '2.28', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('713', '69', '0.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('714', '69', '3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('715', '69', '3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:25', '2016-09-27 17:09:25');
INSERT INTO `lottery_item` VALUES ('716', '70', '0.49', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('717', '70', '0.23', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('718', '70', '0.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('719', '70', '1.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('720', '70', '1.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('721', '70', '0.68', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('722', '70', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('723', '70', '0.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('724', '70', '3.92', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('725', '70', '0.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('726', '70', '0.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('727', '71', '0.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('728', '71', '1.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('729', '71', '0.23', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('730', '71', '0.67', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('731', '71', '1.01', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('732', '71', '0.59', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('733', '71', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('734', '71', '2.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('735', '71', '0.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('736', '71', '2.94', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('737', '71', '2.94', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('738', '72', '0.56', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('739', '72', '1.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('740', '72', '0.34', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('741', '72', '0.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('742', '72', '0.59', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('743', '72', '0.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('744', '72', '0.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('745', '72', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('746', '72', '2.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('747', '72', '4.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('748', '72', '4.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('749', '73', '0.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('750', '73', '1.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('751', '73', '0.35', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('752', '73', '0.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('753', '73', '1.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('754', '73', '1.01', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('755', '73', '0.98', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('756', '73', '1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('757', '73', '2.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('758', '73', '1.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('759', '73', '1.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('760', '74', '0.59', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('761', '74', '1.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('762', '74', '0.58', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('763', '74', '0.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('764', '74', '0.28', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('765', '74', '0.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('766', '74', '0.63', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('767', '74', '2.54', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('768', '74', '3.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('769', '74', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('770', '74', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('771', '75', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('772', '75', '0.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('773', '75', '1.26', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('774', '75', '0.6', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('775', '75', '1.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('776', '75', '1.24', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('777', '75', '1.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('778', '75', '1.34', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('779', '75', '0.26', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('780', '75', '2.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('781', '75', '2.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:26', '2016-09-27 17:09:26');
INSERT INTO `lottery_item` VALUES ('782', '76', '0.92', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('783', '76', '0.82', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('784', '76', '0.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('785', '76', '0.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('786', '76', '0.95', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('787', '76', '0.65', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('788', '76', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('789', '76', '2.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('790', '76', '1.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('791', '76', '1.51', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('792', '76', '1.51', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('793', '77', '1.01', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('794', '77', '0.48', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('795', '77', '0.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('796', '77', '1.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('797', '77', '0.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('798', '77', '0.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('799', '77', '0.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('800', '77', '1.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('801', '77', '3.72', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('802', '77', '1.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('803', '77', '1.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('804', '78', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('805', '78', '0.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('806', '78', '1.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('807', '78', '0.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('808', '78', '0.49', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('809', '78', '1.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('810', '78', '1.39', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('811', '78', '2.36', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('812', '78', '1.62', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('813', '78', '0.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('814', '78', '0.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:27', '2016-09-27 17:09:27');
INSERT INTO `lottery_item` VALUES ('815', '79', '0.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('816', '79', '0.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('817', '79', '0.56', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('818', '79', '0.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('819', '79', '0.76', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('820', '79', '0.75', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('821', '79', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('822', '79', '0.68', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('823', '79', '1.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('824', '79', '3.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('825', '79', '3.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('826', '80', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('827', '80', '0.95', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('828', '80', '0.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('829', '80', '1.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('830', '80', '0.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('831', '80', '1.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('832', '80', '0.48', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('833', '80', '1.85', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('834', '80', '2.39', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('835', '80', '0.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('836', '80', '0.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('837', '81', '0.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('838', '81', '0.99', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('839', '81', '0.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('840', '81', '1.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('841', '81', '0.54', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('842', '81', '1.67', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('843', '81', '0.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('844', '81', '0.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('845', '81', '2.98', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('846', '81', '2.04', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('847', '81', '2.04', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('848', '82', '0.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('849', '82', '0.34', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('850', '82', '0.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('851', '82', '0.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('852', '82', '0.95', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('853', '82', '1.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('854', '82', '0.28', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('855', '82', '2.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('856', '82', '2.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('857', '82', '0.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('858', '82', '0.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('859', '83', '1.04', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('860', '83', '0.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('861', '83', '1.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('862', '83', '0.91', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('863', '83', '1.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('864', '83', '1.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('865', '83', '1.23', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('866', '83', '0.4', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('867', '83', '1.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('868', '83', '1.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('869', '83', '1.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:30', '2016-09-27 17:09:30');
INSERT INTO `lottery_item` VALUES ('870', '84', '1.01', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('871', '84', '0.9', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('872', '84', '1.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('873', '84', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('874', '84', '0.23', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('875', '84', '0.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('876', '84', '0.55', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('877', '84', '1.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('878', '84', '2.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('879', '84', '1.9', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('880', '84', '1.9', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('881', '85', '0.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('882', '85', '0.26', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('883', '85', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('884', '85', '1.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('885', '85', '0.73', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('886', '85', '1.62', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('887', '85', '1.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('888', '85', '0.29', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('889', '85', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('890', '85', '3.5', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('891', '85', '3.5', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('892', '86', '0.68', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('893', '86', '0.91', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('894', '86', '0.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('895', '86', '0.99', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('896', '86', '0.82', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('897', '86', '1.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('898', '86', '1.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('899', '86', '0.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('900', '86', '1.52', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('901', '86', '2.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('902', '86', '2.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('903', '87', '0.94', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('904', '87', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('905', '87', '0.59', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('906', '87', '0.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('907', '87', '1.38', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('908', '87', '0.49', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('909', '87', '0.18', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('910', '87', '1.6', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('911', '87', '0.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('912', '87', '3.59', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('913', '87', '3.59', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('914', '88', '0.29', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('915', '88', '0.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('916', '88', '1.23', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('917', '88', '0.65', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('918', '88', '0.58', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('919', '88', '0.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('920', '88', '1.99', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('921', '88', '1.52', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('922', '88', '0.84', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('923', '88', '2.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('924', '88', '2.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('925', '89', '0.35', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('926', '89', '0.94', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('927', '89', '0.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('928', '89', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('929', '89', '0.81', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('930', '89', '0.82', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('931', '89', '1.81', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('932', '89', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('933', '89', '2.63', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('934', '89', '0.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('935', '89', '0.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:31', '2016-09-27 17:09:31');
INSERT INTO `lottery_item` VALUES ('936', '90', '0.04', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('937', '90', '0.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('938', '90', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('939', '90', '0.82', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('940', '90', '0.81', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('941', '90', '0.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('942', '90', '1.65', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('943', '90', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('944', '90', '1.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('945', '90', '3.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('946', '90', '3.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('947', '91', '0.49', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('948', '91', '0.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('949', '91', '0.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('950', '91', '0.35', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('951', '91', '1.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('952', '91', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('953', '91', '0.98', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('954', '91', '1.29', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('955', '91', '1.76', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('956', '91', '1.87', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('957', '91', '1.87', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('958', '92', '0.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('959', '92', '0.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('960', '92', '0.44', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('961', '92', '0.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('962', '92', '0.64', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('963', '92', '0.82', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('964', '92', '0.97', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('965', '92', '1.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('966', '92', '1.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('967', '92', '2.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('968', '92', '2.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('969', '93', '0.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('970', '93', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('971', '93', '1.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('972', '93', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('973', '93', '0.82', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('974', '93', '1.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('975', '93', '1.67', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('976', '93', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('977', '93', '2.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('978', '93', '2.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('979', '93', '2.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('980', '94', '0.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('981', '94', '0.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('982', '94', '1.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('983', '94', '0.62', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('984', '94', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('985', '94', '0.38', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('986', '94', '1.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('987', '94', '1.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('988', '94', '0.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('989', '94', '2.77', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('990', '94', '2.77', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:32', '2016-09-27 17:09:32');
INSERT INTO `lottery_item` VALUES ('991', '95', '0.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('992', '95', '1.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('993', '95', '0.4', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('994', '95', '0.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('995', '95', '1.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('996', '95', '1.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('997', '95', '1.82', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('998', '95', '1.53', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('999', '95', '0.29', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1000', '95', '1.91', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1001', '95', '1.91', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1002', '96', '1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1003', '96', '0.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1004', '96', '0.4', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1005', '96', '0.64', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1006', '96', '0.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1007', '96', '0.18', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1008', '96', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1009', '96', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1010', '96', '3.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1011', '96', '1.83', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1012', '96', '1.83', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1013', '97', '0.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1014', '97', '0.6', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1015', '97', '1.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1016', '97', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1017', '97', '1.22', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1018', '97', '0.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1019', '97', '1.08', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1020', '97', '0.91', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1021', '97', '1.31', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1022', '97', '1.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1023', '97', '1.78', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1024', '98', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1025', '98', '0.52', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1026', '98', '1.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1027', '98', '0.39', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1028', '98', '0.56', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1029', '98', '0.75', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1030', '98', '1.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1031', '98', '1.44', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1032', '98', '1.67', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1033', '98', '1.6', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1034', '98', '1.6', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1035', '99', '0.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1036', '99', '0.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1037', '99', '1.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1038', '99', '1.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1039', '99', '1.31', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1040', '99', '0.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1041', '99', '1.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1042', '99', '0.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1043', '99', '2.87', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1044', '99', '1.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1045', '99', '1.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:33', '2016-09-27 17:09:33');
INSERT INTO `lottery_item` VALUES ('1046', '100', '0.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1047', '100', '0.53', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1048', '100', '0.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1049', '100', '0.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1050', '100', '1.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1051', '100', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1052', '100', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1053', '100', '0.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1054', '100', '1.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1055', '100', '2.98', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1056', '100', '2.98', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1057', '101', '0.63', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1058', '101', '1.07', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1059', '101', '0.9', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1060', '101', '0.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1061', '101', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1062', '101', '0.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1063', '101', '0.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1064', '101', '0.34', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1065', '101', '4.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1066', '101', '1.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1067', '101', '1.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1068', '102', '0.5', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1069', '102', '0.66', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1070', '102', '0.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1071', '102', '0.63', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1072', '102', '0.36', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1073', '102', '0.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1074', '102', '0.52', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1075', '102', '2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1076', '102', '1.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1077', '102', '2.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1078', '102', '2.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1079', '103', '0.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1080', '103', '0.76', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1081', '103', '0.22', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1082', '103', '1.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1083', '103', '1.36', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1084', '103', '0.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1085', '103', '0.53', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1086', '103', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1087', '103', '2.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1088', '103', '1.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1089', '103', '1.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1090', '104', '0.56', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1091', '104', '0.99', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1092', '104', '0.4', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1093', '104', '1.23', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1094', '104', '0.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1095', '104', '1.34', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1096', '104', '0.67', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1097', '104', '0.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1098', '104', '0.55', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1099', '104', '3.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1100', '104', '3.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:34', '2016-09-27 17:09:34');
INSERT INTO `lottery_item` VALUES ('1101', '105', '0.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1102', '105', '0.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1103', '105', '1.33', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1104', '105', '1.24', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1105', '105', '0.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1106', '105', '0.64', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1107', '105', '1.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1108', '105', '0.57', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1109', '105', '3.56', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1110', '105', '0.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1111', '105', '0.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1112', '106', '1.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1113', '106', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1114', '106', '0.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1115', '106', '0.01', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1116', '106', '0.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1117', '106', '1.67', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1118', '106', '1.47', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1119', '106', '1.82', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1120', '106', '1.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1121', '106', '1.35', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1122', '106', '1.35', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1123', '107', '0.12', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1124', '107', '0.81', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1125', '107', '0.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1126', '107', '1.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1127', '107', '0.73', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1128', '107', '0.06', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1129', '107', '0.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1130', '107', '3.42', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1131', '107', '3.38', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1132', '107', '0.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1133', '107', '0.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:35', '2016-09-27 17:09:35');
INSERT INTO `lottery_item` VALUES ('1134', '108', '1.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1135', '108', '0.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1136', '108', '0.52', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1137', '108', '0.01', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1138', '108', '1.26', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1139', '108', '0.43', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1140', '108', '2.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1141', '108', '1.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1142', '108', '3.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1143', '108', '0.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1144', '108', '0.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1145', '109', '0.87', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1146', '109', '0.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1147', '109', '0.94', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1148', '109', '0.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1149', '109', '0.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1150', '109', '1.23', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1151', '109', '0.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1152', '109', '2.41', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1153', '109', '2.8', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1154', '109', '0.75', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1155', '109', '0.75', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1156', '110', '0.29', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1157', '110', '0.38', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1158', '110', '0.65', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1159', '110', '0.44', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1160', '110', '1.15', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1161', '110', '0.58', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1162', '110', '1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1163', '110', '1.17', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1164', '110', '2.64', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1165', '110', '1.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1166', '110', '1.7', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1167', '111', '0.62', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1168', '111', '0.6', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1169', '111', '0.59', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1170', '111', '1.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1171', '111', '1.3', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1172', '111', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1173', '111', '0.31', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1174', '111', '0.18', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1175', '111', '3.44', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1176', '111', '0.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1177', '111', '0.71', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1178', '112', '1.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1179', '112', '0.48', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1180', '112', '0.27', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1181', '112', '0.35', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1182', '112', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1183', '112', '0.34', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1184', '112', '1.87', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1185', '112', '1.97', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1186', '112', '0.56', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1187', '112', '2.9', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1188', '112', '2.9', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:36', '2016-09-27 17:09:36');
INSERT INTO `lottery_item` VALUES ('1189', '113', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1190', '113', '0.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1191', '113', '1.22', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1192', '113', '0.21', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1193', '113', '1.45', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1194', '113', '0.36', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1195', '113', '1.26', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1196', '113', '2.09', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1197', '113', '0.9', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1198', '113', '1.56', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1199', '113', '1.56', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1200', '114', '0.79', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1201', '114', '1.14', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1202', '114', '0.02', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1203', '114', '0.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1204', '114', '0.36', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1205', '114', '0.84', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1206', '114', '0.91', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1207', '114', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1208', '114', '2.61', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1209', '114', '2.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1210', '114', '2.13', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1211', '115', '0.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1212', '115', '0.91', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1213', '115', '0.72', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1214', '115', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1215', '115', '0.74', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1216', '115', '0.16', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1217', '115', '0.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1218', '115', '1.96', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1219', '115', '2.39', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1220', '115', '1.73', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1221', '115', '1.73', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1222', '116', '0.57', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1223', '116', '0.46', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1224', '116', '0.57', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1225', '116', '0.19', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1226', '116', '0.48', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1227', '116', '1.11', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1228', '116', '0.87', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1229', '116', '0.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1230', '116', '2.77', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1231', '116', '2.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1232', '116', '2.88', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1233', '117', '0.2', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1234', '117', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1235', '117', '0.75', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1236', '117', '0.03', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1237', '117', '0.97', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1238', '117', '1.37', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1239', '117', '1.18', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1240', '117', '0.49', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1241', '117', '1.1', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1242', '117', '3.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1243', '117', '3.05', '最近好穷啊，觉得自己好失败', '0', '2016-09-27 17:09:37', '2016-09-27 17:09:37');
INSERT INTO `lottery_item` VALUES ('1244', '118', '0.41', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1245', '118', '0.03', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1246', '118', '0.87', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1247', '118', '0.22', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1248', '118', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1249', '118', '1.83', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1250', '118', '0.79', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1251', '118', '0.39', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1252', '118', '4.02', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1253', '118', '0.38', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1254', '118', '0.38', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1255', '119', '0.95', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1256', '119', '0.15', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1257', '119', '0.39', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1258', '119', '1.1', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1259', '119', '0.12', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1260', '119', '1.01', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1261', '119', '1.15', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1262', '119', '1.57', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1263', '119', '2.13', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1264', '119', '1.43', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1265', '119', '1.43', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1266', '120', '0.19', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1267', '120', '0.23', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1268', '120', '0.71', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1269', '120', '0.26', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1270', '120', '1.42', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1271', '120', '0.46', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1272', '120', '0.87', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1273', '120', '0.05', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1274', '120', '1.42', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1275', '120', '4.39', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1276', '120', '4.39', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1277', '121', '0.92', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1278', '121', '0.64', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1279', '121', '0.72', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1280', '121', '0.63', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1281', '121', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1282', '121', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1283', '121', '0.96', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1284', '121', '0.21', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1285', '121', '3.28', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1286', '121', '1.26', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1287', '121', '1.26', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1288', '122', '0.2', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1289', '122', '0.26', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1290', '122', '0.65', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1291', '122', '0.34', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1292', '122', '0.72', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1293', '122', '1.45', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1294', '122', '1.1', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1295', '122', '1.11', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1296', '122', '0.96', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1297', '122', '3.21', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1298', '122', '3.21', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1299', '123', '0.6', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1300', '123', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1301', '123', '0.71', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1302', '123', '0.98', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1303', '123', '1.27', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1304', '123', '1.05', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1305', '123', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1306', '123', '1.08', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1307', '123', '1.06', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1308', '123', '2', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1309', '123', '2', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1310', '124', '0.85', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1311', '124', '0.71', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1312', '124', '0.79', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1313', '124', '1.09', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1314', '124', '0.89', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1315', '124', '0.67', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1316', '124', '0.98', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1317', '124', '1.75', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1318', '124', '1.82', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1319', '124', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1320', '124', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1321', '125', '0.72', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1322', '125', '0.99', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1323', '125', '0.84', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1324', '125', '1.07', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1325', '125', '0.03', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1326', '125', '0.1', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1327', '125', '2', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1328', '125', '1.98', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1329', '125', '0.09', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1330', '125', '2.18', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1331', '125', '2.18', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1332', '126', '0.53', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1333', '126', '0.42', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1334', '126', '0.53', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1335', '126', '0.73', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1336', '126', '0.8', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1337', '126', '1.53', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1338', '126', '0.45', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1339', '126', '1.47', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1340', '126', '3.14', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1341', '126', '0.4', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1342', '126', '0.4', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1343', '127', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1344', '127', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1345', '127', '0.62', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1346', '127', '1.09', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1347', '127', '0.63', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1348', '127', '1.37', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1349', '127', '0.04', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1350', '127', '0.29', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1351', '127', '2.13', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1352', '127', '2.27', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1353', '127', '2.27', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1354', '128', '0.24', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1355', '128', '0.35', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1356', '128', '1.28', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1357', '128', '0.13', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1358', '128', '0.6', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1359', '128', '0.44', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1360', '128', '0.43', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1361', '128', '2.47', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1362', '128', '0.47', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1363', '128', '3.59', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1364', '128', '3.59', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1365', '129', '0.6', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1366', '129', '0.42', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1367', '129', '0.42', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1368', '129', '0.3', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1369', '129', '1.23', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1370', '129', '1.58', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1371', '129', '1.17', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1372', '129', '1.4', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1373', '129', '1.18', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1374', '129', '1.7', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1375', '129', '1.7', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1376', '130', '0.88', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1377', '130', '0.32', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1378', '130', '0.72', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1379', '130', '1.01', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1380', '130', '0.77', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1381', '130', '1.13', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1382', '130', '0.91', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1383', '130', '1.27', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1384', '130', '1.71', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1385', '130', '1.28', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1386', '130', '1.28', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1387', '131', '0.73', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1388', '131', '0.17', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1389', '131', '0.05', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1390', '131', '0.08', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1391', '131', '1.44', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1392', '131', '1.15', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1393', '131', '0.46', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1394', '131', '2.39', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1395', '131', '3.07', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1396', '131', '0.46', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1397', '131', '0.46', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1398', '132', '0.93', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1399', '132', '0.96', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1400', '132', '0.28', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1401', '132', '0.17', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1402', '132', '0.7', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1403', '132', '0.14', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1404', '132', '0.63', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1405', '132', '0.42', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1406', '132', '0.64', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1407', '132', '5.13', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1408', '132', '5.13', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1409', '133', '0.53', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1410', '133', '1.1', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1411', '133', '0.86', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1412', '133', '0.8', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1413', '133', '0.55', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1414', '133', '0.64', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1415', '133', '1.01', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1416', '133', '1.75', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1417', '133', '1.47', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1418', '133', '1.29', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1419', '133', '1.29', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1420', '134', '0.67', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1421', '134', '1.13', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1422', '134', '1.12', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1423', '134', '0.76', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1424', '134', '0.04', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1425', '134', '0.7', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1426', '134', '1.8', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1427', '134', '0.31', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1428', '134', '1.92', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1429', '134', '1.55', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1430', '134', '1.55', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1431', '135', '0.64', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1432', '135', '0.51', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1433', '135', '0.77', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1434', '135', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1435', '135', '0.46', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1436', '135', '1.17', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1437', '135', '0.8', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1438', '135', '1.78', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1439', '135', '2.12', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1440', '135', '0.97', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1441', '135', '0.97', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1442', '136', '0.06', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1443', '136', '0.78', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1444', '136', '1.29', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1445', '136', '0.11', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1446', '136', '1.24', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1447', '136', '0.41', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1448', '136', '1.84', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1449', '136', '1.7', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1450', '136', '2.47', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1451', '136', '0.1', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1452', '136', '0.1', '最近好穷啊，觉得自己好失败', '0', '2016-11-03 00:00:00', '2016-11-03 00:00:00');
INSERT INTO `lottery_item` VALUES ('1453', '137', '0.97', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1454', '137', '1.1', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1455', '137', '0.93', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1456', '137', '0.69', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1457', '137', '1.09', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1458', '137', '0.66', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1459', '137', '0.05', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1460', '137', '0.51', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1461', '137', '1.06', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1462', '137', '2.94', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1463', '137', '2.94', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1464', '138', '0.75', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1465', '138', '1.08', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1466', '138', '0.41', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1467', '138', '1.1', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1468', '138', '0.96', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1469', '138', '0.37', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1470', '138', '0.95', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1471', '138', '0.26', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1472', '138', '0.27', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1473', '138', '3.85', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1474', '138', '3.85', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1475', '139', '0.82', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1476', '139', '0.3', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1477', '139', '0.8', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1478', '139', '0.92', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1479', '139', '0.75', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1480', '139', '0.22', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1481', '139', '0.62', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1482', '139', '2.11', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1483', '139', '2.87', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1484', '139', '0.59', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1485', '139', '0.59', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1486', '140', '0.05', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1487', '140', '0.18', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1488', '140', '0.21', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1489', '140', '0.97', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1490', '140', '1.07', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1491', '140', '1.61', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1492', '140', '1.14', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1493', '140', '1.35', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1494', '140', '1.37', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1495', '140', '2.05', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1496', '140', '2.05', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1497', '141', '0.29', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1498', '141', '0.95', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1499', '141', '1.02', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1500', '141', '0.63', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1501', '141', '0.81', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1502', '141', '0.16', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1503', '141', '2', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1504', '141', '0.79', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1505', '141', '1.22', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1506', '141', '2.13', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1507', '141', '2.13', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1508', '142', '0.62', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1509', '142', '0.78', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1510', '142', '0.94', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1511', '142', '0.8', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1512', '142', '1.27', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1513', '142', '0.38', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1514', '142', '1.57', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1515', '142', '0.94', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1516', '142', '2.07', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1517', '142', '0.63', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1518', '142', '0.63', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1519', '143', '0.73', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1520', '143', '1.01', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1521', '143', '0.79', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1522', '143', '0.26', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1523', '143', '0.68', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1524', '143', '1.13', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1525', '143', '0.46', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1526', '143', '1.02', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1527', '143', '0.42', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1528', '143', '3.5', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1529', '143', '3.5', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1530', '144', '1.02', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1531', '144', '0.02', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1532', '144', '0.46', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1533', '144', '0.9', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1534', '144', '0.51', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1535', '144', '0.54', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1536', '144', '1.53', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1537', '144', '2.17', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1538', '144', '0.94', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1539', '144', '1.91', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1540', '144', '1.91', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1541', '145', '0.38', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1542', '145', '0.14', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1543', '145', '0.72', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1544', '145', '0.99', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1545', '145', '0.54', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1546', '145', '1.61', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1547', '145', '1.1', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1548', '145', '0.17', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1549', '145', '2.48', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1550', '145', '1.87', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1551', '145', '1.87', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1552', '146', '0.79', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1553', '146', '1.13', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1554', '146', '0.29', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1555', '146', '0.6', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1556', '146', '0.59', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1557', '146', '1.11', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1558', '146', '0.02', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1559', '146', '2.12', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1560', '146', '2.27', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1561', '146', '1.08', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1562', '146', '1.08', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1563', '147', '0.67', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1564', '147', '0.99', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1565', '147', '0.3', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1566', '147', '1.18', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1567', '147', '0.4', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1568', '147', '0.93', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1569', '147', '0.37', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1570', '147', '1.88', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1571', '147', '0.78', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1572', '147', '2.5', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1573', '147', '2.5', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1574', '148', '1.02', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1575', '148', '0.47', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1576', '148', '0.09', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1577', '148', '0.4', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1578', '148', '0.44', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1579', '148', '1.67', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1580', '148', '0.12', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1581', '148', '1.1', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1582', '148', '3.57', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1583', '148', '1.12', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1584', '148', '1.12', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1585', '149', '0.02', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1586', '149', '1.13', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1587', '149', '0.56', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1588', '149', '0.89', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1589', '149', '1.39', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1590', '149', '1.34', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1591', '149', '1.44', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1592', '149', '0.24', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1593', '149', '2.61', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1594', '149', '0.38', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1595', '149', '0.38', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1596', '150', '0.08', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1597', '150', '0.36', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1598', '150', '0.08', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1599', '150', '0.1', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1600', '150', '1.17', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1601', '150', '1.39', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1602', '150', '0.01', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1603', '150', '1.17', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1604', '150', '4.77', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1605', '150', '0.87', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1606', '150', '0.87', '新年快乐', '0', '2016-11-28 00:00:00', '2016-11-28 00:00:00');
INSERT INTO `lottery_item` VALUES ('1607', '151', '0.18', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1608', '151', '1.03', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1609', '151', '1.07', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1610', '151', '0.52', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1611', '151', '1.05', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1612', '151', '0.76', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1613', '151', '0.12', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1614', '151', '2.57', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1615', '151', '0.79', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1616', '151', '1.91', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1617', '151', '1.91', '新年快乐', '0', '2016-12-16 17:51:06', '2016-12-16 17:51:06');
INSERT INTO `lottery_item` VALUES ('1618', '152', '0.72', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1619', '152', '0.41', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1620', '152', '0.21', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1621', '152', '1.16', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1622', '152', '1.18', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1623', '152', '1.25', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1624', '152', '0.28', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1625', '152', '0.11', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1626', '152', '4.59', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1627', '152', '0.09', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1628', '152', '0.09', '新年快乐', '0', '2016-12-16 18:05:13', '2016-12-16 18:05:13');
INSERT INTO `lottery_item` VALUES ('1629', '153', '0.4', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('1630', '153', '0.85', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('1631', '153', '0.74', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('1632', '153', '0.82', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('1633', '153', '1.36', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('1634', '153', '1.09', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('1635', '153', '0.63', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('1636', '153', '1.95', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('1637', '153', '1.5', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('1638', '153', '0.66', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');
INSERT INTO `lottery_item` VALUES ('1639', '153', '0.66', '新年快乐', '0', '2016-12-16 00:00:00', '2016-12-16 00:00:00');

-- ----------------------------
-- Table structure for rank
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `win_num` int(11) DEFAULT NULL,
  `win_rate` double DEFAULT NULL,
  `total_step` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rank
-- ----------------------------
INSERT INTO `rank` VALUES ('1', 'a', '8', '0.8', '1000');
INSERT INTO `rank` VALUES ('2', 'b', '11', '0.55', '900');
INSERT INTO `rank` VALUES ('3', 'c', '9', '0.5', '18000');
INSERT INTO `rank` VALUES ('4', 'd', '10', '0.5', '1000');
INSERT INTO `rank` VALUES ('5', 'e', '10', '0.6', '3000');

-- ----------------------------
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_roles_permissions` (`role_name`,`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for sys_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_user`;
CREATE TABLE `sys_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL COMMENT '是否已经锁定',
  `salt` varchar(50) DEFAULT NULL COMMENT '加密盐',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='系统管理员表';

-- ----------------------------
-- Records of sys_admin_user
-- ----------------------------
INSERT INTO `sys_admin_user` VALUES ('1', '', '', '', '', '0', 'LDOLjz2t', '2016-12-30 16:17:11', '2016-12-30 16:17:11');
INSERT INTO `sys_admin_user` VALUES ('2', 'sdsfsf', '', 'sdfsdf', 'sdf', '0', '2ZakDPLz', '2016-12-30 16:17:43', '2016-12-30 16:17:43');
INSERT INTO `sys_admin_user` VALUES ('3', '1', '18664315576', '1', '1', '0', 'wXsRhybk', '2016-12-30 17:14:16', '2016-12-30 17:14:16');
INSERT INTO `sys_admin_user` VALUES ('4', '1', '18664315576', '1', '1', '0', 'aez4sn3y', '2016-12-30 17:16:41', '2016-12-30 17:16:41');
INSERT INTO `sys_admin_user` VALUES ('5', '1', '18664315576', '1', '1', '0', 'd0BBU03x', '2016-12-30 17:19:15', '2016-12-30 17:19:15');
INSERT INTO `sys_admin_user` VALUES ('6', '1', '18664315576', '1', '1', '0', 'nkyegX2t', '2016-12-30 17:30:42', '2016-12-30 17:30:42');

-- ----------------------------
-- Table structure for sys_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_permissions`;
CREATE TABLE `sys_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_permissions_permission` (`permission`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permissions
-- ----------------------------
INSERT INTO `sys_permissions` VALUES ('52', 'user:create', '用户模块新增', '1');
INSERT INTO `sys_permissions` VALUES ('53', 'user:update', '用户模块修改', '1');
INSERT INTO `sys_permissions` VALUES ('54', 'menu:create', '菜单模块新增', '1');

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_roles_role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES ('26', 'admin', '管理员', '1');
INSERT INTO `sys_roles` VALUES ('27', 'user', '用户管理员', '1');

-- ----------------------------
-- Table structure for sys_roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_permissions`;
CREATE TABLE `sys_roles_permissions` (
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  `permission_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roles_permissions
-- ----------------------------
INSERT INTO `sys_roles_permissions` VALUES ('26', '52');
INSERT INTO `sys_roles_permissions` VALUES ('26', '53');
INSERT INTO `sys_roles_permissions` VALUES ('26', '54');
INSERT INTO `sys_roles_permissions` VALUES ('27', '52');
INSERT INTO `sys_roles_permissions` VALUES ('27', '53');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_users_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('8', 'zhang', 'b57187b0b69bfc51ac7b4c22acf04ddb', '6253bfe065aabad95d663afa7f046d9b', '0');
INSERT INTO `sys_users` VALUES ('9', 'li', '5bd1eda11c251d8f7bf90090bd9ff153', '34b11507baf6460baff935d01260c300', '0');
INSERT INTO `sys_users` VALUES ('10', 'wu', '2a5b455e96c52d565cbffd2fe0d380c8', '99d54a125cceefc8e1cd737b31181b2c', '0');
INSERT INTO `sys_users` VALUES ('11', 'wang', '29bbed75b47e2e90cf7bb3f547c308cb', 'd4a03d3903750cbf10390addac445794', '0');

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES ('8', '26');
INSERT INTO `sys_users_roles` VALUES ('10', '11');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `cno` bigint(20) NOT NULL,
  `cname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('1', 'JAVA程序设计');
INSERT INTO `t_course` VALUES ('2', 'ORACLE开发');
INSERT INTO `t_course` VALUES ('3', 'C++程序设计');
INSERT INTO `t_course` VALUES ('4', 'C#程序设计');
INSERT INTO `t_course` VALUES ('5', 'Windows实战');
INSERT INTO `t_course` VALUES ('6', 'Center OS教程');
INSERT INTO `t_course` VALUES ('7', 'Jsp/Servlet开发');
INSERT INTO `t_course` VALUES ('8', 'J2EE从入门到精通');
INSERT INTO `t_course` VALUES ('9', 'EJB及设计模式');
INSERT INTO `t_course` VALUES ('10', 'Javascript/jQuery实战');
INSERT INTO `t_course` VALUES ('11', 'Flash设计');
INSERT INTO `t_course` VALUES ('12', 'HTML/CSS/JAVASCRIPT实战');
INSERT INTO `t_course` VALUES ('13', '精通ASP.NET');
INSERT INTO `t_course` VALUES ('14', 'JBoss入门');
INSERT INTO `t_course` VALUES ('15', 'Spring开发');

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score` (
  `sno` bigint(20) NOT NULL,
  `cno` bigint(20) DEFAULT NULL,
  `grade` double(4,1) DEFAULT NULL,
  `tno` bigint(20) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES ('1', '2', '90.0', '2', '1');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `sname` varchar(30) DEFAULT NULL,
  `sdree` varchar(50) DEFAULT NULL,
  `sage` smallint(3) DEFAULT NULL,
  `ssex` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '李坤', '天融信', '26', '男');
INSERT INTO `t_student` VALUES ('2', '曹贵生', '中银', '26', '男');
INSERT INTO `t_student` VALUES ('3', '柳波', '淘宝', '27', '男');
INSERT INTO `t_student` VALUES ('4', '纪争光', 'IBM', '23', '男');
INSERT INTO `t_student` VALUES ('5', '李学宇', '微软', '25', '女');
INSERT INTO `t_student` VALUES ('6', '李雪琪', '文思', '25', '女');
INSERT INTO `t_student` VALUES ('7', '陈绪', '百度', '26', '男');
INSERT INTO `t_student` VALUES ('8', '韩正阳', '中海油', '24', '男');
INSERT INTO `t_student` VALUES ('9', '陈伟东', '腾讯', '24', '男');
INSERT INTO `t_student` VALUES ('10', '刘兵', '华为', '24', '男');
INSERT INTO `t_student` VALUES ('11', '丁成云', '联想', '25', '女');
INSERT INTO `t_student` VALUES ('12', '王鹏', '中兴', '25', '男');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `password_salt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_users_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'zhang', '123', null);

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `role_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_roles` (`username`,`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_roles
-- ----------------------------

-- ----------------------------
-- Procedure structure for proc_eread_personal
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_eread_personal`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_eread_personal`(
par_act_id BIGINT
)
BEGIN 
	DECLARE errno TINYINT DEFAULT 0;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION BEGIN SET errno=1;END;
	
	CALL proc_runing_log('proc_eread_personal','执行开始!','','info');
	
	UPDATE eread_overview_personal eop
	LEFT JOIN (SELECT emp_id,COUNT(id) COUNT FROM eread_exp WHERE act_id=par_act_id AND del_flag=0 GROUP BY emp_id) ee1 ON eop.emp_id = ee1.emp_id
	LEFT JOIN (SELECT emp_id,COUNT(id) COUNT FROM eread_exp WHERE act_id=par_act_id AND del_flag=0 AND tag=1 GROUP BY emp_id) ee2 ON eop.emp_id = ee2.emp_id
	LEFT JOIN (SELECT emp_id,SUM(exp_char_num) char_num_sum FROM eread_exp WHERE act_id=par_act_id AND del_flag=0 GROUP BY emp_id) ee3 ON eop.emp_id = ee3.emp_id
	LEFT JOIN (SELECT emp_id,SUM(praise_num) praise_num_sum FROM eread_exp WHERE act_id=par_act_id AND del_flag=0 GROUP BY emp_id) ee4 ON eop.emp_id = ee4.emp_id
	LEFT JOIN (SELECT emp_id,COUNT(id) COUNT FROM eread_praise_record WHERE act_id=par_act_id AND del_flag=0 GROUP BY emp_id) epr ON eop.emp_id = epr.emp_id
	LEFT JOIN (SELECT emp_id,SUM(read_rum) read_num_sum FROM eread_exp WHERE act_id=par_act_id AND del_flag=0 GROUP BY emp_id) ee5 ON eop.emp_id = ee5.emp_id
	LEFT JOIN (SELECT emp_id,COUNT(id) COUNT FROM eread_collection_record WHERE act_id=par_act_id AND del_flag=0 GROUP BY emp_id) ecr ON eop.emp_id = ecr.emp_id
	LEFT JOIN (SELECT emp_id,SUM(integral) integral_sum FROM eread_integral_record WHERE act_id=par_act_id AND del_flag=0 GROUP BY emp_id) eir ON eop.emp_id = eir.emp_id
	SET 
	eop.exp_count = IFNULL(ee1.count,0),
	eop.es_exp_count = IFNULL(ee2.count,0),
	eop.exp_char_count = IFNULL(ee3.char_num_sum,0),
	eop.praise_count=IFNULL(ee4.praise_num_sum,0),
	eop.my_praise_count=IFNULL(epr.count,0),
	eop.visit_count = IFNULL(ee5.read_num_sum,0),
	eop.collection_count=IFNULL(ecr.count,0),
	eop.integral_count=IFNULL(eir.integral_sum,0),
	eop.update_time = NOW()
	WHERE eop.act_id=par_act_id;
	
	IF (errno=1) THEN
		CALL proc_runing_log('proc_eread_personal','出错!','出错!','error');
	ELSE
		CALL proc_runing_log('proc_eread_personal','执行结束~~','','info');
	END IF;
  
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_runing_log
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_runing_log`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_runing_log`(
par_FunName VARCHAR(100)
,par_ContextInfo VARCHAR(1000)
,par_ErrInfo VARCHAR(2000)
,par_LogLevel VARCHAR(10) 
)
BEGIN
	INSERT INTO sys_function_runlog(FunName,ContextInfo,ErrInfo,LogLevel,CREATE_TIME)
		VALUES(par_FunName,par_ContextInfo,par_ErrInfo,par_LogLevel,NOW());
END
;;
DELIMITER ;
