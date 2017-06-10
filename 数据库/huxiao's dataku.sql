/*
create table Student(Sno char(9) primary key,Sname char(20) unique,Ssex char(2),Sage smallint,Sdept char(20));
create table Course(Cno char(4) primary key,Cname char(40) not null,Cpno char(4),Ccredit smallint,foreign key(Cpno) references Course(Cno));
create table SC(Sno CHAR(9),Cno char(4),Grade smallint,primary key(Sno,Cno),foreign key(Sno) references Student(Sno),foreign key(Cno) references Course(Cno));
*/

/*
alter table Student ADD S_entrance DATE;
alter table Student alter column Sage INT;
alter table Course add unique(Cname);
*/

/*alter table Student add not null(S_entrance);*/

/*create view IS_Student
As
select Sno,Sname,Sage
from Student
where Sdept='IS';建立视图*/

/*
select Sno,Sname from Student
select * from Student
*/

/*
select Sname,2014-Sage from Student
select Sname,'Year of Birth:'BIRTH,2014-Sage BIRTHDAY,LOWER(Sdept) PROJECT from Student;
*/

/*
select Sno from SC;
select distinct Sno from Sc;
*/

/*
select Sname from Student where Sdept='CS';
select Sname,Sage from Student where Sage<20;
select distinct Sno from SC where Grade<60;
*/

/*
select Sname,Sdept,Sage from Student where Sage between 20 and 23;
select Sname,Sdept,Sage from Student where Sage not between 20 and 23;
select Sname,Ssex,Sdept from Student where Sdept in('CS','MA','IS');
select Sname,Ssex from Student where Sdept not in('CS','MA','IS');
*/

/*
CREATE UNIQUE INDEX huxiao
ON Student(Sname); 
*/

/*
select * from Student where Sno like '201215121';
select * from Student where Sno='201215121';
*/

/*
Select Sname,Sno,Ssex from Student where Sname like '刘%';
select Sname from Student where Sname like '欧阳_';
select Sname,Sno from Student where Sname like '_阳%_';
select Sname,Sno,Ssex from student where Sname not like '刘%';
*/

/*
select Cno,Ccredit from Course where Cname like 'DB\_design' escape'\';
select * from Course where Cname like 'DB\_%i__' escape '\';
select Sno,Cno from SC where Grade is not null;
select Sno,Cno from SC where Grade is null;
select Sname from Student where Sdept='CS' and Sage<20;
*/

/*
select Sname,Ssex from Student where Sdept='SC' or Sdept='MA' or Sdept='IS'
select Sno,Grade from SC where Cno like 3 order by Grade desc;
*/

/*
select * from Student order by Sdept,Sage desc;
select COUNT(Ssex) as boysnumbers from Student where Ssex='男';
select COUNT(*) as studentnumbers from Student;
select COUNT(distinct Sno) from SC;
select AVG(Grade) as avggrade from SC;
select Cno from SC where Grade>(select AVG(Grade) from SC);
*/

/*
select max(Grade) as maxgrade from SC;
select SUM(Grade) as totalgrade from SC;
select customer,SUM(OrderPrice) from Orders group by customer;
SELECT Customer,OrderDate,SUM(OrderPrice) as sumhaha FROM Orders
GROUP BY Customer,OrderDate
*/

/*
select Sno,AVG(Grade) from SC group by Sno having AVG(Grade)>=90;
select Sno,AVG(Grade) from SC where Sno='201215121' and Sno='201215122' group by Sno having AVG(Grade)>=90;
*/

/*
select distinct Student.*,SC.* from Student,SC where Student.sno=Sc.sno;
select Student.Sno,SC.Sno,Sname,Ssex,Sage,Sdept,Cno,Grade from Student,SC where Student.Sno=SC.sno;
select Student.Sno,Sname from Student,SC where Student.Sno=SC.Sno and SC.Cno='2' and SC.Grade>90;
*/

/*
select * from Student,SC,Course where Student.Sno=SC.Sno and SC.Cno=Course.cno;
select Sname from Student where Sno in(select Sno from SC where Cno='2');
*/

/*
select Sno,Sname from Student where Sno in(select Sno from SC where cno in(select Cno from Course where Cname='信息系统'));
select Student.Sno,Sname from Student,SC,Course where Student.Sno=SC.Sno and SC.Cno=Course.Cno and Course.Cname='信息系统';
select Sno,Sname,Sdept from Student where Sdept=(select Sdept from Student where Sname='刘晨');
 */
 
/* 
select Sno,Cno,Grade from SC x where Grade >=(select AVG(Grade) from SC y where y.Sno=x.Sno)
select Sname,Sage from Student where Sage<any(select Sage from Student where Sdept='CS') and Sdept!='CS';
select Sname,Sage from Student where Sage<(select max(Sage) from Student where Sdept='CS') and Sdept!='CS';
*/

/*
select Sname,Sage from Student where Sage<all(select Sage from Student where Sdept='CS') and Sdept!='CS';
select Sname,Sage from Student where Sage<(select min(Sage) from Student where Sdept='CS') and Sdept!='CS';
select Sname from Student where exists(select * from SC where Sno=Student.Sno and Cno='1');
select Sname from Student where not exists(select * from SC where Sno=Student.Sno and Cno='1');
*/

/*
select Sname,Sno,Sdept from Student S1 where exists(select * from Student S2 where S2.Sdept=S1.Sdept and S2.Sname='刘晨');
select Sname from Student where not exists(select * from course where not exists (select * from SC where Sno=Student.Sno and Cno=Course.Cno));
select Distinct Sno from SC SCX where not exists(select * from SC SCY where SCY.Sno='201215122' and not exists(select * from SC SCZ where SCZ.Sno=SCX.Sno and SCZ.Cno=SCY.Cno));
select * from Student where Sdept='CS' union select * from Student where Sage<=19;
*/

/*
select * from SC where Cno='2' or Cno='1'; 
select Sno,Cno from SC,(select Sno,AVG(Grade) from SC group by Sno) as Avg_sc(avg_sno,avg_grade) where SC.Sno =Avg_sc.avg_sno and SC.Grade >=Avg_sc.avg_grade;
select Sname from Student,(select Sno from SC where Cno='1') as SC1 where Student.Sno=SC1.Sno;
insert into Student(Sno,Sname,Ssex,Sdept,Sage) values('201215128','陈东','男','IS',18);
insert into SC(Sno,Cno) values('201215128','1');
*/

/*
create table Dept_age(Sdept char(15), Avg_age INT);
insert into Dept_age(Sdept,Avg_age) select Sdept,AVG(Sage) from Student group by Sdept;
update Student set Sage=22 where Sno='201215121';
update Student set Sage=Sage+1;
*/

/*
update SC set Grade=0 where Sno in(select  Sno from Student where Sdept='CS');
insert into SC(Sno,Cno,Grade) values('201215126','1',NULL);
select * from Student where Sname is null or Ssex is null or Sage is null or Sdept is null;
select Sno from SC where Grade<60 and Cno='1';
select Sno from SC where Cno='1' and (Grade<60 or Grade is null);
*/

/*create view IS_Student as select Sno,Sname,Sage from student where Sdept='CS'; 
create view IS_Student2 as select Sno,Sname,Sage from Student where Sdept='CS' with check option;
create view IS_S1(Sno,Sname,Grade) as select Student.Sno,Sname,Grade from Student,SC where Sdept='IS' and Student.Sno=SC.Sno and SC.Cno='1';*/

create view IS_S2 as select Sno,Sname,Grade from IS_S1 where Grade>=90;
create view BT_S(Sno,Sname,Sbirth) as select Sno,Sname,2014-Sage from Student;
create view S_G(Sno,Gavg) as select Sno,AVG(Grade) from SC group by Sno;
create view F_Student(F_sno,name,sex,age,dept) as 


