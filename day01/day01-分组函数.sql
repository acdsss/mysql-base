/*
分组函数,分组函数只能返回一行记录，不要将分组函数和普通列放在一起查，除非这个列就是分组列。
*/

#avg()取平均值
#看看所有员工的平均工资
select avg (salary) from employees;

#sum()取总和
#取工资和
select sum(salary) from employees;

#max()去最大值
#取最高工资
select max(salary) from employees;


#MIN()去最大值
#取最低工资
select min(salary) from employees;

#count()统计行数
#员工信息表中有多少名员工的工资是超过10000
select count(*) from employees where salary>10000;

/*
分组查询 分组查询子句group by
*/

#查询IT岗位所有员工的平均工资
select avg(salary) from employees where job_id='IT_PROG';

#查询每个岗位的员工的平均工资
#group by 后面的列就是分组列，列值相等的数据会被分到一组中。
#分组函数在没有分组前是对全表数据进行检索，一旦分组，就会按照各个组分别检索的方法运算。
#不要将普通的列和分组函数放在一起查询，除非这个列是分组列。
select job_id,avg(salary),count(*) from employees group by job_id;

#查询每个岗位的员工的平均工资大于5000
#where是过滤分组前的原表数据
#having是过滤分组之后的组。
select job_id,avg(salary),count(*) from employees group by job_id having avg(salary)>5000;

select job_id,avg(salary),count(*)
from employees
where salary>3000
group by job_id
having avg(salary)>5000;




