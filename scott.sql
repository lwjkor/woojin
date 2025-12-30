-- scott 계정소유의 테이블 목록 조회.
-- stuctured Query Language
select * from tab;
-- table/ columm 

--테이블의 구조
select * FROM customer;
desc customer;

SELECT gno ,gname, jumin point from custiner;
SELECT gno, gname, jumin, point FROM customer;

-- professor 테이블의 전체 목록 조회.
SELECT gno, gname, jumin, point FROM professor;
SELECT gno, gname, jumin, point FROM professor;

desc professor;
SELECT gno, gname, jumin, point FROM professor;
select *
select * FROM professor;

select * FROM student;
select studno, NAME 
FROM student;

select 'HELLO, ' || NAME AS "name" --alias(별칭)
FROM STUDENT;

select 'HELLO, ' || NAME AS name --alias(별칭)
FROM STUDENT;

SELECT
    * FROM DEPT;
    
SELECT*
from emp; --사원.
    
SELECT
    * FROM department; --학과,부서
    
    
SELECT disTINCT DEPTNO
from emp; --사원. 중복된 값을 제거해서 보고 싶을 때 디스핑트

SELECT disTINCT ename
from emp; --사원. 중복된 값을 제거해서 보고 싶을 때 디스핑트

SELECT DISTINCT deptno DEPTNO
from emp; --사원. 중복된 값을 제거해서 보고 싶을 때 디스핑트

SELECT DISTINCT deptno, ename
from emp --사원. 중복된 값을 제거해서 보고 싶을 때 디스핑트
order by deptno;

SELECT DISTINCT deptno, ename
from emp --사원. 중복된 값을 제거해서 보고 싶을 때 디스핑트
order by ename;

select 'HELLO, ' || NAME AS name --alias(별칭)
FROM STUDENT;

SELECT '부서번호는 ' || deptno || ', 이름 ' || ename 
        as "NAME with Dept"
from emp 
order by ename; --사원

select * FROM student;

SELECT '학생 이름 ' ||name || ', ID ' || ename 
        as "NAME with Dept"
from emp 
order by ename; --학생

SELECT '학생이름 ' || ENAME || ', ID ' || EMPNO 
        AS "NAME with Dept"
FROM EMP
ORDER BY ENAME;

SELECT '학생이름 ' || ENAME || ', ID ' || id
        AS "NAME with ID"
FROM EMP
ORDER BY ENAME;

SELECT '학생이름 ' || ENAME || ', ID ' || id ID, '체중 '|| WEIGHT
AS "NAME with ID, WEIGHT"
FROM STUDENT
ORDER BY ENAME;

select * FROM student;

select ''s''
from dual;

SELECT '학생이름 ' || NAME || '''s, ID ' || id ID, '체중 '|| WEIGHT
from student;


SELECT *
FROM EMP;



SELECT ename || '(' || job || '), ' || ename || '''' || job || ''''
        AS "NAME AND JOB"
FROM emp;


-- in (a,b,c)
SELECT
    * FROM emp
    WHERE deptno IN (10, 20);-- DEPTNO >= 10 AND DEPTNO <=20;

SELECT
    * FROM emp
    WHERE ENAME IN ('SMITH', 'FORD');-- DEPTNO >= 10 AND DEPTNO <=20;
    
SELECT
    * FROM emp
    WHERE deptno IN (10, 20);
    WHERE ENAME NOT IN ('SMITH', 'FORD');

-- is null / is not null
SELECT
    * FROM emp
    WHERE COMM = IS NULL; -- ''
    
-- like ( = )
SELECT
    * FROM emp
    where ename like '_LA%'; -- % => * or 뜻 (없거나 한글자 이상)
                             -- _ => 한글자(에 대응)?

select * from professor; -- Primary key (중복X)

SELECT
    * FROM department;


    
select * from professor
where deptno in (101, 103);

select * from professor
where deptno in (101, 103);

SELECT
    * FROM professor
    WHERE deptno in (101, 103)
    and position not in ('a full professor');

SELECT
    * FROM professor
-- where name like '%an%';

SELECT
    * FROM professor
WHERE bonus is not null; -- 1) pay + bonus >=300, 2)bonus is null, pay>=300

    
select * from professor
--WHERE (bonus is null and pay >=300)
--or (pay + bonus >=300)

where pay + nvl(bonus, 0) >=300
;

