DROP DATABASE IF EXISTS testerq;
CREATE DATABASE IF NOT EXISTS testerq default charset utf8mb4 COLLATE utf8mb4_unicode_ci; 
CREATE USER IF NOT EXISTS tquser@'%' IDENTIFIED BY 'passwd';
CREATE USER IF NOT EXISTS tquser@'localhost' IDENTIFIED BY 'passwd';
GRANT ALL PRIVILEGES ON testerq.* TO tquser;
use testerq;

create table IF NOT EXISTS 部门
(
部门编号 int(2) not null,
名称 varchar(14),
驻地 varchar(13)
);
alter table 部门 add constraint PK_部门 primary key (部门编号);

create table IF NOT EXISTS 员工
(
工号 int(4) not null,
姓名 varchar(10),
岗位 varchar(9),
直接领导 int(4),
入职时间 date,
薪水 int(7 ),
提成 int(7 ),
部门编号 int(2)
);
alter table 员工 add constraint PK_员工 primary key (工号);
alter table 员工 add constraint FK_部门编号 foreign key (部门编号) references 部门 (部门编号);

insert into 部门 (部门编号, 名称, 驻地) values (10, '财务部', '北京');
insert into 部门 (部门编号, 名称, 驻地) values (20, '研发部', '上海');
insert into 部门 (部门编号, 名称, 驻地) values (30, '销售部', '广州');
insert into 部门 (部门编号, 名称, 驻地) values (40, '运维部', '深圳');
commit;

insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7369, 'SMITH', '程序员', 7902, str_to_date('17-12-2000', '%d-%m-%Y'), 800, null, 20);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7499, 'ALLEN', '销售', 7698, str_to_date('20-02-2001', '%d-%m-%Y'), 1600, 300, 30);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7521, 'WARD', '销售', 7698, str_to_date('22-02-2001', '%d-%m-%Y'), 1250, 500, 30);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7566, 'JONES', '经理', 7839, str_to_date('02-04-2001', '%d-%m-%Y'), 2975, null, 20);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7654, 'MARTIN', '销售', 7698, str_to_date('28-09-2001', '%d-%m-%Y'), 1250, 1400, 30);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7698, 'BLAKE', '经理', 7839, str_to_date('01-05-2001', '%d-%m-%Y'), 2850, null, 30);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7782, 'CLARK', '经理', 7839, str_to_date('09-06-2001', '%d-%m-%Y'), 2450, null, 10);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7788, 'SCOTT', '架构师', 7566, str_to_date('19-04-2007', '%d-%m-%Y'), 3000, null, 20);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7839, 'KING', 'PRESIDENT', null, str_to_date('17-11-2001', '%d-%m-%Y'), 5000, null, 10);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7844, 'TURNER', '销售', 7698, str_to_date('08-09-2001', '%d-%m-%Y'), 1500, 0, 30);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7876, 'ADAMS', '程序员', 7788, str_to_date('23-05-2007', '%d-%m-%Y'), 1100, null, 20);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7900, 'JAMES', '程序员', 7698, str_to_date('03-12-2001', '%d-%m-%Y'), 950, null, 30);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7902, 'FORD', '架构师', 7566, str_to_date('03-12-2001', '%d-%m-%Y'), 3000, null, 20);
insert into 员工 (工号, 姓名, 岗位, 直接领导, 入职时间, 薪水, 提成, 部门编号) values (7934, 'MILLER', '程序员', 7782, str_to_date('23-01-2002', '%d-%m-%Y'), 1300, null, 10);
commit;
