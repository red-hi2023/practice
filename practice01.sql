/*문제1
사원의 사원번호 이름(first_name) 성(last_name) 입사일을 출력하세요 */
select  employee_id, 
        first_name, 
        last_name, 
        hire_date
from employees;

/*문제2
사원의 사원번호 이름(first_name) 성(last_name) 입사일을 출력하세요
(사원번호 올림차순으로)*/
select  employee_id,
        first_name,
        last_name,
        hire_date
from employees
order by employee_id asc;

/*문제3
사원의 사원번호 이름(first_name) 성(last_name) 입사일을 출력하세요
(입사일 내림차순으로 출력하되 입사일이 같으면 사원번호 올림차순으로 출력)*/
select  employee_id,
        first_name,
        last_name,
        hire_date
from employees
order by hire_date desc, employee_id asc;


/*문제4
사원의 이름(fisrt_name)과 성(last_name)을 붙여서 
'성 명' 이라는 1개의 이름으로(이름과 성은 1개의 공백으로 구분), 
그리고 전화번호 입사일 연봉 부서번호가 표시되도록 출력하세요*/
select  first_name || ' ' || last_name "성 명",
        phone_number 전화번호,
        hire_date 입사일,
        salary 연봉,
        department_id 부서번호
from employees;

/*문제5
사원의 이름(fisrt_name)과 성(last_name)을 붙여서 '성 명' 
이라는 1개의 이름으로(이름과 성은 1개의 공백으로 구분), 
그리고 전화번호 입사일 연봉 부서번호를 최근에 입사한 사람부터 출력하세요*/
select  first_name || ' ' || last_name "성 명",
        phone_number 전화번호,
        hire_date 입사일,
        salary 연봉,
        department_id 부서번호
from employees
order by hire_date desc;



/*문제6
사원의 이름(fisrt_name)과 성(last_name)을 붙여서 '성 명' 
이라는 1개의 이름으로(이름과 성은 1개의 공백으로 구분), 
그리고 전화번호 입사일 연봉 부서번호를 부서번호 순으로 출력하세요*/
select  first_name || ' ' || last_name "성 명",
        phone_number 전화번호,
        hire_date 입사일,
        salary 연봉,
        department_id 부서번호
from employees
order by department_id asc;


/*문제7
사원의 이름(fisrt_name)과 성(last_name)을 붙여서 '성 명' 
이라는 1개의 이름으로(이름과 성은 1개의 공백으로 구분), 
그리고 전화번호 입사일 연봉 부서번호를 부서번호 올림차순으로 출력하세요. 
부서번호가 같은경우 입사일이 늦은 사람부터 출력하세요*/
select  first_name || ' ' || last_name "성 명",
        phone_number 전화번호,
        hire_date 입사일,
        salary 연봉,
        department_id 부서번호
from employees
order by department_id asc, hire_date desc;

/*문제8
사원의 이름(fisrt_name)과 성(last_name)을 붙여서 '성 명' 
이라는 1개의 이름으로(이름과 성은 1개의 공백으로 구분), 
그리고 전화번호 입사일 연봉 부서번호를 부서번호 올림차순으로 출력하세요. 
부서번호가 같은경우 입사일이 늦은 사람부터 출력하세요
단 부서번호가 없는 사람은 부서번호를 0으로 표시합니다.*/


























