/*注释-单行注释
    #单行注释
*/
/*多行注释*/
/*
select version();查询当前版本信息
select database();查询当前数据库名称
*/
select version();

select database();

select employee_id from employees;

select employee_id,first_name,last_name from employees;

#给列起别名，两种，一种在列名后加as + 别名，一种在列名后加空格+别名。
#别名中有特殊字符加‘ ’
select employee_id '员工id',first_name '首名',last_name '尾名',salary '薪水'
from employees;

#显示表 departments 的结构，并查询其中的全部数据
desc departments;

select * from departments;

#显示出表 employees 中的全部 job_id（不能重复）
select distinct job_id from employees;

#显示出表employees的全部列，各个列之间用逗号连接，列头显示出OUT_PUT
select concat(employee_id,first_name,last_name) out_put from employees;