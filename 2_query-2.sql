use himank;
insert into branch values(4,'Buffalo',NULL,NULL);
select * from branch;
-------------- UNION -----------

-- list of employee and branch names
 select first_name from employee union select branch_name from branch ;
 
 -- list of all clients & branch supplier names
 select client_name,branch_id from client union select supplier_name,branch_id from branch_supplier;
 
 -- list of all money spent or earnt by company
 select salary from employee union select total_sales from works_with;
 
----------- JOINS-------------
 
-- find all branches and names of their managers(Inner Join)
select employee.emp_id, employee.first_name, branch.branch_name from employee join branch on employee.emp_id = branch.mgr_id;
 
-- left Join
select employee.emp_id, employee.first_name, branch.branch_name from employee left join branch on employee.emp_id = branch.mgr_id;

-- right Join
select employee.emp_id, employee.first_name, branch.branch_name from employee right join branch on employee.emp_id = branch.mgr_id;

----------- NESTED QUERIES------------

-- find names of all employees who've sold over 30000 to a single client
select employee.first_name , employee.last_name from employee where employee.emp_id in(
select works_with.emp_id from works_with where works_with.total_sales>30000
);

-- find all clients who're handled by the branch that Michael Scott manages

select client.client_name from client where client.branch_id = (
select branch.branch_id from branch where mgr_id=102
);

----- ON DELETE----------

-- check the table structure first
-- ON DELETE SET NULL-> delete the row from main table and set the its value in other table as 'NULL'
delete from employee where emp_id=102;
select* from employee;
select * from branch;

-- ON DELETE CASCADE-> deletes the present row from all tables
delete from branch where branch_id=2;
select *  from branch_supplier;


