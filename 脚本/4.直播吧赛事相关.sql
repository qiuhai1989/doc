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
   match_type           varchar(20) comment '��������',
   home_team_name       varchar(100) comment '��������',
   guest_team_name      varchar(100) comment '�Ͷ�����',
   sid                  varchar(100) comment '���±��',
   home_score           int comment '���ӵ÷�',
   guest_score          int comment '�Ͷӵ÷�',
   home_team_img        varchar(200) comment '����ͼƬ',
   guest_team_img       varchar(200) comment '�Ͷ�ͼƬ',
   tag                  varchar(50) comment '���±�ǩ�����ж���Զ��Ÿ������磺����,�¼�,ɳ����',
   begin_time           timestamp comment '����ʱ��',
   status               int(2) comment '����״̬��0δ��ʼ��1���ڣ�2ȡ����3�����У�4�ѽ���',
   create_time          timestamp comment '����ʱ��',
   modify_time          timestamp comment '�޸�ʱ��',
   primary key (id)
);

alter table match_info comment '���¶�����Ϣ';

