# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names
SELECT concat(count(*), " ",gender) as "Employee count with gender" FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
GROUP BY gender ;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.


SELECT CONCAT(first_name, " ", last_name) AS full_name
FROM employees
WHERE last_name LIKE 'e%e';


# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT emp_no, last_name, DATEDIFF(now(), hire_date) as "number of days employee"
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31'
      AND birth_date LIKE '%-12-25';


# Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination of first and last names. You will find there were some duplicate first and last name pairs in your previous results. Add a count() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT concat(first_name, " ", last_name) AS "full_name", count(*) as "number of people with this name"
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY   `number of people with this name` DESC ;

