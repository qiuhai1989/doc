/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/3/12 10:10:37                           */
/*==============================================================*/


drop table if exists cms_schedule_task_job;

/*==============================================================*/
/* Table: cms_schedule_task_job                                 */
/*==============================================================*/
create table cms_schedule_task_job
(
   id                   int not null auto_increment,
   job_name             varchar(100) comment '任务标识',
   job_group            varchar(100) comment '所属组标识',
   job_status           varchar(1) comment '状态0不可用1可用',
   cron_expression      varchar(100) comment '时间表达式',
   description          varchar(100),
   bean_class           varchar(100),
   is_concurrent        varchar(1) comment '0同步1异步',
   spring_id            varchar(100),
   method_name          varchar(100),
   created              date,
   updated              date,
   primary key (id)
);

alter table cms_schedule_task_job comment '定时任务表';



insert into cms_schedule_task_job (job_name,job_group,job_status,cron_expression,description,bean_class,is_concurrent,spring_id,method_name,created,updated) 
values('demo','test',1,'0/5 * * * * ?','测试','com.hai.demo.schedule.schedule.DemoSchedule',1,'demoSchedule','test',now(),now());