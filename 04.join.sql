/********************
 join
*********************/

--카티젼 프로덕트(Cartesian Product)
--    107    *      27     = 2889건
select *
from employees, departments;


select  first_name,
        salary,
        department_name,
        employees.department_id as eId,
        departments.department_id as dId
from employees, departments
where employees.department_id = departments.department_id;


select  e.first_name,
        e.salary,
        d.department_name,
        e.department_id
from employees e, departments d
where e.department_id = d.department_id;


/*모든 직원이름, 부서이름, 업무명 을 출력하세요*/
select  e.first_name,
        d.department_name,
        j.job_title,
        e.job_id
from employees e, departments d, jobs j
where e.department_id = d.department_id
and e.job_id = j.job_id;


/*outer join > left join*/
select  e.first_name,
        e.salary,
        d.department_name,
        e.department_id
from employees e, departments d
where e.department_id = d.department_id;



select  e.first_name,
        e.salary,
        d.department_name,
        e.department_id
from employees e left outer join departments d
on e.department_id = d.department_id;


select  e.first_name,
        e.salary,
        d.department_name,
        e.department_id
from employees e, departments d
where e.department_id = d.department_id(+);


/*outer join > right join*/
select  e.first_name,
        e.salary,
        d.department_name,
        e.department_id
from employees e right outer join departments d
on e.department_id = d.department_id;


select  e.first_name,
        e.salary,
        d.department_name,
        e.department_id
from employees e, departments d
where e.department_id(+) = d.department_id;


/*outer join > full join*/
select  e.first_name,
        e.salary,
        d.department_name,
        e.department_id
from employees e full outer join departments d
on e.department_id = d.department_id;

select  e.first_name,
        e.salary,
        d.department_name,
        e.department_id
from employees e, departments d
where e.department_id(+) = d.department_id(+);


/*self join*/
select  e.first_name name,
        e.salary,
        e.phone_number phone_number,
        m.first_name mng_name,
        m.phone_number mng_phone_number
from employees e, employees m
where e.manager_id = m.employee_id;



