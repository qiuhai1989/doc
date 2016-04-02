CREATE TABLE `animal` (
`id`  int NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) NULL ,
`type`  varchar(255) NULL ,
`value`  varchar(20) NULL ,
`create_time`  timestamp NULL ,
`modify_time`  timestamp  NULL,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8
;

insert into animal (name,type,value,create_time,modify_time)values('tiger','cat','0',now(),NOW());