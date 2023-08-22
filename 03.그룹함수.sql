--그룹함수
select  first_name,
        to_char(salary, '999,999')
from employees;

select  first_name,   --107개 같이 표현할 수 없다
        avg(salary)   --1개
from employees;

--그룹함수 - count()
select count(*), count(first_name)
from employees;

select count(commission_pct), count(*)
from employees;

select count(manager_id), count(*)
from employees;

--where절 있을때
select count(*)
from employees
where salary > 16000;


--그룹함수 - sum()
select sum(salary), count(salary), count(*) 
from employees;

select sum(salary), avg(salary), count(salary), count(*)
from employees
where salary > 16000;

--그룹함수 - avg()
select  count(*),
        sum(salary),
        avg(salary)
from employees;

select  count(*),
        sum(salary),
        avg(nvl(salary, 0))
from employees;


--그룹함수 - max() / min()
select  count(*),
        max(salary),
        min(salary)
from employees
where department_id= 92;


--GROUP BY 절
select  department_id,
        sum(salary)
from employees
group by department_id;


select  department_id,
        sum(salary),
        avg(salary),
        max(salary),
        job_id
from employees
group by department_id, job_id;



--GROUP BY 절 예제
select  department_id,
        sum(salary)
from employees
where sum(salary) > 5000
group by department_id;




select  avg(salary)
from employees;


select  sum(salary), department_id
from employees
group by department_id;


--부서별로 합계를 내시요
--(연봉이 10000이상인 직원만)
select sum(salary), department_id
from employees
where salary >= 10000
group by department_id;

--부서별로 합계를 내시요
--(부서별 합계가 10000이상 되는 부서만)
select sum(salary), department_id
from employees
group by department_id
having sum(salary) >= 10000
and department_id >= 100
order by department_id desc;


--CASE ~ END 문
select  employee_id,
        first_name,
        salary,
        job_id,
        case when job_id='AC_ACCOUNT' then salary + salary*0.1 
             when job_id='SA_REP'     then salary + salary*0.2
             when job_id='ST_CLERK'   then salary + salary*0.3
             else salary
        end as bonus
from employees;

--DECODE 문
select  employee_id,
        first_name,
        salary,
        job_id,
        decode(job_id,'AC_ACCOUNT', salary + salary*0.1, 
                      'SA_REP', salary + salary*0.2, 
                      'ST_CLERK', salary + salary*0.3, 
                      salary)as bonus
from employees;

--직원의 이름, 부서, 팀을 출력하세요
--팀은 코드로 결정하며 부서코드가 10~50 이면 ‘A-TEAM’
--                            60~100이면 ‘B-TEAM’  
--                            110~150이면 ‘C-TEAM’ 
--                            나머지는 ‘팀없음’ 으로 출력하세요.

select  first_name,
        department_id,
        case when department_id>=10 and department_id<=50 then 'A-TEAM' 
             when department_id>=60 and department_id<=100 then 'B-TEAM'
             when department_id>=110 and department_id<=150 then 'C-TEAM'
             else '팀없음'
        end as team
from employees
order by team asc, department_id asc;


