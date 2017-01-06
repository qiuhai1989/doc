--/
CREATE DEFINER=`EAP_DEV_DEV`@`%` PROCEDURE proc_eread_organ(
par_act_id BIGINT
)
BEGIN 
	DECLARE errno TINYINT DEFAULT 0;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION BEGIN SET errno=1;END;
	
	CALL proc_runing_log('proc_eread_organ','执行开始!','','info');
	
	DELETE FROM eread_overview_organ WHERE act_id = par_act_id;
	
	INSERT INTO eread_overview_organ (act_id, organ_id, create_time, update_time)
	SELECT par_act_id,org_id,NOW(),NOW()
	FROM sys_organ so 
	WHERE so.type=1 OR so.parent_org_id IN (SELECT org_id FROM sys_organ soo WHERE soo.type=1) AND so.del_flag=0;
-- 	统计单位基本信息
	UPDATE eread_overview_organ eoo
		INNER JOIN sys_organ so ON eoo.act_id = par_act_id AND eoo.organ_id = so.org_id AND so.type=1
		LEFT JOIN (SELECT se.group_id,COUNT(eop.emp_id) COUNT FROM eread_overview_personal eop 
			INNER JOIN sys_employee se ON eop.act_id=par_act_id AND eop.emp_id = se.emp_id AND se.status=1 GROUP BY se.group_id) partc ON eoo.organ_id = partc.group_id
		LEFT JOIN (SELECT se.group_id,COUNT(se.emp_id) COUNT FROM sys_employee se WHERE se.status=1 GROUP BY se.group_id) partt ON eoo.organ_id = partt.group_id
		LEFT JOIN (SELECT se.group_id,SUM(eop.exp_count) COUNT FROM eread_overview_personal eop 
			INNER JOIN sys_employee se ON eop.act_id=par_act_id AND eop.emp_id = se.emp_id AND se.status=1 GROUP BY se.group_id) expc ON eoo.organ_id = expc.group_id
		LEFT JOIN (SELECT se.group_id,SUM(eop.es_exp_count) COUNT FROM eread_overview_personal eop 
			INNER JOIN sys_employee se ON eop.act_id=par_act_id AND eop.emp_id = se.emp_id AND se.status=1 GROUP BY se.group_id) esexpc ON eoo.organ_id = esexpc.group_id
		LEFT JOIN (SELECT se.group_id,SUM(eop.exp_char_count) COUNT FROM eread_overview_personal eop 
			INNER JOIN sys_employee se ON eop.act_id=par_act_id AND eop.emp_id = se.emp_id AND se.status=1 GROUP BY se.group_id) expchc ON eoo.organ_id = expchc.group_id
		LEFT JOIN (SELECT se.group_id,SUM(eop.praise_count) COUNT FROM eread_overview_personal eop 
			INNER JOIN sys_employee se ON eop.act_id=par_act_id AND eop.emp_id = se.emp_id AND se.status=1 GROUP BY se.group_id) praisec ON eoo.organ_id = praisec.group_id
	 SET eoo.exp_count = IFNULL(expc.count,0),
		 eoo.exp_char_count = IFNULL(expchc.count,0),
		 eoo.es_exp_count = IFNULL(esexpc.count,0),
		 eoo.praise_count = IFNULL(praisec.count,0),
		 eoo.partake_count = IFNULL(partc.count,0),
		 eoo.partake_total = IFNULL(partt.count,0),
		 eoo.update_time = NOW()
	 WHERE eoo.act_id = par_act_id;
	 
-- 	 统计单位平均分
	 UPDATE eread_overview_organ eoo
		INNER JOIN sys_organ so ON eoo.act_id = par_act_id AND eoo.organ_id = so.org_id AND so.type=1
		LEFT JOIN (SELECT erp.organ_id,sum(eop.integral_count) COUNT FROM eread_overview_personal eop 
			INNER JOIN eread_rank_personal erp ON eop.act_id=par_act_id AND erp.act_id=par_act_id AND eop.emp_id = erp.emp_id GROUP BY erp.organ_id) partc ON eoo.organ_id = partc.organ_id
	 SET eoo.average_integral = IFNULL(partc.count,0)
	 WHERE eoo.act_id = par_act_id;
-- 	 统计一级部门基本信息
	UPDATE eread_overview_organ eoo
		INNER JOIN sys_organ so ON eoo.act_id = par_act_id AND eoo.organ_id = so.org_id AND so.type=2
		LEFT JOIN (SELECT erp.dept_id,COUNT(eop.emp_id) count FROM eread_overview_personal eop 
			INNER JOIN eread_rank_personal erp ON eop.act_id=par_act_id AND eop.emp_id = erp.emp_id GROUP BY erp.dept_id) partc ON eoo.organ_id = partc.dept_id
		LEFT JOIN (SELECT erp.dept_id,SUM(eop.exp_count) count FROM eread_overview_personal eop 
			INNER JOIN eread_rank_personal erp ON eop.act_id=par_act_id AND eop.emp_id = erp.emp_id GROUP BY erp.dept_id) expc ON eoo.organ_id = expc.dept_id
		LEFT JOIN (SELECT erp.dept_id,SUM(eop.es_exp_count) count FROM eread_overview_personal eop 
			INNER JOIN eread_rank_personal erp ON eop.act_id=par_act_id AND eop.emp_id = erp.emp_id GROUP BY erp.dept_id) esexpc ON eoo.organ_id = esexpc.dept_id		
		LEFT JOIN (SELECT erp.dept_id,SUM(eop.exp_char_count) count FROM eread_overview_personal eop 
			INNER JOIN eread_rank_personal erp ON eop.act_id=par_act_id AND eop.emp_id = erp.emp_id GROUP BY erp.dept_id) expchc ON eoo.organ_id = expchc.dept_id
		LEFT JOIN (SELECT erp.dept_id,SUM(eop.praise_count) count FROM eread_overview_personal eop 
			INNER JOIN eread_rank_personal erp ON eop.act_id=par_act_id AND eop.emp_id = erp.emp_id GROUP BY erp.dept_id) praisec ON eoo.organ_id = praisec.dept_id
	 SET eoo.exp_count = IFNULL(expc.count,0),
		 eoo.exp_char_count = IFNULL(expchc.count,0),
		 eoo.es_exp_count = IFNULL(esexpc.count,0),
		 eoo.praise_count = IFNULL(praisec.count,0),
		 eoo.partake_count = IFNULL(partc.count,0),
		 eoo.partake_total = (SELECT count(*) FROM sys_employee ptse INNER JOIN sys_organ ptso ON ptse.dept_id = ptso.org_id WHERE ptso.path LIKE concat(so.path,'%')),
		 eoo.update_time = NOW();
		 
-- 	统计一级部门平均分
	UPDATE eread_overview_organ eoo
		INNER JOIN sys_organ so ON eoo.act_id = par_act_id AND eoo.organ_id = so.org_id AND so.type=2
		LEFT JOIN (SELECT erp.dept_id,sum(eop.integral_count) COUNT FROM eread_overview_personal eop 
			INNER JOIN eread_rank_personal erp ON eop.act_id=par_act_id AND erp.act_id=par_act_id AND eop.emp_id = erp.emp_id GROUP BY erp.dept_id) partc ON eoo.organ_id = partc.dept_id
	 SET eoo.average_integral = IFNULL(partc.count,0)
	 WHERE eoo.act_id = par_act_id;
	IF (errno=1) THEN
		CALL proc_runing_log('proc_eread_organ','出错!','出错!','error');
	ELSE
		CALL proc_runing_log('proc_eread_organ','执行结束~~','','info');
	END IF;
  
END
/
--/
CREATE DEFINER=`EAP_DEV_DEV`@`%` PROCEDURE proc_eread_personal(
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
/
--/
CREATE DEFINER=`EAP_DEV_DEV`@`%` PROCEDURE proc_eread_rank_organ(
par_act_id BIGINT
)
BEGIN 
	DECLARE errno TINYINT DEFAULT 0;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION BEGIN SET errno=1;END;
	
	CALL proc_runing_log('proc_eread_rank_organ','执行开始!','','info');
-- 	更新单位排行榜表_昨日全网排行、昨日同级排行 到 单位学习概况表
	UPDATE eread_overview_organ eoo 
	INNER JOIN eread_rank_organ ero ON eoo.act_id = par_act_id AND ero.act_id = par_act_id AND eoo.organ_id = ero.organ_id
	SET eoo.yesterday_rank = ero.rank,
		eoo.yesterday_level_rank = ero.same_level_rank;
-- 	删除单位排行榜表当天数据
	DELETE FROM eread_rank_organ where act_id = par_act_id;
	
-- 	初始化单位积分 和单位总排行
	INSERT INTO eread_rank_organ (act_id, organ_id, avg_integral, rank, same_level_rank, del_flag, create_time, update_time)
	SELECT par_act_id,t.organ_id,t.average_integral,@rownum:=@rownum+1 rank,0,0,NOW(),NOW()
	FROM 
	(SELECT @rownum:=0) r,
	(SELECT eoo.organ_id,eoo.average_integral
	FROM eread_overview_organ eoo 
	INNER JOIN sys_organ so ON eoo.act_id=par_act_id AND eoo.organ_id = so.org_id AND so.type=1
	ORDER BY eoo.average_integral DESC,so.level,so.sort_num) t;
	
-- 	初始化部门排行榜，即上级单位为单位的
	INSERT INTO eread_rank_organ (act_id, organ_id, avg_integral, rank, same_level_rank, del_flag, create_time, update_time)
	SELECT 1,t.organ_id,t.average_integral,@rownum:=@rownum+1 rank,0,0,NOW(),NOW()
	FROM 
	(SELECT @rownum:=0) r,
	(SELECT eoo.organ_id,eoo.average_integral
	FROM eread_overview_organ eoo 
	INNER JOIN sys_organ so ON eoo.act_id=1 AND eoo.organ_id = so.org_id AND so.type=2
	ORDER BY eoo.average_integral DESC,so.level,so.sort_num) t;
-- 	修改单位同级排行
	UPDATE eread_rank_organ ero
	INNER JOIN sys_organ so ON ero.act_id=1 AND so.type=1 AND ero.organ_id = so.org_id
	INNER JOIN (SELECT * FROM temp_eread_rank_organ WHERE TYPE=1) t ON ero.organ_id = t.organ_id
	SET ero.same_level_rank = (SELECT COUNT(*)+1 FROM temp_eread_rank_organ tero WHERE tero.type=1 AND tero.parent_org_id=t.parent_org_id AND tero.rank<ero.rank);
-- 	修改部门同级排行
	UPDATE eread_rank_organ ero
	INNER JOIN sys_organ so ON ero.act_id=par_act_id AND so.type=2 AND ero.organ_id = so.org_id
	INNER JOIN (SELECT * FROM temp_eread_rank_organ WHERE TYPE=2) t ON ero.organ_id = t.organ_id
	SET ero.same_level_rank = (SELECT COUNT(*)+1 FROM temp_eread_rank_organ tero WHERE tero.type=2 AND tero.parent_org_id=t.parent_org_id AND tero.rank<ero.rank);
	IF (errno=1) THEN
		CALL proc_runing_log('proc_eread_rank_organ','出错!','出错!','error');
	ELSE
		CALL proc_runing_log('proc_eread_rank_organ','执行结束~~','','info');
	END IF;
  
END
/
--/
CREATE DEFINER=`EAP_DEV_DEV`@`%` PROCEDURE proc_eread_rank_personal(
par_act_id BIGINT
)
BEGIN 
	DECLARE errno TINYINT DEFAULT 0;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION BEGIN SET errno=1;END;
	
	CALL proc_runing_log('proc_eread_rank_personal','执行开始!','','info');
	
	DELETE FROM eread_rank_personal WHERE act_id = par_act_id;
	
	INSERT INTO eread_rank_personal (TYPE, act_id, organ_id, dept_id, emp_id, integral, rank, same_level_rank, organ_rank, dept_rank, del_flag, create_time, update_time)
	SELECT 1,t.act_id,t.group_id,t.dept_id,t.emp_id,t.integral_count
	,@rownum:=@rownum+1 rank,0 same_level_rank,0 organ_rank,0 dept_rank,0 del_flag,NOW(),NOW()
	FROM 
	(SELECT @rownum:=0) r,
	(SELECT 1,eop.act_id, se.group_id, se.dept_id, se.emp_id,eop.integral_count
	,(SELECT MIN(create_date) FROM eread_exp ee WHERE ee.emp_id =eop.emp_id) create_date
	FROM eread_overview_personal eop
	INNER JOIN sys_employee se ON eop.act_id=par_act_id AND eop.emp_id = se.emp_id) t
	ORDER BY integral_count DESC,t.create_date;
	
-- 	修改部门为对应的一级部门(erp.organ_id 改为inner join sys_organ单位，取path)
	UPDATE eread_rank_personal erp 
	INNER JOIN sys_organ so ON erp.dept_id = so.org_id
	SET erp.dept_id = SUBSTRING_INDEX(SUBSTRING_INDEX(so.path,CONCAT(erp.organ_id,','),-1),',',1)
	WHERE erp.act_id= par_act_id;
	
-- 	直接归属单位的，部门ID设置为单位ID
	update eread_rank_personal set dept_id = organ_id where dept_id is null;
	
	DROP TABLE IF EXISTS temp_eread_rank_personal;
	CREATE TABLE temp_eread_rank_personal 
	 SELECT  so.parent_org_id,erp.organ_id,erp.dept_id,erp.emp_id,erp.rank 
	 FROM eread_rank_personal erp
	 INNER JOIN sys_organ so ON erp.organ_id = so.org_id
	 WHERE erp.act_id=par_act_id;
	UPDATE temp_eread_rank_personal SET parent_org_id = 1 WHERE parent_org_id=0;
	
-- 	修改同级排行
	UPDATE eread_rank_personal erp
	INNER JOIN (SELECT * FROM temp_eread_rank_personal) t ON erp.organ_id = t.organ_id
	SET same_level_rank = (SELECT COUNT(*)+1 FROM temp_eread_rank_personal terp WHERE terp.organ_id=t.parent_org_id AND terp.rank<erp.rank)
	WHERE erp.act_id=par_act_id;
--	修改单位排行
	UPDATE eread_rank_personal erp
	SET organ_rank = (SELECT count(*)+1 FROM temp_eread_rank_personal terp WHERE terp.organ_id=erp.organ_id AND terp.rank<erp.rank)
	WHERE erp.act_id=par_act_id;
--	修改部门排行
	UPDATE eread_rank_personal erp
	SET dept_rank = (SELECT COUNT(*)+1 FROM temp_eread_rank_personal terp WHERE terp.dept_id=erp.dept_id AND terp.rank<erp.rank)
	WHERE erp.act_id=par_act_id;
	
	IF (errno=1) THEN
		CALL proc_runing_log('proc_eread_rank_personal','出错!','出错!','error');
	ELSE
		CALL proc_runing_log('proc_eread_rank_personal','执行结束~~','','info');
	END IF;
  
END
/
