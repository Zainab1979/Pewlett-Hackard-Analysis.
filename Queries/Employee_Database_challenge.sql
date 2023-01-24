-- The Number of Retiring Employees by Title 

SELECT employees.emp_no, first_name,
last_name ,title, from_date, to_date 
INTO Retirement_Titles 
FROM employees 
JOIN  titles 
ON  employees.emp_no = titles.emp_no 
WHERE birth_date BETWEEN 
'1952-01-01'  AND '1955-12-31'
ORDER BY  employees.emp_no ;







-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO Unique_Titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;




-- 
SELECT  count(*)  , title
INTO retiring_titles
FROM  unique_titles
GROUP BY title 
ORDER BY  count(*) DESC;



-- Deliverable 2 : 
-- The Employees Eligible for the Mentorship Program 






