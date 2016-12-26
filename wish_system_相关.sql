/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/12/26 10:59:44                          */
/*==============================================================*/


drop table if exists sys_admin_user;

/*==============================================================*/
/* Table: sys_admin_user                                        */
/*==============================================================*/
create table sys_admin_user
(
   id                   int not null auto_increment,
   name                 varchar(50),
   mobile               varchar(50),
   pwd                  varchar(50),
   account              varchar(50),
   locked               tinyint(1) comment '�Ƿ��Ѿ�����',
   salt                 varchar(50) comment '������',
   create_time          datetime,
   modify_time          datetime,
   primary key (id)
);

alter table sys_admin_user comment 'ϵͳ����Ա��';

