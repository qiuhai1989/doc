
CREATE TABLE `sys_log_audit_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `description` varchar(256) DEFAULT NULL COMMENT '模板描述',
  `type_id` varchar(24) NOT NULL COMMENT '操作类型ID',
  `type_name` varchar(24) NOT NULL COMMENT '操作类型名称',
  `module_id` varchar(24) NOT NULL COMMENT '模块ID',
  `module_name` varchar(24) NOT NULL COMMENT '模块名称',
  `title_template` varchar(240) NOT NULL COMMENT '标题模板',
  `detail_template` varchar(2048) NOT NULL COMMENT '明细模板',
  `show_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显示开关,是否在日志功能列表中显示，true-显示、false-不显示',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审计日志模板表';


CREATE TABLE `sys_log_audit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `req_url` varchar(128) DEFAULT NULL COMMENT '访问URL',
  `req_method` varchar(8) DEFAULT NULL COMMENT '请求方式',
  `req_params` text COMMENT '请求的参数',
  `req_ip` varchar(32) DEFAULT NULL COMMENT 'IP地址',
  `resp_status` int(11) DEFAULT NULL COMMENT 'http请求响应状态码',
  `resp_content` text COMMENT '操作响应报文',
  `type_id` varchar(24) DEFAULT NULL COMMENT '操作类型ID',
  `type_name` varchar(24) DEFAULT NULL COMMENT '操作类型名称',
  `module_id` varchar(24) DEFAULT NULL COMMENT '所属模块ID',
  `module_name` varchar(24) DEFAULT NULL COMMENT '所属模块名称',
  `title` varchar(1024) DEFAULT NULL COMMENT '标题',
  `detail` text COMMENT '详情',
  `show_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否公开给用户',
  `user_id` varchar(32) NOT NULL COMMENT '操作人',
  `user_name` varchar(32) DEFAULT NULL COMMENT '操作人名称',
  `remark` text COMMENT '备注，可以记录异常信息',
  `method_name` varchar(64) DEFAULT NULL COMMENT '被访问的方法名',
  `class_path` varchar(256) DEFAULT NULL COMMENT '被访问的类路径',
  `consume_time` int(11) DEFAULT NULL COMMENT '请求耗时，单位为毫秒',
  `template_id` bigint(20) NOT NULL COMMENT '模板ID',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1422 DEFAULT CHARSET=utf8 COMMENT='审计日志';


insert into sys_log_audit_template (description,type_id,type_name,module_id,module_name,title_template,detail_template,show_flag,create_date,update_date)
values('红包-新增',2,'新增',1,'未知','"${user.username}"上线了"${afterData.wishing}"活动','"${user.username}"上线了"${afterData.wishing}"活动',true,now(),now());

