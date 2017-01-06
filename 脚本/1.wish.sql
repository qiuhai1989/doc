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
   job_name             varchar(100) comment '�����ʶ',
   job_group            varchar(100) comment '�������ʶ',
   job_status           varchar(1) comment '״̬0������1����',
   cron_expression      varchar(100) comment 'ʱ����ʽ',
   description          varchar(100),
   bean_class           varchar(100),
   is_concurrent        varchar(1) comment '0ͬ��1�첽',
   spring_id            varchar(100),
   method_name          varchar(100),
   created              date,
   updated              date,
   primary key (id)
);

alter table cms_schedule_task_job comment '��ʱ�����';



insert into cms_schedule_task_job (job_name,job_group,job_status,cron_expression,description,bean_class,is_concurrent,spring_id,method_name,created,updated) 
values('demo','test',1,'0/5 * * * * ?','����','com.hai.demo.schedule.schedule.DemoSchedule',1,'demoSchedule','test',now(),now());