/*1-Return complete information about the employees*/
select * from employee;

/*2- Write a SQL query to find the salaries of all employees. Return salary.*/
select salary from employee;

/*3- Write a SQL query to find the unique designations of the employees. Return job name*/
SELECT DISTINCT job_name FROM employee;

/*4- Write a SQL query to list the employees’ name, increased their salary by 15%*/
select emp_name ,salary from employee where salary = salary *1.15;


/*5- Write a SQL query to list the employee's name and job name as a format of "Employee & Job*/
select emp_name , job_name AS 'Employee & job' from employee;


/*6- Write a SQL query to find those employees with hire date in the format like February 22, 
1991. Return employee ID, employee name, salary, hire date.*/
SELECT emp_id,
       emp_name,
       salary,
       DATEPART (hire_date,'MONTH DD,YYYY')
FROM employee;

/*7- Write a SQL query to count the number of employees who have total income more than 2200 */
SELECT COUNT(*) AS 'COUNT EMPLOYEE'
FROM employee
WHERE salary >2200;


 /*8-Write a SQL query to find the unique jobs with their corresponding department id.*/
 SELECT DISTINCT dep_id 
	FROM employee;


/*9- Write a SQL query to find those employees who do not belong to the department 2001. 
Return complete information about the employees.*/
SELECT *
FROM employee
WHERE dep_id NOT IN (2001);

 /*10-Write a SQL query to find those employees who joined before 1991. 
 Return complete information about the employees*/
SELECT *
FROM employee
WHERE hire_date<('1991-1-1');

 /*11-Write a SQL query to calculate the average salary of employees who work as analysts
 Return average salary.*/
 SELECT avg(salary) As 'AVG SALARY'
FROM employee
WHERE job_name = 'ANALYST';

 /*12-Write a SQL query to find the details of the employees who's name start
 start with B or end with E*/
SELECT *
FROM employee
WHERE emp_name LIKE 'B%'
OR emp_name LIKE '%E';

/*13- Write a SQL query to find the details of the employees who's 
department name start start with B or end with E*/

select * from employee , department where dep_name like'B%' OR dep_name like '%E';

 /*14-Write a SQL query to find the details of the employees who's
 department location start start with F or end with N*/

 select * from employee , department where dep_location like'F%' OR dep_location like '%N';

 /*15-Write a SQL query to identify employees whose commissions exceed theirsalaries. 
 Return complete information about the employees, department location and department name*/

SELECT e.emp_id,
       e.emp_name,
       e.job_name,
       e.manager_id,
       e.hire_date,
       e.salary,
       e.commission,
       e.dep_id,
       d.dep_name
FROM employees e,
     department d
WHERE e.dep_id = d.dep_id;

 /*16-Write a SQL query to identify those employees whose salaries exceed 3000 after
 receiving a 25% salary increase*/
 //select * from employee where salary > 3000 And (salary * 2.25);

 /*17-Write a SQL query to find out which employees joined in the month of January.
 Return complete information about the employees.*/

 //select * from employee where month hire_date like '%01%';

 /*18-Write a SQL query to separate the names of employees and their managers by 
 the string 'works for'.*/

 SELECT e.emp_name || ' works for ' || m.emp_name
FROM employee e,
     employee m
WHERE e.manager_id = m.emp_id
select * from employee;

 /*19-Write a SQL query to find those employees whose designation is ‘CLERK’.
 Return complete information about the employees.*/

SELECT *
FROM employee
WHERE job_name = 'CLERK';

 /*20-Write a SQL query to identify employees with more than 27 years of experience.
 Return complete information about the employees.*/

SELECT *
FROM employee
WHERE EXTRACT(YEAR
FROM age(CURRENT_DATE, hire_date)) > 27;

 /*21- Write a SQL query to find those employees whose salaries are less than 3500. 
 Return complete information about the employees.*/

 select * from employee where salary < 3500;

 /*22-Write a SQL query to find the employee whose designation is ‘ANALYST’.
 Return employee name, job name and salary.*/

 SELECT emp_name,
       job_name,
       salary
FROM employee
WHERE job_name = 'ANALYST';

 /*23-Write a SQL query to identify those employees who joined the company in 1991.
 Return complete information about the employees.*/

SELECT *
FROM employee
WHERE hire_date<('1991-1-1');

 /*25-Write a SQL query to find those employees who joined before 1st April 1991.
 Return employee ID, employee name, hire date and salary.*/
 SELECT e.emp_id,
       e.emp_name,
       e.hire_date,
       e.salary
FROM employee e
WHERE hire_date <'1991-04-01';

 /*26- Write a SQL query identify the employees who do not report to a manager.
 Return employee name, job name.*/

SELECT emp_name,
       job_name
FROM employee 
WHERE manager_id IS NULL;


 /*27-Write a SQL query to find the employees who joined on the 1st of May 1991. 
 Return complete information about the employees.*/

 select * from employee where hire_date='1991-05-01';

 /*28-Write a SQL query to identify the experience of the employees who work under the
 manager whose ID number is 68319. Return employee ID, employee name, salary, experience*/

 select emp_id, emp_name,salary from employee where manager_id=68319;

/*29- Write a SQL query to find out which employees earn more than 100 per day as a salary.
Return employee ID, employee name, salary, and experience.*/
SELECT emp_id,
       emp_name,
       salary,
       age(CURRENT_DATE, hire_date) "Experience"
FROM employee
WHERE (salary/30)>100;

 /*30-Write a SQL query to identify those employees who retired after 31-Dec-99, 
 completing eight years of service. Return employee name.*/

 select emp_name from employee where hire_date> '1999-12-31';

 /*31-Write a SQL query to identify the employees whose salaries are odd. 
 Return complete information about the employee*/
 SELECT *
FROM employee
WHERE mod(salary,2) = 1;

/*32- Write a SQL query to identify employees whose salaries contain only three digits.
Return complete information about the employees.*/

SELECT *
FROM employee
WHERE length(TRIM(TO_CHAR(salary,'9999'))) = 3;

 /*33-Write a SQL query to find those employees who joined in the month of APRIL.
 Return complete information about the employees*/

SELECT *
FROM employee
WHERE to_char(hire_date,'MON') IN ('APR');

 /*34-Write a SQL query to find out which employees joined the company before the 19th of the month.
 Return complete information about the employees*/

 SELECT *
FROM employee
WHERE to_char(hire_date,'DD') < '19';


 /*35-Write a SQL query to identify those employees who have been working as a 
 SALESMAN and month portion of the experience is more than 10. 
 Return complete information about the employees.*/

SELECT *
FROM employee
WHERE job_name = 'SALESMAN'
  AND EXTRACT(MONTH
              FROM age(CURRENT_DATE, hire_date)) > 10;

 /*36-Write a SQL query to find those employees of department id 3001 or 1001 and joined
 in the year 1991. Return complete information about the employees.*/

 select * from employee where dep_id=3001 OR dep_id=1001 AND hire_date like '1991%';

 /*37-Write a SQL query to find the employees who are working for the department ID 1001 or 2001.
 Return complete information about the employees.*/

 select * from employee where dep_id =1001 OR dep_id = 2001;

 /*38-Write a SQL query to find those employees whose designation is ‘CLERK’ and work in the 
 department ID 2001. Return complete information about the employees.*/

 select * from employee where job_name like 'CLERK' AND dep_id=2001;

/*39- Write a SQL query to find those employees who are either CLERK or MANAGER.
Return complete information about the employees.*/
SELECT *
FROM employee
WHERE job_name IN ('CLERK','MANAGER');


/*40- Write a SQL query to identify those employees who joined in any month other than February.
Return complete information about the employees.*/

SELECT *
FROM employee
WHERE to_char(hire_date,'MON') NOT IN ('FEB');

/*41- Write a SQL query to identify the employees who joined the company in June 1991. 
Return complete information about the employees.*/

SELECT *
FROM employee
WHERE to_char(hire_date,'mon-yyyy')='jun-1991'

/*42 Write a SQL query to search for all employees with an annual salary between 24000 and 50000
(Begin and end values are included.). Return complete information about the employees.*/

SELECT *
FROM employee
WHERE 12*salary BETWEEN 24000 AND 50000;

/*43- Write a SQL query to identify all employees who joined the company on 1st May, 20th February, 
and 3rd December 1991. Return complete information about the employees.*/
SELECT *
FROM employee
WHERE to_char(hire_date,'DD-MON-YY') IN ('01-MAY-91',
                                         '20-FEB-91',
                                         '03-DEC-91');


 /*44-Write a SQL query to find out which employees are working under the managers 63679, 68319, 66564,
 or 69000. Return complete information about the employees.*/

 SELECT *
FROM employee
WHERE manager_id IN (63679,
                     68319,
                     66564,
                     69000);


 /*45-Write a SQL query to find those employees who joined in 90's.
 Return complete information about the employees.*/

 SELECT *
FROM employee
WHERE to_char(hire_date,'YY') >= '90'
  AND to_char(hire_date,'YY') < '99';

 /*46-Write a SQL query to find those managers who are in the department 1001 or 2001.
 Return complete information about the employees.*/

 SELECT *
FROM employee
WHERE job_name = 'MANAGER'
  AND (dep_id = 1001
       OR dep_id =2001);

 /*47-Write a SQL query to identify employees who joined in the month of FEBRUARY with a
 salary range of 1001 to 2000 (Begin and end values are included.)
 Return complete information about the employees.*/

 SELECT *
FROM employee
WHERE to_char(hire_date,'MON') = 'FEB'
  AND salary BETWEEN 1000 AND 2000;

/*48- Write a SQL query to find those employees who joined before or after the year 1991. 
Return complete information about the employees.*/

SELECT *
FROM employee
WHERE to_char(hire_date,'YYYY') = '1991';

 /*49-Write a SQL query to find employees along with their department details.
 Return employee ID, employee name, job name, manager ID, hire date, salary, commission, department ID
 , and department name.*/

 SELECT e.emp_id,
       e.emp_name,
       e.job_name,
       e.manager_id,
       e.hire_date,
       e.salary,
       e.commission,
       e.dep_id,
       d.dep_name
FROM employee e,
     department d
WHERE e.dep_id = d.dep_id;

/*50- Write a SQL query to identify those employees who earn 60000 or more per year or do not work as 
 ANALYST. Return employee name, job name, (12*salary) asAnnual Salary, department ID, and grade.*/
 SELECT e.emp_name,
       e.job_name,
       (12*e.salary)"Annual Salary",
       e.dep_id,
       d.dep_name,
       s.grade
FROM employee e,
     department d,
     salary_grade s
WHERE e.dep_id = d.dep_id
  AND e.salary BETWEEN s.min_sal AND s.max_sal
  AND (((12*e.salary)>= 60000)
       OR (e.job_name != 'ANALYST'));



 /*51-Write a SQL query to identify employees whose salaries are higher than their managers'
 salaries. Return employee name, job name, manager ID, salary, manager name, manager's salary*/

 SELECT
    department.dep_id,
    dep_name,
    department.manager_id,
    max(salary) as Maximum_Salary,
    min(salary) Minimum_Salary 
FROM department,employee 
WHERE department.dep_id = employee.dep_id 
GROUP BY department.dep_id, dep_name, department.manger_id
ORDER BY dep_id;


 /*52-Write a SQL query to find those employees whose salary is between 2000 and 5000
 (Begin and end values are included.) and location is PERTH. Return employee name, 
 department ID, salary, and commission*/

 SELECT e.emp_name,
       e.dep_id,
       e.salary,
       e.commission
FROM employees e,
     department d
WHERE e.dep_id = d.dep_id
  AND d.dep_location = 'PERTH'
  AND e.salary BETWEEN 2000 AND 5000;

/*53- Write a SQL query to find the employees whose department ID is 1001 or 3001 and whose 
salary grade is not 4. They joined the company before 1992-12-31. Return grade, employee name.*/

select grade ,emp_name from employee,salary_grade where dep_id =1001 OR  dep_id= 3001 
AND salary!= 4 AND hire_date='1992-12-31';

 /*54-Write a SQL query to find those employees whose manager name is JONAS. 
 Return employee id, employee name, job name, manager ID, hire date, salary,
 department ID, employee name.*/

 select emp_id,emp_name, job_name ,manager_id, hire_date ,salary ,dep_id 
 from employee where emp_name ='JONAS';

 select * from employee
 /*55-Write a SQL query to find the name and salary of the employee FRANK.
 Salary should be equal to the maximum salary within his or her salary group.*/

 select emp_name , salary from employee where emp_name ='FRANK' and salary = max(salary)
 group by salary;

 /*56-Write a SQL query to search for employees who are working either as a MANAGER or an ANALYST
 with a salary between 2000 and 5000 (Begin and end values are included.) without commissions.
 Return complete information about the employees.*/

 select * from employee where job_name='MANAGER' OR  job_name='ANALYST' 
 AND salary BETWEEN 2000 AND 5000;

 /*57-Write a SQL query to search for employees who are working either as a MANAGER or an ANALYST with
 a salary between 2000 and 5000 (Begin and end values are included.) 
 without commissions. Return complete information about the employees.*/

 select * from employee where job_name='MANAGER' OR job_name='ANALYST'
 AND salary BETWEEN 2000 and 5000;

/*58- From the following table, write a SQL query to find the employees who joined in 1991 and whose
department location is SYDNEY or MELBOURNE with a salary range of 2000 to 5000.
Return employee ID, employee name, department ID, salary, and department location.*/

select emp_id , emp_name,dep_id ,salary from employee ,department where hire_date='1991' AND dep_location='SYDNEY' OR 
dep_location='MELBOURNE'  AND salary BETWEEN 2000 AND 5000;

 /*59-Write a SQL query to find the employees of MARKETING department come from MELBOURNE or PERTH, 
 are in grades 3 ,4, and 5 and have at least 25 years of experience. 
 Return department ID, employee ID, employee name, salary, department name, department location and 
 grade.*/

  SELECT e.dep_id,
       e.emp_id,
       e.emp_name,
       e.salary,
       d.dep_name,
       d.dep_location,
       s.grade
FROM employees e,
     salary_grade s,
     department d
WHERE e.dep_id = d.dep_id
  AND e.salary BETWEEN s.min_salary AND s.max_salary
  AND s.grade IN (3,4,
                  5)
  AND EXTRACT(YEAR
              FROM age(CURRENT_DATE, hire_date)) > 25
  AND (d.dep_name = 'MARKETING'
       AND d.dep_location IN ('MELBOURNE',
                              'PERTH'));

 /*60-Write a SQL query to find those employees who are senior to their manager.
 Return complete information about the employees.*/

 SELECT *
FROM employee w,
     employee m
WHERE w.manager_id = m.emp_id
  AND w.hire_date < m.hire_date;

 select * from employee ;

 /*61-Write a SQL query to determine which employees have a grade of 4 and a salary between the 
 minimum and maximum. Return all information of each employees and their grade and salary related 
 details*/

SELECT *
FROM employee e,
     salary_grade s
WHERE e.salary BETWEEN s.min_salary AND s.max_salary
  AND s.grade = 4;

 /*62-Write a SQL query to find those employees who joined after 1991, excluding MARKER or ADELYN in
 the departments PRODUCTION or AUDIT. Return employee name.*/

 select e.emp_name from  employee e , department d where e.hire_date='1991' and 
 e.emp_name='MARKER' OR e.emp_name='ADELYN' AND d.dep_name='PRODUCTION ' OR d.dep_name='AUDIT';


 select * from employee;
 /*63-Write a SQL query to find the employees and their salaries. Sort the result-set in ascending 
 order by salaries. Return complete information about the employees.*/

 select *  from employee ORDER BY salary ASC;

 /*64-Write a SQL query to list employees in ascending order on department ID and descending order on
 jobs. Return complete information about the employees.*/

 select *  from employee ORDER BY dep_id ASC , job_name DESC;  

 /*65-Write a SQL query to sort the unique jobs in descending order. Return job name.*/

 SELECT DISTINCT job_name
FROM employee
ORDER BY job_name DESC;

 /*66-Write a SQL query to rank the employees according to their annual salary in ascending order.
 Return employee ID, employee name, monthly salary, salary/30 as Daily_Salary, and 12*salary as 
 Anual_Salary.*/

SELECT emp_id,
       emp_name,
       salary Monthly_Salary,
       salary/30 Daily_Salary,
       12*salary Anual_Salary
FROM employee
ORDER BY Anual_Salary ASC;

 /*67-Write a SQL query to find those employees who are either 'CLERK' or 'ANALYST’. Sort the result 
 set in descending order on job_name. Return complete information about the employees.*/

 select * from employee where job_name='CLERK' OR job_name='ANALYST' ORDER BY job_name DESC;

 /*68-Write a SQL query to find the department location of employee ‘CLARE’. Return department
 location.*/

 select d.dep_location from department d,employee e where e.emp_name='CLARE';

 /*69-Write a SQL query to find those employees who joined on 1-MAY-91, or 3-DEC-91, or 19-JAN-90. 
 Sort the result-set in ascending order by hire date. Return complete 
 information about the employees.*/

 select *  from employee where hire_date='1991-05-01' OR hire_date='1991-12-03' OR
 hire_date='1991-01-19' ORDER BY hire_date ASC;

 /*70-Write a SQL query to find those employees who earn less than 1000. 
 Sort the result-set in ascending order by salary. Return complete information about the employees.*/

select * from employee where salary < 1000 ORDER BY salary ASC;

 /*71-Write a SQL query to list the employees in ascending order based on salary.
 Return complete information about the employees.*/

 select * from employee ORDER BY salary ASC;

 /*72-Write a SQL query to list the employees in ascending order based on salary.
 Return complete information about the employees.*/

 select * from employee ORDER BY salary ASC;

 /*73-Write a SQL query to list the employees in the ascending order by job title and in
 descending order by employee ID. Return complete information about the employees.*/

 select *  from employee ORDER BY dep_id DESC , job_name ASC; 

 /*74-Write a SQL query to list the unique jobs of department 2001 and 3001 in descending order. 
 Return job name.*/

 select job_name from employee where dep_id =2001 OR dep_id=3001 ORDER BY dep_id DESC;

 /*75-Write a SQL query to list all the employees except the PRESIDENT and the MANAGER in ascending 
 order of salaries. Return complete information about the employees.*/

 SELECT *
FROM employee
WHERE job_name NOT IN ('PRESIDENT', 'MANAGER')
ORDER BY salary ASC;


 /*76-Write a SQL query to find the employees whose annual salary is less than $25,000 per year. 
 Sort the result set in ascending order of the salary. Return complete information about the employees.*/

 select * from employee where salary * 12 < 25000 ORDER BY salary ASC;

 /*77-Write a SQL query to list the employees who works as a SALESMAN. Sort the result set in ascending 
 order of annual salary. Return employee id, name, annual salary, daily salary of all the employees.*/
 SELECT 
  emp_id,
  emp_name,
  salary * 12 AS annual_salary,
  salary AS daily_salary
FROM employee
WHERE job_name = 'SALESMAN'
ORDER BY annual_salary ASC;

/*78- Write a SQL query to list the employee ID, name, hire date, current date and experience of the 
employees in ascending order on their experiences.*/

SELECT 
  emp_id,
  emp_name,
  hire_date
  CURDATE() AS current_date,
  TIMESTAMPDIFF (YEAR , hire_date, CURDATE()) AS experience
FROM employee
ORDER BY experience ASC;

/*79- Write a SQL query to list the employees in ascending order of designations of those joined 
after the second half of 1991.*/

select * from employee where hire_date > '1991' ORDER BY hire_date ASC;

/*80- Write a SQL query to find the location of all the employees working in the FINANCE or AUDIT 
department. Sort the result-set in ascending order by department ID. Return complete information about the
employees.*/

SELECT *
FROM employee e,
     department d
WHERE (dep_name = 'FINANCE'
       OR dep_name ='AUDIT')
  AND e.dep_id = d.dep_id
ORDER BY e.dep_id ASC;

 /*81-Write a SQL query to find the employees along with grades in ascending order. 
 Return complete information about the employees.*/

 SELECT *
FROM employee e,
     salary_grade s
WHERE e.salary BETWEEN s.min_salary AND s.max_salary
ORDER BY grade ASC;

/*82- Write a SQL query to find the employees according to the department in ascending order. 
Return name, job name, department, salary, and grade.*/

SELECT e.emp_name,
       e.job_name,
       d.dep_name,
       e.salary,
       s.grade
FROM employee e,
     department d,
     salary_grade s
WHERE e.dep_id = d.dep_id
  AND e.salary BETWEEN s.min_salary AND s.max_salary
ORDER BY e.dep_id ;

 /*83-Write a SQL query to select all employees except CLERK and sort the results
 in descending order by salary. Return employee name, job name, salary, grade and department name.*/

 SELECT e.emp_name,
       e.job_name,
       e.salary,
       s.grade,
       d.dep_name
FROM employee e,
     department d,
     salary_grade s
WHERE e.dep_id = d.dep_id
  AND e.salary BETWEEN s.min_salary AND s.max_salary
  AND e.job_name NOT IN('CLERK')
ORDER BY e.salary DESC;


/*84-Write a SQL query to find those employees who work in the department 1001 or 2001. 
Return employee ID, name, salary, department, grade, experience, and annual salary.*/

SELECT e.emp_id,
       e.emp_name,
       e.salary,
       s.grade,
       d.dep_name,
       age(CURRENT_DATE, hire_date) AS "Experience",
       12 * e.salary "Annual Salary"
FROM employee e,
     department d,
     salary_grade s
WHERE e.dep_id IN (1001,
                   2001)
  AND e.dep_id = d.dep_id
  AND e.salary BETWEEN s.min_salary AND s.max_salary ;

 /*85-Write a SQL query to list the details of the employees along with the details of their departments.*/

 SELECT *
FROM employee e,
     department d
WHERE e.dep_id= d.dep_id;

 /*86-Write a SQL query to list the employees who are senior to their MANAGERS. 
 Return complete information about the employees.*/

 SELECT *
FROM employee w,
     employee m
WHERE w.manager_id = m.emp_id
  AND w.hire_date < m.hire_date;

 /*87-Write a SQL query to find those employees who work in the department 1001. 
 Sort the result-set in ascending order by salary. Return employee ID, employee name,
 salary and department ID.*/

SELECT e.emp_id,
       e.emp_name,
       e.salary,
       e.dep_id
FROM employee e
WHERE e.dep_id = 1001
ORDER BY e.salary ASC;


 /*88-Write a SQL query to find the second highest salary. Return second highest salary.*/


 select *from employee where salary=(select Max(salary) from employee);

 /*89-Write a SQL query to calculate the average salary and average total remuneration
 (salary and commission) for each type of job. Return name, average salary and average total remuneration.*/

 SELECT job_name,
       avg(salary),
       avg(salary+commission)
FROM employee
GROUP BY job_name;


 /*90-Write a SQL query to calculate the total annual salary distributed across each job in 1991.
 Return job name, total annual salary.*/

 SELECT job_name,
       sum(12*salary)
FROM employee
WHERE to_char(hire_date,'YYYY') = '1991'
GROUP BY job_name;

 /*91-Write a SQL query to list the employee id, name, department id, location of all the employees.*/

 SELECT e.emp_id,
       e.emp_name,
       e.dep_id,
       d.dep_location,
       d.dep_name
FROM employee e,
     department d
WHERE e.dep_id = d.dep_id
  AND e.dep_id IN (1001,
                   2001);

 /*92-Write a SQL query to find those employees who work in the department ID 1001 or 2001. 
 Return employee ID, employee name, department ID, department location, and department name.*/

 SELECT *
FROM employees e,
     department d
WHERE d.dep_id = 2001
  AND e.dep_id = d.dep_id
  AND e.job_name IN
    (SELECT e.job_name
     FROM employee e,
          department d
     WHERE e.dep_id = d.dep_id
       AND d.dep_id =1001);

 /*93-Write a SQL query to find those employees whose salary is in the range of minimum and maximum salary. 
 Return employee ID, name, salary and grade.*/

 SELECT e.emp_id,
       e.emp_name,
       e.salary,
       s.grade
FROM employee e,
     salary_grade s
WHERE e.salary BETWEEN s.min_sal AND s.max_sal ;

 /*94-Write a SQL query to create a list of the managers and the number of employees they supervise. 
 Sort the result set in ascending order on manager. Return manager ID and number of employees under them.*/

 SELECT m.manager_id,
       count(*)
FROM employee m, employee w
WHERE w.manager_id = m.emp_id
GROUP BY w.manager_id
ORDER BY w.manager_id ASC;

/*95- Write a SQL query to count the number of employees in each designation of a department. 
Return department id, job name and number of employees.*/

SELECT dep_id,
       job_name,
       count(*)
FROM employee
GROUP BY dep_id,
         job_name;

 /*96-Write a SQL query to identify the departments in which at least two employees are employed. 
 Return department id, number of employees.*/

 SELECT dep_id,
       count(*)
FROM employee
GROUP BY dep_id
HAVING count(*) >= 2;

/*97- Write a SQL query to list the grade, number of employees, and maximum salary of each grade.*/

SELECT s.grade,
       count(*),
       max(salary)
FROM employee e,
     salary_grade s
WHERE e.salary BETWEEN s.min_salary AND s.max_salary
GROUP BY s.grade;

 /*98-Write a SQL query to identify departments with at least two SALESMEN in each grade. 
 Return department name, grade and number of employees.*/

 SELECT d.dep_name,
       s.grade,
       count(*)
FROM employee e,
     department d,
     salary_grade s
WHERE e.dep_id = d.dep_id
  AND e.job_name = 'SALESMAN'
  AND e.salary BETWEEN s.min_salary AND s.max_salary
GROUP BY d.dep_name,
         s.grade
HAVING count(*) >= 2;

/*99- Write a SQL query to identify departments with fewer than four employees. 
Return department ID, number of employees.*/

SELECT emp_department.dep_name
  FROM employee
     INNER JOIN emp_department
       ON emp_dep =dep_id
        GROUP BY emp_department.dep_name
          HAVING COUNT(*) > 2;

 /*100-Write a SQL query to find which departments have at least two employees. 
 Return department name, number of employees.*/

 SELECT d.dep_name,
       count(*)
FROM employee e,
     department d
WHERE e.dep_id = d.dep_id
GROUP BY d.dep_name
HAVING count(*) >= 2;

 /*101-Write a SQL query to check whether the employees ID are unique or not.
 Return employee id, number of employees.*/

 SELECT emp_id,
       count(*)
FROM employee
GROUP BY emp_id;

 /*102-Write a SQL query to find number of employees and average salary. Group the result set on 
 department id and job name. Return number of employees, average salary, department ID, and job name.*/

 SELECT count(*),
       avg(salary),
       dep_id,
       job_name
FROM employee
GROUP BY dep_id,
         job_name;

 /*103-Write a SQL query to identify those employees whose names begin with 'A' and are six 
 characters long. Return employee name.*/

 SELECT emp_name
FROM employee
WHERE emp_name LIKE 'A%'
  AND LEN(emp_name)=6;

/*104- Write a SQL query to find those employees whose name is six characters in length and the
third character must be 'R'. Return complete information about the employees.*/

SELECT *
FROM employee
WHERE LEN(emp_name)=6
  AND emp_name LIKE '__R%';

 /*105-Write a SQL query to find those employees whose name is six characters in length, 
 starting with 'A' and ending with 'N'. Return number of employees.*/

 SELECT *
FROM employee
WHERE LEN(emp_name)=6
  AND emp_name LIKE 'A%N';

 /*106-Write a SQL query to find those employees who joined in the month of where the
 second letter is 'a'. Return number of employees.*/

SELECT *
FROM employee
WHERE to_char(hire_date,'MON') LIKE '_A%';


/*107-Write a SQL query to find those employees whose names contain the character set 'AR' together.
Return complete information about the employees.*/

SELECT *
FROM employee
WHERE emp_name LIKE '%AR%';


/*108-Write a SQL query to find those employees who joined in 90's. 
Return complete information about the employees.*/

SELECT *
FROM employee
WHERE to_char(hire_date,'yy') LIKE '9%';

 /*109-Write a SQL query to find those employees whose ID not start with the digit 68. 
 Return employee ID, employee ID using trim function.*/

SELECT emp_id,
       trim(to_char(emp_id,'99999'))
FROM employee
WHERE trim(to_char(emp_id,'99999')) NOT LIKE '68%';

 /*110-Write a SQL query to find those employees whose names contain the letter 'A’.
 Return complete information about the employees.*/

 SELECT *
FROM employee
WHERE emp_name LIKE '%A%';


 

