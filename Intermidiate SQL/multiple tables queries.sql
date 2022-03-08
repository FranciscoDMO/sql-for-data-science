--Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.

select * from employees where JOB_ID IN (select JOB_IDENT from jobs);

--Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.

select * from employees where JOB_ID IN (select JOB_IDENT from jobs where JOB_TITLE= 'Jr. Designer');

--Retrieve JOB information and who earn more than $70,000.

select * from jobs where JOB_IDENT in (select job_id from employees where salary >70000);


--Retrieve JOB information and whose birth year is after 1976.

select * from jobs where JOB_IDENT in (select job_id from employees where YEAR(B_DATE)>1976);

--Retrieve JOB information for female employees whose birth year is after 1976.

select * from jobs where JOB_IDENT in (select job_id from employees where YEAR(B_DATE)>1976 and sex ='F');

--Perform an implicit cartesian/cross join between EMPLOYEES and JOBS tables.

select * from employees, jobs;

--Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
select * from employees , jobs  where employees.JOB_ID = jobs.JOB_IDENT;

--Redo the previous query, using shorter aliases for table names.
select * from employees e, jobs j where e.JOB_ID = j.JOB_IDENT;

--Redo the previous query, but retrieve only the Employee ID, Employee Name and Job Title.
select EMP_ID,F_NAME,L_NAME, JOB_TITLE from employees E, jobs J where E.JOB_ID = J.JOB_IDENT;

--Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause.

select E.EMP_ID,E.F_NAME,E.L_NAME, J.JOB_TITLE from employees E, jobs J where E.JOB_ID = J.JOB_IDENT;
