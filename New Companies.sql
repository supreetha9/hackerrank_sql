WITH CompanyEmployeeTable (
    company_code,
    founder,
    employee_code,
    manager_code,
    senior_manager_code,
    lead_manager_code
) AS (
    SELECT 
        c.company_code,
        c.founder,
        e.employee_code,
        e.manager_code,
        e.senior_manager_code,
        e.lead_manager_code
    FROM Company c
    INNER JOIN Employee e 
      ON c.company_code = e.company_code
)
SELECT 
    company_code,
    founder,
    COUNT(DISTINCT lead_manager_code)      AS total_lead_managers,
    COUNT(DISTINCT senior_manager_code)    AS total_senior_managers,
    COUNT(DISTINCT manager_code)           AS total_managers,
    COUNT(DISTINCT employee_code)          AS total_employees
FROM CompanyEmployeeTable
GROUP BY company_code, founder
ORDER BY company_code;