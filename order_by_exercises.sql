# Create a new file called order_by_exercises.sql and copy in the contents of your where_exercises.sql. Save your changes after each step and add & commit your changes with git. At the end, push all your changes to GitHub.

# Modify your first query to order by first name. The first result should be Irena Majewski and the last result should be Vidya Schaft.
# SELECT * FROM employees
# ORDER BY first_name ;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
       AND gender = 'M'
ORDER BY first_name ,last_name ;

# Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees
WHERE (first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name = 'Maya')
      AND gender = 'M'
ORDER BY last_name  ,first_name ;

# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT * FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no  ;

# Now reverse the sort order for both queries.
SELECT * FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no DESC ;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;


