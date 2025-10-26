select * from dbo.employees;
select * from dbo.employee_personal;
select * from dbo.departments;
select * from dbo.positions;
select * from dbo.salaries;


SELECT 
    ep.first_name,
    ep.last_name,
    p.position_name,
    d.department_name
FROM dbo.employee_personal ep
INNER JOIN dbo.employees e
    ON ep.employee_id = e.employee_id
INNER JOIN dbo.positions p
    ON e.position_id = p.position_id
INNER JOIN dbo.departments d
    ON e.department_id = d.department_id
WHERE e.employment_status = 'Aktif';

