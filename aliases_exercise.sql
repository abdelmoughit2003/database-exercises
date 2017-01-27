USE employees;

SELECT concat(emp_no, ' -- ', last_name, ' ', first_name)
  AS full_name,
       birth_date
  AS 'DOB'
FROM employees
LIMIT 10;


# You can querie two tables at once
SELECT
  e.emp_no as 'ID from Employees',
  s.emp_no AS 'Employee number from Salaries'
FROM
  employees as e,
  salaries as s
WHERE e.first_name
      like '%qu%'
LIMIT 1000;