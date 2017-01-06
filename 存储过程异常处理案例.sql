
delimiter //

CREATE PROCEDURE `proc_runing_log`(
par_FunName VARCHAR(100)
,par_ContextInfo VARCHAR(1000)
,par_ErrInfo VARCHAR(2000)
,par_LogLevel VARCHAR(10) 
)
BEGIN
	INSERT INTO sys_function_runlog(FunName,ContextInfo,ErrInfo,LogLevel,CREATE_TIME)
		VALUES(par_FunName,par_ContextInfo,par_ErrInfo,par_LogLevel,NOW());
END

//



delimiter //

CREATE PROCEDURE `proc_eread_personal`(
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

//
delimiter ;