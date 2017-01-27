USE employees;

#Finding all the employees with the same hire date as employee 101010 using a sub-query
SELECT * FROM employees
WHERE hire_date IN  (
  SELECT hire_date FROM employees
  WHERE emp_no = 101010);

#Finding all the titles held by all employees with the first name Aamod
SELECT title FROM titles
WHERE emp_no IN  (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod');

#Finding all the department managers that are female
SELECT emp_no FROM dept_manager dm
WHERE dm.emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE gender = 'F');

SELECT  *  FROM departments
WHERE dept_name IN  (
  SELECT dept_no FROM dept_manager
  WHERE emp_no IN (
    SELECT emp_no FROM employees
    WHERE gender = 'F'
  )
);
# use employees;
#
# SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (
#   SELECT emp_no
#   FROM dept_manager
# )
# LIMIT 10;
#
#
# SELECT first_name, emp_no, hire_date FROM employees WHERE hire_date in(
#   SELECT hire_date FROM employees WHERE emp_no = 101010
# );
#
# SELECT * FROM employees e
# WHERE e.hire_date = (
#   SELECT hire_date FROM employees
#   WHERE emp_no = '101010'
# );
#
#
# SELECT *
# FROM employees e
#   INNER JOIN titles
#     ON e.emp_no = titles.emp_no
# where e.first_name = 'Aamod';
#
#
# SELECT e.first_name, e.last_name, title
# FROM employees e, (
#                     SELECT emp_no, title
#                     FROM employees, titles
#                     WHERE titles.emp_no = employees.emp_no
#                   ) as employee_titles
# WHERE e.first_name = 'Aamod';
#
#
# SELECT gender, first_name, last_name
# FROM employees
#   INNER JOIN dept_manager
#     ON employees.emp_no = dept_manager.emp_no
# WHERE gender = 'f';
