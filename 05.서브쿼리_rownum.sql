/****************************
 sub query
*****************************/
--단일행  sub query

--Den’ 보다 연봉를 많은 사람의 이름과 급여는?
--1)Den 의 연봉 알아보기 --> 11000
select salary
from employees
where first_name = 'Den';

--2)11000 보다 연봉이 높은 사람 구하기
select  first_name,
        salary
from employees
where salary >= 11000;

--1개의 질문으로 통합
select  first_name,
        salary
from employees
where salary >= (select salary
                 from employees
                 where first_name = 'Den');
-------------------------------------------------------------
--급여를 가장 적게 받는 사람의 이름, 급여, 사원번호는?
--case1 사람이름으로 접근-->최저 연봉자 1명??
select *
from employees
where first_name = 'Den';

--case2 급여로 접근-->최저 연봉자 1~여러명
select *
from employees
where salary = 11000;


--풀이
--1)최저연봉자 구하기
select first_name, 
       salary, 
       employee_id
from employees
where salary = (최저연봉)


--2)최저연봉 구하기
select min(salary)
from employees;


--3)합치기
select first_name, 
       salary, 
       employee_id
from employees
where salary = (select min(salary)
                from employees);

----------------------------------------------------------------------
--평균 급여보다 적게 받는 사람의 이름, 급여를 출력하세요?

--1)평균급여보다 적게 받는사람
select first_name, salary
from employees
where salary <= (평균급여)  ;

--2)평균급여
select avg(salary)
from employees;

--3)합치기
select first_name, salary
from employees
where salary <= (select avg(salary)
                 from employees)  ;

-----------------------------------------------------------------
--단중행  sub query

--where절 복습
select *
from employees
where salary in (12008, 8300);

select *
from employees
where salary = 12008
or salary = 8300;

/*여러번 질문해서 구하기**********************************/
--부서번호 110인 사원 Shelley, William
select first_name
from employees
where department_id = 110;

--방법1 where or 사용
select  employee_id,
        first_name,
        salary
from employees
where first_name = 'Shelley'
or first_name = 'William'

--방법2 where in 사용
select  employee_id,
        first_name,
        salary
from employees
where first_name in ('Shelley', 'William');

--부서번호가 110인 직원의 급여와 같은 모든 직원의 
--사번, 이름, 급여를 출력하세요
--전체
select  employee_id,
        first_name,
        salary
from employees
where first_name in (부서번호 110인 직원 리스트);  --('Shelley' , 'William')

--부서번호 100인 직원 리스트
select first_name, department_id
from employees
where department_id = 110;

--합치기
select  employee_id,
        first_name,
        salary
from employees
where first_name in (select first_name
                     from employees
                     where department_id = 110);



--각 부서별로 최고연봉을 받는 사원을 출력하세요
--주의)100번 부서의 최고연봉이 12008인경우 
--    다른부서의 최고연봉이 12008인 사람이 구해지면 안된다
--주의)100번 부서의 최고연봉 12008인 사람이 2명일수는 있다

--in 문법 체크
select first_name,
       salary,
       department_id
from employees
where (salary, department_id) in ( (최고급여, 부서번호),
                                   (12008, 110), 
                                   (11000,30), 
                                   (7000, null)
                                  );

--부서별 최고연봉 받는사원
select  first_name,
        salary,
        department_id
from employees
where (salary, department_id) in (부서별 최고연봉 리스트);

--부서별 최고연봉 리스트
select  max(salary), 
        department_id
from employees
group by department_id;

--합치기
select  first_name,
        salary,
        department_id
from employees
where (salary, department_id) in (select  max(salary), 
                                          department_id
                                  from employees
                                  group by department_id);


--any (다중행, or) 
--부서번호가 110인 직원의 급여 보다 큰 모든 직원의 
--사번, 이름, 급여를 출력하세요.(or연산--> 8300보다 큰)
select  first_name,
        salary
from employees
where department_id = 110;


select *
from employees
where salary > 12008
or salary > 8300;

select  first_name,
        salary
from employees
where salary >any (select salary
                   from employees
                   where department_id = 110);


--all (다중행, and) 
select  first_name,
        salary
from employees
where department_id = 110;

select *
from employees
where salary > 12008
and salary > 8300;


select  first_name,
        salary
from employees
where salary >all ( select  salary
                    from employees
                    where department_id = 110);

--------------------------------------------------------------
--각 부서별로 최고급여를 받는 사원을 출력하세요
--부서별로 최고급여 가 얼마인지 구한다
--(최고급여 and 부서번호) 사람을 구한다

select  first_name,
        salary,
        department_id
from employees
where (salary, department_id) in ( (최고급여, 부서번호)리스트  );

--(최고급여, 부서번호)리스트
select max(salary), department_id
from employees
group by department_id;

--합치기
select  first_name,
        salary,
        department_id
from employees
where (salary, department_id) in ( select max(salary), department_id
                                   from employees
                                   group by department_id  );



--직원의 이름과 연봉 부서명을 출력하세요 
select  first_name,
        salary,
        department_name
from employees e, departments d
where e.department_id = d.department_id;



--정렬, rownum, 2등부터 구할때
--급여를 가장 많이 받는 5명의 직원의 이름을 출력하시오.
--(*급여를 가장 많이 받는 2~5등의 직원의 이름을 출력하시오.)
select ort.rn,
       ort.first_name,
       ort.salary
from (--순번 과 정렬이 된 테이블 ort
      select rownum rn, 
             ot.first_name 
             ot.salary
      from (--정렬된 테이블 ot
              select first_name,
                     salary
              from employees
              order by salary desc
            )ot
      ) ort
where rn >= 2
and rn <= 5;

--07년에 입사한 직원중 급여가 많은 직원중 3에서 7등의 이름 급여 입사일은? 
--정렬, rownum. where
select  rn,
        ort.first_name,
        ort.salary,
        ort.hire_date
from (select rownum rn,
             ot.first_name,
             ot.salary,
             ot.hire_date
      from (select  first_name,
                    salary,
                    hire_date
            from employees
            where hire_date >= '07/01/01'
            and hire_date <= '07/12/31'
            order by salary desc) ot
      )ort
where rn>=3
and rn<=7





