
# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT* FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya');

# Employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees
WHERE last_name LIKE 'E%';
# Employees hired in the 90s — 135,214 rows.
SELECT *FROM employees
WHERE hire_date = '%1990%';
# Employees born on Christmas — 842 rows.
SELECT * FROM employees
WHERE birth_date= '%-12-25';
# Employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees
WHERE first_name LIKE '%q%';


# Excercise Where Continued

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT* FROM employees
WHERE first_name = 'Irena'
OR first_name ='Maya'
OR first_name ='Vidya';

# add a condition to find everybody with those names who is also male
SELECT* FROM employees
WHERE (first_name = 'Irena'
OR first_name ='Maya'
OR first_name ='Vidya')
AND gender ='M';

# Find all employees whose last name starts or ends with 'E'
SELECT* FROM employees
WHERE last_name LIKE 'E%'
OR first_name LIKE '%E';
# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT* FROM employees
WHERE last_name LIKE 'E%'
AND first_name LIKE '%E';
# Find all employees hired in the 90s and born on Christmas
SELECT * FROM employees
WHERE hire_date = '199%'
AND birth_date= '%-12-25';
# Find all employees with a 'q' in their last name but not 'qu'
SELECT* FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%';

