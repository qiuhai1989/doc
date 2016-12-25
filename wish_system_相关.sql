/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/12/25 22:58:29                          */
/*==============================================================*/


drop table if exists sys_user;

/*==============================================================*/
/* Table: sys_user                                              */
/*==============================================================*/
create table sys_user
(
   id                   int not null auto_increment,
   name                 varchar(50),
   mobile               varchar(50),
   pwd                  varchar(50),
   account              varchar(50),
   salt                 varchar(50) comment '加密盐',
   create_time          datetime,
   modify_time          datetime,
   primary key (id)
);

alter table sys_user comment '系统管理员表';

