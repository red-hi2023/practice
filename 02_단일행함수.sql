--단일행 함수
--문자함수 ? INITCAP(컬럼명)
select email, initcap(email), department_id
from employees
where department_id = 100;

--문자함수 ? LOWER(컬럼명) / UPPER(컬럼명)
select first_name, lower(first_name),  upper(first_name)
from employees
where department_id = 100;

--문자함수 ? SUBSTR(컬럼명, 시작위치, 글자수)
select  first_name, 
        substr(first_name, 1, 3), 
        substr(first_name, -3, 2)
from employees
where department_id = 100;


--문자함수 ? LPAD(컬럼명, 자리수, ‘채울문자’) /  RPAD(컬럼명, 자리수, ‘채울문자’)
select  first_name,
        lpad(first_name, 10, '*'),
        rpad(first_name, 10, '#*')
from employees;

--문자함수 ? REPLACE (컬럼명, 문자1, 문자2)
select  first_name,
        replace(first_name, 'a', '*'),
        replace(first_name, substr(first_name, 2, 3) , '***') as eventName
from employees;


--숫자함수 ? ROUND(숫자, 출력을 원하는 자리수) 
select round(123.456, 2) as r2,
       round(123.456, 0) as r0,
       round(123.456, -1) as "r-1"
from dual;


--숫자함수 ? TRUNC(숫자, 출력을 원하는 자리수) 
select  trunc(123.456, 2) t2,
        trunc(123.956, 0) t0,
        trunc(129.456, -1) "t-1"
from dual;



--날짜함수 ? SYSDATE()
select sysdate
from dual;

--단일함수>날짜함수 ? MONTH_BETWEEN(d1, d2) 
select  first_name,
        hire_date,
        sysdate,
        trunc(months_between('2002-07-27', hire_date), 0)
from employees
where department_id = 110;


--TO_CHAR(숫자, ‘출력모양’)  숫자형?문자형으로 변환하기
select  first_name,
        salary,
        salary*12,
        to_char(salary, '99,999,999' ),
        to_char(salary*102, '$999,999,999.99' ),
         to_char(salary, '099999' )
from employees
where department_id = 110;


--변환함수>TO_CHAR(날짜, ‘출력모양’)  날짜?문자형으로 변환하기
select  first_name, hire_date, 
        to_char(hire_date, 'YYYY-MM-DD HH:MI:SS'), 
        to_char(hire_date, 'YYYY"년"MM"월"DD"일" HH"시"MI"분"SS"초"')
from employees;


--일반함수>NVL(컬럼명, null일때값)/NVL2(컬럼명, null아닐때값, null일때 값)
select  first_name,
        salary,
        commission_pct,
        nvl(commission_pct, 0),
        salary + (salary*nvl(commission_pct, 0))
from employees;

select first_name,
       salary,
       commission_pct,
       nvl(commission_pct,0),
       nvl2(commission_pct, 100, 10)
from employees;

