
SELECT TOP 5 * FROM dbo.employees;
SELECT * FROM dbo.employee_personal;
SELECT * FROM dbo.salaries;
SELECT * FROM dbo.salary_incomes;
SELECT * FROM dbo.salary_deductions;

SELECT 
    d.department_name,
    COUNT(e.employee_id) AS employee_count,
    AVG(s.net_salary + ISNULL(i.total_bonus, 0)) AS avg_salary,
    ISNULL(SUM(i.total_bonus), 0) AS total_bonus
FROM dbo.employees e
INNER JOIN dbo.departments d
    ON e.department_id = d.department_id
INNER JOIN dbo.salaries s
    ON e.employee_id = s.employee_id
LEFT JOIN (
    SELECT salary_id, SUM(amount) AS total_bonus
    FROM dbo.salary_incomes
    WHERE income_type = 'BONUS'
    GROUP BY salary_id
) i
    ON s.salary_id = i.salary_id
WHERE e.employment_status = 'Aktif'
GROUP BY d.department_name
ORDER BY avg_salary DESC;
