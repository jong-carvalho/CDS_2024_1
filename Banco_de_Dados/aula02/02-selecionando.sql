-- selecionando
select ename, dname, job, empno, hiredate, loc   
from emp, dept   
where emp.deptno = dept.deptno   
order by ename

select dname, count(*) count_of_employees 
from dept, emp 
where dept.deptno = emp.deptno 
group by DNAME 
order by 2 desc

-- ------------------------------------------------------------------------------------



-- Mostrar o código do departamento, nome e salário do empregados do departamento de número 20
SELECT DEPTNO, ENAME, SAL FROM EMP WHERE DEPTNO = 20;

-- Mostrar o código do empregado, nome, cargo e salário do funcionário de código 7788.
SELECT EMPNO, ENAME, JOB, SAL FROM EMP
WHERE EMPNO = 7788;

-- Exibir os dados do funcionário James.
SELECT EMPNO, ENAME, HIREDATE FROM EMP
WHERE ENAME = 'JAMES';

-- Selecionar o nome, cargo e salário dos empregados, com exceção dos que tenham ‘JOB’ igual a ‘MANAGER’.
select ename, job, sal from emp
where job = 'MANAGER';

-- Listar todos os empregados com salários entre 1000 e 2000.
select * from emp
where sal between 1000 and 2000;


-- Listar o nome, salario e departamento dos empregados com os cargos de ‘PRESIDENT’ e ‘ANALYST’.
SELECT ENAME, JOB, SAL, DEPTNO FROM EMP
WHERE JOB IN ('PRESIDENT','ANALYST');


-- Listar o nome, salario e departamento dos empregados com os cargos diferentes de ‘PRESIDENT’ e ‘ANALYST’.
SELECT ENAME, JOB, SAL, DEPTNO FROM EMP
WHERE JOB NOT IN ('PRESIDENT','ANALYST')
