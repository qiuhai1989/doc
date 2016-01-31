


drop table if exists Lottery_Activity;

drop table if exists Lottery_Item;

/*==============================================================*/
/* Table: Lottery_Activity                                      */
/*==============================================================*/
create table Lottery_Activity
(
   id                   bigint not null auto_increment,
   hb_type              varchar(10) comment '红包类型NORMAL-普通红包；GROUP-裂变红包',
   amt_type             varchar(10) comment 'RAND随机，NORMAL普通',
   total_amount         float comment '总金额',
   total_num            int(3) comment '红包发放总人数',
   wishing              varchar(999) comment '祝福语',
   sign                 varchar(100) comment '唯一签名',
   create_time          timestamp,
   modify_time          timestamp,
   primary key (id)
);

alter table Lottery_Activity comment '红包活动信息表';

/*==============================================================*/
/* Table: Lottery_Item                                          */
/*==============================================================*/
create table Lottery_Item
(
   id                   bigint not null auto_increment,
   lottery_id           bigint comment '红包活动表对应记录主键',
   amount               float comment '金额',
   wishing              varchar(999) comment '祝福语',
   is_open              tinyint comment '状态0未被领取1已被领取',
   create_time          timestamp,
   modify_time          timestamp,
   primary key (id)
);

alter table Lottery_Item comment '红包拆分明细表';