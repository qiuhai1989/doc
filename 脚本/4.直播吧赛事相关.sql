/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/1/17 15:35:20                           */
/*==============================================================*/


drop table if exists match_info;

/*==============================================================*/
/* Table: match_info                                            */
/*==============================================================*/
create table match_info
(
   id                   bigint not null auto_increment,
   match_type           varchar(20) comment '联赛名称',
   home_team_name       varchar(100) comment '主队名称',
   guest_team_name      varchar(100) comment '客队名称',
   sid                  varchar(100) comment '赛事编号',
   home_score           int comment '主队得分',
   guest_score          int comment '客队得分',
   home_team_img        varchar(200) comment '主队图片',
   guest_team_img       varchar(200) comment '客队图片',
   tag                  varchar(50) comment '赛事标签，如有多个以逗号隔开例如：足球,德甲,沙尔克',
   begin_time           timestamp comment '比赛时间',
   status               int(2) comment '比赛状态：0未开始，1延期，2取消，3进行中，4已结束',
   create_time          timestamp comment '创建时间',
   modify_time          timestamp comment '修改时间',
   primary key (id)
);

alter table match_info comment '赛事对阵信息';

