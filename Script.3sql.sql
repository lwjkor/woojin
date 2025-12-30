SELECT *
 FROM tab
 ;

SELECT empno
	   ,ename
       ,sal
       ,nvl(comm,0) AS commission
       FROM emp
       ;
	   
SELECT initcap(position) AS "initcop"
       ,lower(upper(POSITION)) AS "uppercase->Lowecase"
       ,POSITION
       ,length(POSITION) length_position --문자의 크기 반환.
       ,LENGTHb('홍길동') lengthb --바이트 단위로 크기 반환.
       ,POSITION
       ,name
       FROM professor
WHERE LENGTH(name) < 10
       ;

SELECT ename || ',' || job AS "name and job"
	  ,concat(concat(ename, ','),job) AS "Name Job" 
	  ,substr(e.job, 1, 3) AS "short Job"
	  ,e.*
	  FROM emp e
;

SELECT substr('abcde', 3, 3) -- (abcde, 시작위치, 크기)
	  ,substr('hello, world',-3, 3)
FROM dual
;
;


SELECT ename || ',' || job AS "name and job"
	  ,concat(concat(ename, ','),job) AS "Name Job" 
	  ,substr(e.ename, 1, 1) AS "short ename"
	  ,e.*
	  FROM emp e
	  WHERE substr(e.ename, 1, 1) = 'J'
;
-- 전공1(201) 학생 중들 중에서 전화번호(tel컬럼) 
SELECT *
FROM student
WHERE deptno1 = 201
;

-- 전공1(201) 학생 중들 중에서 전화번호(tel컬럼) ')'
SELECT tel
 	   ,instr(tel, ')',1) "Location of)"
 	   ,substr(tel, 1, instr(tel, ')',1) -1)AS "local NO"
FROM student
WHERE deptno1 = 201
;

SELECT name
-- 	   ,instr(tel, ')',1) "Location of)"
	   ,tel
 	   ,substr(tel, 1, instr(tel, ')',1) -1)AS "ARER CODE"
FROM student
WHERE deptno1 = 201
;
	   
SELECT name
       ,tel
 	   ,instr(tel, ')', 3) "Location of)"
 	   ,substr(tel, 1,instr(tel, ')', 1) -1)AS "ARER CODE"
 	   ,instr(tel, ')' , 1) + 1 AS "from"
 	   ,instr(tel, '-') AS "to"
 	   ,substr(tel, instr(tel, ')', 1) + 1),
 	                    (instr(tel, '-', 1) - (instr(tel, ')',1 +1))) AS "국번"
FROM student
WHERE deptno1 = 201
;

--
SELECT name
       ,tel
 	   ,instr(tel, ')', 3) "Location of)"
 	   ,substr(tel, 1, instr(tel, ')', 1) - 1) AS "AREA CODE" -- 철자 수정
 	   ,instr(tel, ')', 1) + 1 AS "from"
 	   ,instr(tel, '-') AS "to"
 	   ,substr(tel, instr(tel, ')', 1) + 1,
 	                    (instr(tel, '-', 1) - (instr(tel, ')', 1) + 1))) AS MID_PART -- 구문 수정 및 별칭 추가
FROM student
WHERE deptno1 = 201;
AND substr(tel, 1, instr(tel, ')', 1) - 1) = '02'
;

-- lpad(컬럼, 자리수, 채울값)
SELECT lpad('abc', 5, '-')
FROM dual
;

SELECT *
FROM emp;

SELECT student
      ,name
      ,id
      ,lpad(id, 10, '*') "Lpad with *"
FROM
    student
WHERE
    deptno1 = 201
; --에러

SELECT lpad(ename, 9, '12345678') Lpad
      ,rpad(ename, 9, '-' ) rpad
FROM emp
where deptno =10
;
      

    name,
    id,
    lpad(id, 10, '*') "Lpad with *"
FROM
    student
WHERE
    deptno1 = 201 -- 컬럼 이름 수정
;    
    

SELECT lpad(ename, 9, '12345678') Lpad
      ,rpad(ename, 9, '-' ) rpad
FROM emp
where deptno =10
;
	   
SELECT lpad(ename, 9, '12345678') Lpad
      ,rpad(ename, 9, '-' ) rpad
FROM emp
where deptno =10
;


--,substr(tel, instr(tel, ')', 1) + 1),
 	                    (instr(tel, '-', 1) - (instr(tel, ')',1 +1))) AS "국번"

SELECT *
       FROM emp
;
 	                    
SELECT lpad(ename, 9, '12345678' ) Lpad
 	  ,rpad(ename, 9,'_') rpad
 	  ,rpad(ename, 9, substr('123456789', LENGTH(ename)+1)) rpad2
 	   FROM emp 
 	   WHERE deptno = 10
;

SELECT
    lpad(ename, 9, '12345678') Lpad, -- 쉼표 위치 수정
    rpad(ename, 9, '_') rpad_1,      -- 불필요한 공백 제거 및 별칭 추가
    rpad(ename, 9, substr('123456789', LENGTH(ename) + 1)) rpad2
FROM
    emp
WHERE
    deptno = 10
;


SELECT ltrim('abcde', 'abc')
	  ,rtrim('abcde', 'cde')
	  ,rtrim(ltrim(' hello', ' '), ' ') -- ' hello '
	  ,replace(' hello ', substr(' hello ', 1 ,1), '')
FROM dual
;

SELECT ltrim('abcde', 'abc')
	  ,rtrim('abcde', 'cde')
	  ,rtrim(ltrim(' hello', ' '), ' ') -- ' hello '
	  ,replace(' hello ', ' ', '')
FROM dual
;

SELECT ltrim('abcde', 'abc')
	  ,rtrim('abcde', 'cde')
	  ,rtrim(ltrim(' hello', ' '), ' ') -- ' hello '
	  ,replace(' hello ', ' ', '*')
FROM dual
;

SELECT * FROM emp
;

SELECT e.ename, e.job
	  ,e.*
FROM emp e
WHERE deptno = 10
;


SELECT REPLACE(e.ename, substr(e.ename, 1, 2), '**') "rep"
	   ,replace(e.ename,substr(e.ename, 2, 2), '--') "rep2"
       , e.job
	   ,e.*
FROM emp e
WHERE deptno = 10
;

SELECT * FROM student; 

--
SELECT name, jumin
      ,replace(jumin,substr(jumin, 7, 7), '-/-/-/-') "REPLACE"
      ,s.*
FROM student s
WHERE deptno1 = 101
;

--
SELECT name, tel
       ,REPLACE(tel --대상컬럼
	               ,substr(tel -대상컬럼
	                          ,instr(tel, ')', 1) + 1 --시작위치
	                          ,instr(tel, '-', 1) - instr(tel, ')', 1) - 1)  -- 크기
	               ,substr('****') instr(tel, '-', 1) - instr(tel, ')', 1) - 1)"REPLACE"
	   
FROM student 
WHERE deptno1 = 102	   
;

SELECT name, tel
       ,REPLACE(tel -- 대상 컬럼
               ,SUBSTR(tel -- 중간 번호 추출
                          ,INSTR(tel, ')', 1) + 1 
                          ,INSTR(tel, '-', 1) - INSTR(tel, ')', 1) - 1)  
               ,RPAD('*', INSTR(tel, '-', 1) - INSTR(tel, ')', 1) - 1, '*') -- 추출된 길이만큼 *로 채움
               ) AS "REPLACE" -- 별칭 위치 수정
FROM student 
WHERE deptno1 = 102	   
;

-- 숫자함수.
SELECT round(12.345, 1) -- 12.3
	  ,round(12.345, 2) -- 12.35
	  ,round(12.345, 3) -- 12.345 
FROM dual
;

SELECT round(12.345, 1) -- 12.3
	  ,round(12.345, 2) -- 12.35
	  ,round(12.345, 3) -- 12.345 
	  ,ronud(12.345, -1)
	  ,trunc(12.345, 2) -- 12.34
	  ,mod(12, 5)       -- 2
	  FROM dual
;

SELECT round(12.345, 1) -- 12.3
	  ,round(12.345, 2) -- 12.35
	  ,round(12.345, 3) -- 12.345 
	  ,round(12.345, -1) -- 올바르게 수정됨
	  ,trunc(12.345, 2) -- 12.34
	  ,mod(12, 5)       -- 2 (나머지)
	  ,ceil(12/5)		-- 3<2.4<2
	  ,floor(12/5) 		-- 2
	  ,power(3, 3)		-- 3 * 3 * 3 =>27
	  
FROM dual			
;

--날짜와 관련된 함수(중요!)
SELECT * FROM emp;

SELECT hiredate
      ,hiredate + 1
      ,sysdate -- 오라클 시스템이 실행되는 날짜? 현재날짜, 시간
FROM emp;

SELECT ename
      ,hiredate + 1
      ,sysdate -- 오라클 시스템이 실행되는 날짜? 현재날짜, 시간
      ,months_between(sysdate, hiredate) -- 두 시간 사이에 몇달 차이를 나타냄
FROM emp;

SELECT ename
      ,hiredate + 1
      ,sysdate -- 오라클 시스템이 실행되는 날짜? 현재날짜, 시간
      ,months_between(sysdate, hiredate) -- 두 시간 사이에 몇달 차이를 나타냄
      ,ADD_months(sysdate, 1) --기준이 되는 값 + (sysdate, 1)한달 후을 뜻함[월정보 추가.]
FROM emp; 




SELECT ename
      ,hiredate + 1
      ,sysdate -- 오라클 시스템이 실행되는 날짜? 현재날짜, 시간
      ,months_between(sysdate, hiredate) -- 두 시간 사이에 몇달 차이를 나타냄
      ,ADD_months(sysdate, 1) --기준이 되는 값 + (sysdate, 1)한달 후을 뜻함[월정보 추가.]
      ,NEXT_DAY(sysdate-7, '수') --(현재 날짜를 기준=sysdate-7)으로 다음 수요일은 언제인가?)[다음 요일의 날짜]
      ,last_day(sysdate) -- 달의 마지막날
FROM emp;

SELECT ename
      ,hiredate + 1
      ,sysdate -- 오라클 시스템이 실행되는 날짜? 현재날짜, 시간
      ,months_between(sysdate, hiredate) -- 두 시간 사이에 몇달 차이를 나타냄
      ,ADD_months(sysdate, 1) --기준이 되는 값 + (sysdate, 1)한달 후을 뜻함[월정보 추가.]
      ,NEXT_DAY(sysdate-7, '수') --(현재 날짜를 기준=sysdate-7)으로 다음 수요일은 언제인가?)[다음 요일의 날짜]
      ,last_day(sysdate) -- 달의 마지막날
      ,last_day(add_months(sysdate, -1)) -- 저번달의 마지막 날
      ,round(sysdate - (1 - 19/24)) --12/30 12시 이후 => 12/31\
      ,trunc(sysdate, 'mm') -- 2025/12/30 월을 기준으로 뒤에 일자를 다 버리겠습니다.
FROM emp;

SELECT *
FROM professor; -- 2025, 1982

SELECT *
FROM professor -- 2025, 1982
WHERE hiredate < sysdate; 

UPDATE professor
SET    hiredate = ADD_MONTHS(hiredate, -6*12)
WHERE hiredate > sysdate
;

-- 교수번호(profno), 이름(name), 급여(pay), 보너스(bouus)
-- 근무년수 20년 넘는 교수. + 근무년수(25년)

SELECT *
FROM professor;
-->
SELECT profno, 
	   name, 
	   pay || '만원' "PAY", 
	   bouus || '만원' "BONUS",
	   trunc(MONTHS_BETWEEN(sysdate, hiredate) / 12)|| '년' "근무년수"
FROM professor
WHERE MONTHS_BETWEEN(sysdate, hiredate >= 20 *12
;
--수정문
SELECT profno,
       name,
       pay || '만원' "PAY",
       bonus || '만원' "BONUS", -- 'bonus'로 수정
       TRUNC(MONTHS_BETWEEN(sysdate, hiredate) / 12) || '년' "근무년수"
FROM professor
WHERE MONTHS_BETWEEN(sysdate, hiredate) >= 240 -- 조건문 수정 (20년 = 240개월)
;
---

SELECT profno, name, pay, bonus -- 'bonus'로 수정
FROM professor
WHERE MONTHS_BETWEEN(sysdate, hiredate) >= 20 * 12 -- 조건문 수정 및 괄호 닫기
;

SELECT ELECT profno, name, pay, bonus
FROM professor
WHERE MONTHS_BETWEEN(sysdate, hiredate) > 240
; -- 20년 * 12개월 = 240개월


SELECT profno, name, pay, bonus
FROM professor
WHERE MONTHS_BETWEEN(sysdate, hiredate) > 240; -- 20년 * 12개월 = 240개


-- 근무년수가 10년 이상 20년 미만인 교수의  "15년 3개월?"
SELECT profno,
       name,
       pay || '만원' "PAY",
       bonus || '만원' "BONUS", -- 'bonus'로 수정
       TRUNC(MONTHS_BETWEEN(sysdate, hiredate) / 12) || '년' "근무년수"
FROM professor
WHERE MONTHS_BETWEEN(sysdate, hiredate) >= 10 * 12 -- 조건문 수정 (20년 = 240개월)
;

SELECT * FROM professor;

SELECT profno,
       name,
       pay || '만원' "PAY",
       bonus || '만원' "BONUS", -- 'bonus'로 수정
       TRUNC(MONTHS_BETWEEN(sysdate, hiredate) / 12) || '년' ||
       mod(TRUNC(MONTHS_BETWEEN(sysdate, hiredate)) , 12) || '개월' AS "근무년수"
FROM professor
WHERE MONTHS_BETWEEN(sysdate, hiredate) <= 10 * 12 -- 조건문 수정 (20년 = 240개월)
AND  MONTHS_BETWEEN(sysdate, hiredate) > 5 * 12
ORDER BY hiredate;

SELECT * FROM professor;

SELECT 2 + '2' "묵시적형변환"
	  ,2 + to_number(`2`) "명시적 형변환"	
FROM dual
;
     
SELECT sysdate
   	  ,to_char(sysdate, 'yyyy-MM-DD HH24:mi:ss') today-- varchar2 값.
   	  ,to_char(123456789.12, '00,999,999,999.99') num -- varchar2 값.
   	  ,TO_DATE('2024-05-06 101010', 'YYYY-mm-dd hhmiss' ) str --DATE 값
FROM dual
WHERE to_date('2025-12-31', 'YYYY-MM_DD') < sysdate + 1
;

-- nvl()
SELECT  nvl(NULL, '0')
FROM dual;

SELECT  nvl('hello' , '0')
FROM dual;

SELECT * FROM emp;

SELECT ename
      ,sal + nvl(comm, 0) AS "총급여"
      ,sal + nvl2(comm, comm, 0) AS  "전체급여"
      ,nvl2(comm, sal + comm, sal) AS "토탈급여"
      ,sal + comm AS "급여" 
FROM emp
;

-- decode() 함수.
SELECT decode('a', 'a', '같다', '다르다')
FROM dual;

SELECT decode('a', 'b', '같다', '다르다')
FROM dual;

SELECT decode(null, 'null', '같다', '다르다')
FROM dual
;

SELECT * 
FROM students;

SELECT * 
FROM dapartment;

/*
101 
102 
103
그외 기타학과 
*/

SELECT deptno1 
       ,decode(deptno1, 101, 'computer ENG.', 'ETC') AS dept 
FROM student;

SELECT deptno1
       ,decode(deptno1, 101, 'computer ENG.',
       					decode(deptno1, 102, 'Multi Eng.', 
       					decode(deptno1, 103, 'Sofrware Eng.','ETC'))) AS dept 
FROM student
;

SELECT deptno1
       ,decode(deptno1, 101, 'computer ENG.',
       					102, 'Multimdia Eng.', 
       				    103, 'Sofrware Eng.','ETC') AS "decode1",
       	decode(deptno1, 101, 'computer ENG.',
       				decode(deptno1, 102, 'Multi Eng.',
       						decode(deptno1, 103, 'Sofrware Eng.', 'ETC'))) AS dept 
FROM student
;

SELECT deptno1
       ,DECODE(deptno1, 101, 'Computer Eng.',
                        102, 'Multimedia Eng.', 
                        103, 'Software Eng.', 'ETC') AS "decode1" -- 여기 콤마 추가
       ,DECODE(deptno1, 101, 'Computer Eng.',
                DECODE(deptno1, 102, 'Multimedia Eng.',
                        DECODE(deptno1, 103, 'Software Eng.', 'ETC'))) AS dept -- 103 앞 콤마 추가
FROM student
;
