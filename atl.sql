SELECT D.DEPT_NAME, AVG(E.MONTHLY_SALARY) AS AVG_MONTHLY_SALARY
FROM Department D
JOIN Employee E ON D.DEPT_ID = E.DEPT_ID
GROUP BY D.DEPT_NAME
ORDER BY AVG_MONTHLY_SALARY DESC
LIMIT 3;