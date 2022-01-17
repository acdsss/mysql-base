/*
流程控制函数
*/

#判断控制函数
select if(10 = 9, 'one', 'two');
#if函数有三个参数，第一个参数是一个条件表达式，表达式返回true则显示第二个参数，表达式返回false则显示第三个参数。


#多重判断，相当于多重if-else
/*
select *
case
when 条件表达式1 then 表达式1
when 条件表达式2 then 表达式2
.......
else 表达式n
end
*/

select first_name,
       last_name,
       case
           when salary > 2000 and salary < 4000 then salary * 1.1
           when salary >= 4000 and salary < 8000 then salary * 1.5
           when salary >= 8000 and salary < 12000 then salary * 2.0
           else salary * 2.5
           end '工资'
from employees;


#多重判断，switch-case
/*
select *
case
when 等值判断 then 表达式1
when 等值判断 then 表达式2
.......
else 表达式n
end
*/

select first_name,
       last_name,
       case
           when job_id = 'AD_PRES' then salary * 1.1
           when job_id = 'AD_VP' then salary * 1.5
           when job_id = 'IT_PROG' then salary * 2.0
           else salary * 2.5
           end '工资'
from employees;