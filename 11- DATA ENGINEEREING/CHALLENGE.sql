USE pewlett_hackard;
-- 1. List the employee number, last name, first name, sex, and salary
SELECT 
    e.emp_no, 
    e.last_name, 
    e.first_name, 
    e.sex, 
    s.salary
FROM employees AS e
JOIN salaries AS s 
    ON e.emp_no = s.emp_no;
-- 2. List employees who were hired in 1986   
    
SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) = 1986;

-- 3. List the manager of each department with their details
SELECT 
    d.dept_no, 
    d.dept_name, 
    dm.emp_no AS manager_emp_no, 
    e.last_name, 
    e.first_name
FROM departments AS d
JOIN dept_manager AS dm 
    ON d.dept_no = dm.dept_no
JOIN employees AS e 
    ON dm.emp_no = e.emp_no;
    
    -- 4. List the department of each employee
SELECT 
    e.emp_no,   
    e.last_name, 
    e.first_name, 
    d.dept_name
FROM employees AS e  
JOIN dept_emp AS de 
    ON e.emp_no = de.emp_no
JOIN departments AS d 
    ON de.dept_no = d.dept_no;
    
    -- 5. List employees whose first name is "Hercules" and last names begin with "B" 
SELECT
    first_name, 
    last_name
FROM employees 
WHERE first_name = 'Hercules' 
  AND last_name LIKE 'B%';
  
  -- 6. List all employees in the Sales department  
SELECT 
    e.emp_no,       
    e.last_name, 
    e.first_name, 
    d.dept_name
FROM employees AS e
JOIN dept_emp AS de 
    ON e.emp_no = de.emp_no   
JOIN departments AS d   
    ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';  

-- 7. List all employees in the Sales and Development departments
SELECT 
    e.emp_no, 
    e.last_name, 
    e.first_name, 
    d.dept_name
FROM employees AS e
JOIN dept_emp AS de 
    ON e.emp_no = de.emp_no
JOIN departments AS d 
    ON de.dept_no = d.dept_no
WHERE dept_name IN ('Development','Sales');

-- 8 List the frequency count of employee last name 
SELECT 
    last_name,     
    COUNT(last_name) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;


