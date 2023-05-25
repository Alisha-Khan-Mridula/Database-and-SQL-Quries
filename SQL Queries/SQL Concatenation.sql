use ***

select * from Employee 

/*Concatenation*/
select EmployeeName+ '('+ LEFT(Department, 1)+ ')' from Employee

select 'There are a total of ' + Cast(COUNT(*) as varchar) +' '+ Lower(Department) from Employee group by Department 




