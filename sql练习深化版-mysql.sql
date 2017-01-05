

drop table if exists T_COURSE;

drop table if exists T_SCORE;

drop table if exists T_STUDENT;


create table T_COURSE
(
   cno                  bigint not null,
   cname                varchar(30),
   primary key (cno)
);

create table T_SCORE
(
   sno                  bigint not null,
   cno                  bigint,
   grade                double precision(4,1),
   tno                  bigint,
   id                   bigint,
   primary key (sno)
);


create table T_STUDENT
(
   sno                  bigint not null auto_increment,
   sname                varchar(30),
   sdree                varchar(50),
   sage                 smallint(3),
   ssex                 varchar(14),
   primary key (sno)
);


-- 查询出选了课的学生的人数.
select count(DISTINCT sno) from t_score
-- 查询每门课程被选课的学生数
select cno, count(DISTINCT sno) from t_score GROUP BY cno
--  (七)查询选了全部课程的学员姓名和所属单位
-- 1.在课程表中查询出所有课程的数量
-- 2.在成绩表中查询出学生选课数等于步骤1中总选课数的学生的学号,注意要用distinct,having中可以使用count,where中不能使用count.
-- 3.在学生表中查出步骤2中学生的基本信息.
SELECT
st.sname,
st.sdree
from t_student st where st.sno in (
select sno from t_score GROUP BY sno 
HAVING count(DISTINCT cno) = (select count(1) from t_course)
)

-- 查询没有学全所有课的同学的学号、姓名
select st.sname, st.sdree
from t_student st
where st.sno in
(select sc.sno
from t_score sc
group by sc.sno
having count(distinct sc.cno) != (select count(*) from t_course));

-- –(九)查询选修课程超过5门的学员学号和所属单位
-- 1.在成绩表中查询出选课程超过5门的学生学号.
-- 2.在学生表中查询步骤1中学号的学生的基本信息.
select st.sname, st.sdree
from t_student st
where st.sno in
(select sc.sno
from t_score sc
group by sc.sno
having count(distinct sc.cno) >5);


-- (十)查询出没有选课的学生基本信息
-- 1.在成绩表中查询出所有选过课的学生的学号.
-- 2.在学生表中查询出步骤1中学生的基本信息.
select * from t_student
where sno  not in (
select DISTINCT sno from t_score
)

-- (十一) 列出有二门以上不及格课程的学生姓名及其平均成绩
-- 方法一
-- 1.在成绩表中查询出2门不及格学生的学号,结果记作t1
-- 2.将学生表和t1和成绩表三表作关联得到关联表,在关联表中取学生基本信息和平均成绩.
SELECT
student.sno,student.sname,avg(score.grade)
from t_student student JOIN
(
select sno from t_score where grade <60 GROUP BY sno
HAVING count(sno)>2) t1 on student.sno = t1.sno
JOIN t_score score on student.sno = score.sno
group by student.sno,student.sname

-- 方法二:
-- 1.在成绩表中查询出2门不及格学生的学号
-- 2.将学生表和成绩表通过学号作关联并根据步骤1中的结果作过滤,在关联结果中取出学生基本信息和平均成绩
select 
student.sno,student.sname,avg(score.grade)
from t_student student JOIN t_score score
on student.sno = score.sno
where student.sno in (select sno from t_score where grade <60 GROUP BY sno
HAVING count(sno)>2)
group by student.sno,student.sname

-- (十二) 查询平均成绩大于60分的同学的学号和平均成绩
-- 学生表和课程表关联,在having子句中过滤平均成绩大于60分.
select 
student.sno,student.sname,avg(score.grade)
from t_student student JOIN t_score score
on student.sno = score.sno
group by student.sno,student.sname
HAVING(avg(score.grade)>60)

select t1.sno, t1.avg_grade
from (select st.sno, avg(sc.grade) avg_grade
from t_student st, t_score sc
where st.sno = sc.sno
group by st.sno) t1
where t1.avg_grade > 60;

-- (十三)查询出只选修了一门课程的全部学生的学号和姓名
select 
sno,
sname
from t_student
where sno in (
select sno from t_score GROUP BY sno HAVING COUNT(sno)=1
)

select sc.sno, st.sname
from t_score sc
join t_student st
on sc.sno = st.sno
group by sc.sno, st.sname
having count(distinct sc.cno) = 1;

-- (十四)查询至少有一门课与学号为”1″的同学所学相同的同学的学号和姓名
select DISTINCT
stu.sno,
stu.sname
from t_student  stu join t_score sc on stu.sno = sc.sno
where sc.cno in (
select cno from t_score where sno=1
)
and sc.sno != 1

select st.sno, st.sname
from t_student st
join t_score sc1
on st.sno = sc1.sno
where sc1.cno in (select sc.cno from t_score sc where sc.sno = 1)
group by st.sno, st.sname;

-- (十五)列出既学过”1″号课程,又学过”2″号课程的所有学生姓名
select DISTINCT
stu.sno,
stu.sname
from t_student  stu where stu.sno in (
select sno from (
select DISTINCT sno,cno  from t_score 
where cno in (1,2)
GROUP BY sno,cno )t1
group by sno 
HAVING count(sno)=2
)

select st.sno, st.sname
from t_student st,
(select sc.sno
from t_score sc, t_course co
where sc.cno = co.cno
and co.cno in (1, 2)
group by sc.sno
having count(distinct sc.cno) = 2) t1
where st.sno = t1.sno;

-- (十六)查询至少学过学号为”1″的同学所有门课的同学学号和姓名
-- 1. 找出学号为1 学过的所有过程
-- 2. 查询出'1′号同学学习全部课程的数量.
-- 3. 将课程表和成绩表做关联,在关联表中查询出学生的学号,关联条件中加入过滤条件[课程号在步骤1查询结果范围内],过滤条件中加入数量等级步骤2中得到的数量.
-- 4. 在学生表中查询步骤3中的学号的学生的基本信息.

select 
sname,
sno
from t_student
where sno in (
select 
s1.sno
from t_score s1 JOIN t_course c1 on s1.cno = c1.cno
where c1.cno in (
select cno from t_score where sno=1
)
GROUP BY sno 
HAVING count(s1.sno) >= (select count(1) from t_score where sno=1)
)


-- (十七)查询和”6″号同学学习的课程完全相同的同学的学号和姓名
select 
sname,
sno
from t_student
where sno in (
select 
s1.sno
from t_score s1 JOIN t_course c1 on s1.cno = c1.cno
where c1.cno in (
select cno from t_score where sno=6
)
GROUP BY sno 
HAVING count(s1.sno) = (select count(1) from t_score where sno=6)
)

-- (十八)列出”1″号课成绩比”2″号课成绩高的所有学生的学号及其”1″号课和”2″号课的成绩
-- 1.将学生表和课程表作两次关联,一次关联用于取该学生课程'1′的成绩,另一次关联用于取该学生课程'2′的成绩.
select 
stu.sno,s1.grade,s2.grade
from t_student stu ,t_score s1,t_score s2
where stu.sno = s1.sno
and stu.sno =  s2.sno
and s1.cno = 1
and s2.cno = 2
and s1.grade>s2.grade

-- –(十九)查询所有同学的学号、姓名、选课数、总成绩
select 
stu.sno ,stu.sname,count(sc.cno),sum(sc.grade)
from t_student stu,t_score sc 
where stu.sno = sc.sno
group by stu.sno ,stu.sname

-- –(二十)查询课程成绩小于60分的同学的学号,姓名,课程名,成绩
select 
stu.sno ,stu.sname,course.cname,sc.grade
from t_student stu,t_score sc ,t_course course
where stu.sno = sc.sno
and sc.cno = course.cno
and sc.grade<60

-- (二十一)按平均成绩从到低显示所有学生的”JAVA程序设计”、”J2EE从入门到精通”、”EJB及设计模式”三门的课程成绩,
-- 并按如下形式显示: 学生ID,姓名,JAVA程序设计,J2EE从入门到精通,EJB及设计模式,有效课程数,有效课程平均分
-- 1.将成绩表和课程表关联得到结果记作: t1, 关联时的条件选择只统计以上三门课程.
-- 2.按题目中的要求组织统计结果.

select 
student.sno as 学生ID,
student.sname as 姓名,
sum(CASE t1.cname WHEN 'JAVA程序设计' THEN t1.grade end) as JAVA程序设计,
sum(CASE t1.cname WHEN 'J2EE从入门到精通' THEN t1.grade end) as J2EE从入门到精通,  
sum(CASE t1.cname WHEN 'EJB及设计模式' THEN t1.grade end) as EJB及设计模式,
avg(t1.grade)
from t_student student join (
select 
score.sno,score.cno,score.grade,course.cname
from t_score score join t_course course on score.cno = course.cno
where course.cname in ('JAVA程序设计','J2EE从入门到精通','EJB及设计模式') )t1
on student.sno = t1.sno
GROUP BY student.sno,student.sname
order by avg(t1.grade) 

-- (二十二)查询各科成绩最高和最低的分:以如下形式显示:课程ID,课程名,最高分,最低分

select 
score.cno 课程ID,
course.cname 课程名,
max(score.grade) 最高分,
min(score.grade) 最低分
from t_score score JOIN t_course course
on score.cno = course.cno
group by score.cno,course.cname

-- (二十三)按各科平均成绩从低到高和及格率的百分数从高到低顺序
-- 1.在成绩表中查出课程号,平均成绩,课程人数,记作 : t1
-- 2.在成绩表中查出课程号,及格的课程人数,记作 : t2
-- 3.将步骤1中的成绩和步骤2中的课程2关联,查出所要的结果并排序.

select  
t1.cno,t1.avgGrade 平均成绩,(t2.countNum/t1.sumNum)*100 及格率
from 
(select 
s1.cno,
avg(s1.grade) avgGrade,
 count(distinct s1.sno) sumNum
from t_score s1
group by s1.cno 
order by avgGrade desc ) t1
join (
select 
s2.cno,count(distinct s2.sno)countNum
from t_score s2
where s2.grade>60
GROUP BY s2.sno
)t2
on t1.cno = t2.cno
order BY t1.avgGrade ,及格率 desc 

-- (二十四)统计各科成绩,各分数段人数:课程ID,课程名称,[100-90]优,[90-80]良,[80-70]中,[70-60]一般,[<60]不及格
-- 1.在成绩表中根据成绩值分段
-- 2.将步骤1中的结果与课程表关联.
select
sc.cno,c1.cname,
sum(
case  when sc.grade >90 THEN 1 end) 优,
sum(
case  when sc.grade >=80 and sc.grade<90 THEN 1 end) 良,
sum(
case  when sc.grade >=70 and sc.grade<80 THEN 1 end) 中,
sum(
case  when sc.grade >=60 and sc.grade<70 THEN 1 end) 一般,
sum(
case  when sc.grade<60 THEN 1 end) 不及格
from t_score sc join t_course c1
on sc.cno = c1.cno
group by sc.cno,c1.cname


-- (二十五)查询学生平均成绩及其名次
select 
stu.sno,stu.sname,avg(sc.grade)
from t_student stu join t_score sc on stu.sno = sc.sno
group by stu.sno,stu.sname

-- (二十六)查询课程号分别为1,2,3的课程,成绩前三名的学生基本信息:(不考虑成绩并列情况)

SELECT
	t2.cname,
	stu.sname,
	t1.grade
FROM
	t_student stu
JOIN (
	SELECT
		s1.sno,
		s1.cno,
		s1.grade
	FROM
		t_score s1
	WHERE
		(
			SELECT
				count(*)
			FROM
				t_score s2
			WHERE
				s2.cno = s1.cno
			AND s2.grade >= s1.grade
		) <= 3
	ORDER BY
		cno,
		grade DESC
) t1 ON stu.sno = t1.sno
JOIN t_course t2 ON t1.cno = t2.cno
ORDER BY
	t1.cno,
	t1.grade DESC

