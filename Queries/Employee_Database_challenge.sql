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


SELECT DISTINCT ON (employees.emp_no)
employees.emp_no, 
first_name, 
last_name, 
birth_date, 
dept_emp.from_date,
dept_emp.to_date,
title
INTO mentorship_eligibility
FROM employees 
INNER JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no 
INNER JOIN  Titles 
ON Titles.emp_no = employees.emp_no 
WHERE  dept_emp.to_date = '9999-01-01' 
AND  (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY employees.emp_no ;




