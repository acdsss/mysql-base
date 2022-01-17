#字符函数
/*
转大写
select upper('abc');
select upper(first_name) from employees;
转小写lower()

拼接字符串
concat（a,b,c）;

截取子字符串，mysql中索引起始为1
select substr('hello',2,2);从e截取长度为2

获取字符串的字节数，英文一字节，中文三字节
select length('hello,你好');

获取字符第一次出现的索引
select instr('hello,你好’,'lo');

lpad左填充，rpad右填充
select lpad('a',2,'*');

去掉两端空格
select trim('   aa a   ');

新串换旧串
select replace('accdddd','ac','bd');




*/