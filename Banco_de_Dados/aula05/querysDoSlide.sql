SELECT * FROM funcionario;

---------------------------------------------

SELECT empno, ename, job, sal FROM emp
WHERE sal >= 1100 AND job = ‘CLERK’

---------------------------------------------

SELECT employee_id, last_name, job_id, salary FROM employees
WHERE salary >= 10000 AND job_id LIKE ‘%MAN%’

---------------------------------------------

SELECT empno, ename, job, sal FROM emp
WHERE sal >= 1100 OR job = ‘CLERK’

---------------------------------------------

SELECT ename, job FROM emp
WHERE job NOT IN (‘CLERK’, ‘MANAGER’, ‘ANALYST’)

---------------------------------------------

SELECT last_name, job_id, salary FROM employees
WHERE job_id = ‘AS_REP’ 
OR job_id = ‘AD_PRES’ 
AND salary > 15000;

---------------------------------------------

SELECT last_name, job_id, salary FROM employees
WHERE (job_id = ‘AS_REP’ 
OR job_id = ‘AD_PRES’)
AND salary > 15000;

---------------------------------------------

SELECT * FROM emp WHERE deptno= 30 AND sal > 2500;

---------------------------------------------

SELECT * FROM emp 
WHERE (deptno = 10 OR deptno = 30) AND sal > 2500;

---------------------------------------------

SELECT * FROM emp ORDER BY job;

---------------------------------------------

SELECT * FROM dept ORDER BY dname;

---------------------------------------------

SELECT * FROM dept ORDER BY dname DESC;

---------------------------------------------

SELECT ename, job FROM emp ORDER BY job, ename;

---------------------------------------------

SELECT MAX(sal) FROM emp;

---------------------------------------------

SELECT MIN(sal) FROM emp;

---------------------------------------------

SELECT SUM(sal) FROM emp 
WHERE job=‘MANAGER’;

---------------------------------------------

SELECT AVG(sal) FROM emp;

---------------------------------------------

SELECT COUNT(EMPNO) FROM emp 
WHERE job = ‘SALESMAN’;

---------------------------------------------

SELECT job, MAX(sal) FROM emp 
GROUP BY job;

---------------------------------------------

SELECT job, MAX(sal) FROM emp 
GROUP BY job HAVING MAX(sal) > 1000;

---------------------------------------------

SELECT job, MAX(sal) AS maximo_salario FROM emp 
GROUP BY job HAVING MAX(sal) > 1000;

---------------------------------------------

ROUND (45.925, 2) – Resultado 45.93

---------------------------------------------

TRUNC(45.925, 2) – Resultado 45.92

---------------------------------------------

MOD(1600, 300) – Resultado 100

---------------------------------------------

SELECT ename, sal, MOD(sal, 3) FROM emp
WHERE job = ‘SALESMAN’;

---------------------------------------------

Select * from EMP Where ename like ‘J%

---------------------------------------------

Select * from EMP Where substr (ename,1,1) = ‘J’;

---------------------------------------------

Select * from EMP Where ename like ‘_A%’;

---------------------------------------------

Select * from EMP Where substr (ename,2,1) = ‘A’;

---------------------------------------------

SELECT ename || 'é um ' || job as "Funcionarios"
FROM emp;

---------------------------------------------

SELECT ename, sal, comm, (sal*12) +NVL(comm, 0) FROM emp;

---------------------------------------------

select ename, LOWER(substr(ename,1,4))
from emp;

---------------------------------------------

select ename,sal, deptno 
from emp
Where deptno = &dept_num;

---------------------------------------------

select ename, job, sal * 12
from emp
Where job = ‘&job_title’;

---------------------------------------------

SELECT	column, group_function(column)
FROM		table
[WHERE	condition]
[GROUP BY	group_by_expression]
[ORDER BY	column];

---------------------------------------------

select deptno, min(sal), max(sal), sum(sal) from emp
group by deptno;

---------------------------------------------

select job, sum(sal) from emp
group by job;

---------------------------------------------

SELECT	column, group_function(column)
FROM		table
[WHERE	condition]
[GROUP BY	group_by_expression]
[HAVING group_by_condition]
[ORDER BY	column];

---------------------------------------------

select job, min(sal), max(sal) from emp
group by job
having job <> 'MANAGER'
order by job desc;

---------------------------------------------

select job, avg(sal) from emp
group by job
having avg(sal) > 1500;

---------------------------------------------

select nomeF from funcionario where idFunc = 1 or idFunc = 2 or idFunc = 6;