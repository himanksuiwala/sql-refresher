use himank;

-------------- FUNCTIONS in SQL --------------------------

-- number of employees
select count(emp_id) from employee;

-- number of female employee born after 1990
select count(emp_id) from employee where sex='F' and  birth_day>'1970-01-01';

-- average salary of employee for male
select avg(salary) from employee where sex='M';

-- sum of all employee salary
select sum(salary) from employee;

-- number of males & females in employee
select count(sex),sex from employee group by sex;

-- total sales of each salesman
select sum(total_sales),emp_id from works_with group by emp_id;

----------- WILDCARDS ---------------

-- client who're in LLC
select * from client where client_name like '%LLC';

-- find branch supplier who're in label business
select * from branch_supplier where supplier_name like '%Label%';

-- employee born in October
select * from employee where birth_day like '____-10%'; 

-- clients who are schools
select * from client where client_name like '%school%'
