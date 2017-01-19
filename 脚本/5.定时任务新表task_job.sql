/*
Navicat MySQL Data Transfer

Source Server         : locahost
Source Server Version : 50518
Source Host           : localhost:3306
Source Database       : lottery

Target Server Type    : MYSQL
Target Server Version : 50518
File Encoding         : 65001

Date: 2017-01-19 23:03:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for task_job
-- ----------------------------
DROP TABLE IF EXISTS `task_job`;
CREATE TABLE `task_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(100) DEFAULT NULL COMMENT '任务标识',
  `job_group` varchar(100) DEFAULT NULL COMMENT '所属组标识',
  `job_status` varchar(1) DEFAULT NULL COMMENT '状态0不可用1可用',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT '时间表达式',
  `description` varchar(100) DEFAULT NULL,
  `bean_class` varchar(100) DEFAULT NULL,
  `is_concurrent` varchar(1) DEFAULT NULL COMMENT '0同步1异步',
  `spring_id` varchar(100) DEFAULT NULL,
  `method_name` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务表';

-- ----------------------------
-- Records of task_job
-- ----------------------------
INSERT INTO `task_job` VALUES ('1', 'demo', 'test', '1', '0/5 * * * * ?', '测试', 'com.hai.demo.schedule.schedule.DemoSchedule', '1', 'demoSchedule', 'test', '2016-11-20 00:00:00', '2016-11-20 00:00:00');
INSERT INTO `task_job` VALUES ('2', 'match', 'spider', '1', '0 0 1 * * ?', '抓取直播吧赛事信息', 'com.hai.demo.schedule.schedule.SpiderSchedule', '1', 'spiderSchedule', 'matchFech', '2016-11-20 00:00:00', '2016-11-20 00:00:00');
INSERT INTO `task_job` VALUES ('3', 'match', 'spider', '1', '0 0/1 * * * ?', '抓取直播吧比分信息', 'com.hai.demo.schedule.schedule.SpiderSchedule', '1', 'spiderSchedule', 'bfFech', '2016-11-20 00:00:00', '2016-11-20 00:00:00');
