--select * from employees;
-- Retrieve all employees whose address is in Elgin,IL
select F_NAME , L_NAME 
from EMPLOYEES
where ADDRESS  LIKE '%Elgin,I%' ;
--Retrieve all employees who were born during the 1970's
select F_NAME , L_NAME 
from EMPLOYEES
where B_DATE  LIKE '%197%' ;
--Retrieve all employees in department 5 whose salary is between 60000 and 70000
select * 
from EMPLOYEES
where (SALARY BETWEEN 60000 AND 70000) and DEP_ID = 5;
--Retrieve a list of employees ordered by department ID
select F_NAME , L_NAME , DEP_ID
from EMPLOYEES
ORDER BY DEP_ID;
--Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
select F_NAME , L_NAME , DEP_ID
from EMPLOYEES
ORDER BY DEP_ID DESC , L_NAME DESC;
--For each department ID retrieve the number of employees in the department.
select DEP_ID, COUNT(*)
from EMPLOYEES
GROUP BY DEP_ID;
--For each department retrieve the number of employees in the department, and the average employees salary in the department.
select DEP_ID, COUNT(*) , AVG(SALARY)
from EMPLOYEES
GROUP BY DEP_ID;
--Label the computed columns in the result set of previous Query as NUM_EMPLOYEES and AVG_SALARY.
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES" , AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
GROUP BY DEP_ID;
--In previous Query order the result set by Average Salary.
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES" , AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;
--In previous Query limit the result to departments with fewer than 4 employees.
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES" , AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
GROUP BY DEP_ID
HAVING COUNT(*) < 4 
ORDER BY AVG_SALARY;