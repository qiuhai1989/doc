CREATE DEFINER=`EAP_DEV_DEV`@`%` PROCEDURE `wicsg_app_dev_30d1`.`proc_eread_rank_personal`(
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