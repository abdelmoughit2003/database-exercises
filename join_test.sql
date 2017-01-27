
use employees;
# write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name,concat(e.first_name," ", e.last_name)
FROM employees as e
JOIN dept_manager as de
    ON de.emp_no = e.emp_no
JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY dept_name;
# Find the name of all departments currently managed by women.
SELECT d.dept_name,concat(e.first_name," ", e.last_name)
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no

WHERE de.to_date = '9999-01-01' and gender='F'
ORDER BY dept_name;
# Find the current titles of employees currently working in the Customer Service department.
SELECT title,count(title)
FROM employees as e
  JOIN titles as t
    ON t.emp_no = e.emp_no
  JOIN dept_emp as de
    ON de.emp_no = t.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE dept_name = 'Customer Service' AND t.to_date > curdate() AND de.to_date >curdate()
GROUP BY title;
# Find the current salary of all current managers.
SELECT d.dept_name,concat(e.first_name," ", e.last_name),s.salary
FROM employees as e

  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
  JOIN salaries as s
  ON s.emp_no=de.emp_no
WHERE de.to_date = '9999-01-01' AND  s.to_date= '9999-01-01'
GROUP BY dept_name,first_name,last_name ,salary;

# Find the names of all current employees, their department name, and their current manager's name.
# Final Draft
SELECT concat(e.first_name, " ", e.last_name) as "Employee",
  departments.dept_name,
       concat(managers.first_name," ",managers.last_name) as "Manager"
from employees as e
  join dept_emp on e.emp_no = dept_emp.emp_no
  join departments on dept_emp.dept_no = departments.dept_no
  join dept_manager on departments.dept_no = dept_manager.dept_no
  join employees as managers on dept_manager.emp_no = managers.emp_no
WHERE dept_manager.to_date > curdate()
      and dept_manager.to_date > curdate();

