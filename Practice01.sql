--�⺻ SQL �����Դϴ�.

/*����1
����� �����ȣ �̸�(first_name) ��(last_name) �Ի����� ����ϼ���*/
select  first_name, 
        last_name, 
        hire_date
from employees;


/*����2
����� �����ȣ �̸�(first_name) ��(last_name) �Ի����� ����ϼ���
(�����ȣ �ø���������)*/
select  employee_id,
        first_name, 
        last_name, 
        hire_date
from employees
order by employee_id asc;


/*����3
����� �����ȣ �̸�(first_name) ��(last_name) �Ի����� ����ϼ���
(�Ի��� ������������ ����ϵ� �Ի����� ������ �����ȣ �ø��������� ���)*/
select  employee_id,
        first_name, 
        last_name, 
        hire_date
from employees
order by hire_date desc, employee_id asc;


/*����4
����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� 
'�� ��' �̶�� 1���� �̸�����(�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� ǥ�õǵ��� ����ϼ���*/
select  first_name || ' ' || last_name  "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
from employees;

/*����5
����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� 
'�� ��' �̶�� 1���� �̸�����(�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �ֱٿ� �Ի��� ������� ����ϼ���*/
select  first_name || ' ' || last_name  "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id 
from employees
order by hire_date desc;

/*����6
����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� 
'�� ��' �̶�� 1���� �̸�����(�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �μ���ȣ �ø��������� ����ϼ���*/
select  first_name || ' ' || last_name  "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
from employees
order by department_id asc;


/*����7
����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� 
'�� ��' �̶�� 1���� �̸�����(�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �μ���ȣ �ø��������� ����ϼ���. 
�μ���ȣ�� ������� �Ի����� ���� ������� ����ϼ���*/
select  first_name || ' ' || last_name  "�� ��",
        phone_number,
        hire_date,
        salary,
        department_id
from employees
order by department_id asc, hire_date desc;

/*����8
����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� 
'�� ��' �̶�� 1���� �̸�����(�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �μ���ȣ �ø��������� ����ϼ���. 
�μ���ȣ�� ������� �Ի����� ���� ������� ����ϼ���
�� �μ���ȣ�� ���� ����� �μ���ȣ�� 0���� ǥ���մϴ�.*/
select  first_name || ' ' || last_name  "�� ��",
        phone_number,
        hire_date,
        salary,
        nvl(department_id, 0)
from employees
order by department_id asc, hire_date desc;

/*����9
��ü������ ���� ������ ��ȸ�ϼ���. 
������ �Ի���(hire_date)�� �ø�����(ASC)���� ���� ���Ӻ��� ����� �ǵ��� �ϼ���. 
�̸�(first_name last_name),  ����(salary),  ��ȭ��ȣ(phone_number), 
�Ի���(hire_date) �����̰� 
���̸���, ��������, ����ȭ-��ȣ��, ���Ի��ϡ� �� �÷��̸��� ��ü�� ������.*/
select  first_name || ' ' || last_name �̸�,
        salary ����,
        phone_number "��ȭ-��ȣ",
        hire_date �Ի���
from employees 
order by hire_date asc;


/*����10
������ 12000 �̻�Ǵ� �������� LAST_NAME �� ������ ��ȸ�ϼ���.*/
select  last_name,
        salary
from employees
where salary >= 12000;


/*����11
������ 12000 �̻�Ǵ� �������� LAST_NAME �� ������ ��ȸ�ϼ���.
��¼����� ������ ����������� ����մϴ�.*/
select  last_name,
        salary
from employees
where salary >= 12000
order by salary desc;


/*����12
������ 12000 �̻�Ǵ� �������� LAST_NAME �� ������ ��ȸ�ϼ���.
������ ����������� ����ϰ� ������ ������ �Ի����� ���� ������� ����ϼ���*/
select  last_name,
        salary,
        hire_date
from employees
where salary >= 12000
order by salary desc, hire_date asc;


/*����13
07/01/01 �� ���Ŀ� �Ի��� ������� �̸��� �Ի����� ����ϼ���
�Ի����� 03-07-2007 �� ����  ��, ��, �⵵(�����) �� ����ϼ���
�̸��� ��� �빮�ڷ� ����ϼ���*/
select  last_name,
        to_char(hire_date, 'dd-mm-yyyy')
from employees
where hire_date >= '07/01/01';


/*����14
�����ȣ�� 100 �� ����� ��� LAST_NAME �� �μ� ��ȣ�� ����ϼ���*/
select  last_name,
        department_id
from employees
where department_id = 100;


/*����15
�����ȣ�� 100������ ����� ��� LAST_NAME �� �μ� ��ȣ�� ��ȸ�Ѵ�.
(100~199��)*/
select  last_name,
        department_id
from employees
where department_id = 100;


/*����16
������ 5000 ���� 12000�� ���� �̿��� ������� LAST_NAME �� ������ ��ȸ����.
(������ 5000 �� ����� 12000 �� ����� ������� �ʽ��ϴ�.)*/
select  last_name,
        department_id,
        salary
from employees
where salary < 5000
or salary > 12000;



/*����17
07�⵵�� ���� ��� ������� LAST_NAME �� �Ի����� ��ȸ�Ѵ�.
�Ի����� ���������� ����ϼ��� �Ի�����  2007-06-17 �� ���� ����ϼ���*/
select  last_name,
        to_char(hire_date, 'yy-mm-dd')
from employees
where hire_date >= '07-01-01'
and hire_date <= '07-12-31'
order by hire_date desc;

select  last_name,
        to_char(hire_date, 'yy-mm-dd')
from employees
where hire_date like '07%'
order by hire_date desc;


/*����18
������ 2,500, 3,500, 7000 �� ����� ����ϼ���*/
select  last_name, 
        salary
from employees
where salary in (2500, 3500, 7000);

select  last_name, 
        salary
from employees
where salary = 2500
or salary = 3500
or salary = 7000;

/*����19
������ 2,500, 3,500, 7000 �� �ƴ� ����� ����ϼ���*/
select  last_name, 
        salary
from employees
where salary != 2500
and salary != 3500
and salary != 7000;


/*����20
������ 2,500, 3,500, 7000 �� �ƴϸ� 
������ SA_REP �� ����� ����ϼ���*/
select  last_name, 
        salary,
        job_id
from employees
where salary != 2500
and salary != 3500
and salary != 7000
and job_id = 'SA_REP';


/*����21
������ 2,500, 3,500, 7000 �� �ƴϸ� 
������ SA_REP �� ST_CLERK  �� ��� ��θ� ���Ͻÿ�*/
select  last_name, 
        salary,
        job_id
from employees
where (salary != 2500 and salary != 3500 and salary != 7000)
and (job_id = 'SA_REP' or job_id = 'ST_CLERK');

/*����22
�μ���ȣ�� 20 �� �Ǵ� 50 �� �μ����� �ٹ��ϴ� ��� ������� 
LAST_NAME �� �μ� ��ȣ�� ���ĺ������� ��ȸ�Ѵ�. (a->z)*/
select last_name,
       department_id
from employees
where department_id = 20
or department_id = 50
order by last_name desc;


/*����23
�μ���ȣ�� 20 �� �� 50 �� �μ��� �ٹ��ϸ�, 
������ 5000 ~ 12,000 ������ ������� LAST_NAME �� ������ ��ȸ�Ѵ�.*/
select  last_name,
        department_id,
        salary
from employees
where (department_id = 20 or department_id = 50)
and (salary >= 5000 and salary <= 12000);


/*����24
first_name �� a ��(OR) e ���ڰ� �ִ� ������� first_name �� ����� ��ȸ�Ѵ�.*/
select  first_name,
        employee_id
from employees
where first_name like '%a%'
or  first_name like '%e%';

select  first_name,
        employee_id
from employees
where lower(first_name) like '%a%'
or  lower(first_name) like '%e%';


/*����25
first_name �� J�� �����ϰ� n���� ������ ����� first_name �� ��� ������ ��ȸ�Ѵ�*/
select  first_name,
        employee_id
from employees
where first_name like 'J%'
and  first_name like '%n';

/*����26
first_name �� J�� �����ϰ� n���� ������ ��� �� 
�̸��� 4�����λ���� first_name ��� ���� ��ȭ��ȣ�� ��ȸ�Ѵ�*/
select  first_name,
        employee_id
from employees
where first_name like 'J%'
and  first_name like '%n'
and  first_name like '____';


select  first_name,
        employee_id
from employees
where first_name like 'J___'
and  first_name like '___n';



/*����27
Ŀ�̼��� �ִ� ��� ������� LAST_ANME, ���� �� Ŀ�̼��� ��ȸ�մϴ�.
��¼����� ���� ū���� ����, ������ ������� Ŀ�̼��� ū������� ����մϴ�.*/
select  last_name,
        salary,
        commission_pct
from employees
where commission_pct is not null
order by salary desc, commission_pct desc;

/*����28
�Ŵ����� �ִ� ������� LAST_NAME �� JOB_ID �� ��ȸ�Ѵ�.*/
select  last_name,
        job_id,
        manager_id
from employees
where manager_id is not null;


/*����29
���(employeed_id) �̸�(first_name)  ����(salary)  10�⿬��(salay10)�� 
������ ���� ������� ����ϼ���
���÷����� ���, �̸�, ����, 10�⿬�� �̸�  
������ 10�⿬���� õ������ �޸��� ǥ���մϴ�.*/
select  employee_id ���,
        first_name �̸�,
        to_char(salary, '9,999,999') ����,
        to_char(salary*10, '9,999,999') "10�⿬��"
from employees
order by salary desc; 


/*����30
���(employeed_id) �̸�(first_name) ����(salary)  ���� ����  �Ǽ��ɾ��� ����ϼ���.
����÷���� ������ ���, �̸�, ����, ����(����/12), ����(����/12*3.3%), 
�Ǽ��ɾ�(����-����) �̸� õ������ �޸��� ����մϴ�.*/
select  employee_id ���,
        first_name �̸�,
        to_char(salary, '9,999,999') ����,
        to_char(salary/12, '9,999,999') "����",
        salary/12*(3.3/100) "����",
        (salary/12) - (salary/12*(3.3/100)) �Ǽ��ɾ�
from employees
order by salary desc; 


/*����31
����(jobs)���� �����̸�(job_title)�� �ְ����(max_salary)�� 
������ ��������(DESC)�� �����ϼ���.*/
select  job_title,
        max_salary
from jobs
order by max_salary desc ;



/*����32
��� �Ŵ����� �����Ǿ������� Ŀ�̼Ǻ����� ����, 
������ 3000�ʰ��� ������ �̸�, �Ŵ������̵�, Ŀ�̼� ����, ���� �� ����ϼ���.*/
select  first_name, 
        manager_id, 
        commission_pct, 
        salary
from employees
where manager_id is not null 
and commission_pct is null
and salary > 3000;



/*����33
�ְ����(max_salary)�� 10000 �̻��� ������ �̸�(job_title)�� �ְ����(max_salary)�� 
�ְ������(max_salary) ��������(DESC)�� �����Ͽ� ����ϼ���.*/ 
select  job_title, 
        max_salary
from jobs
where max_salary >= 10000
order by max_salary desc ;


/*����34
������ 14000 �̸� 10000 �̻��� ������ �̸�(first_name), ����, Ŀ�̼��ۼ�Ʈ ��  ������(��������) ����ϼ���. �� Ŀ�̼��ۼ�Ʈ �� null �̸� 0 ���� ��Ÿ���ÿ�*/
select  first_name, 
        salary, 
        nvl(commission_pct, 0)
from employees 
where salary < 14000
and salary >= 10000 
order by salary desc;



/*����35
�μ���ȣ�� 10, 90, 100 �� ������ �̸�, ����, �Ի���, �μ���ȣ�� ��Ÿ���ÿ�
�Ի����� 2007-12-22 12:00:00 (��-��) �� ���� ǥ���Ͻÿ�
(�ð��� 12:00:00 ���� ǥ���˴ϴ�)*/
select  first_name,
        salary, 
        to_char(hire_date, 'YYYY-MM-DD HH:MI:SS' ) hire_date, 
        department_id
from employees
where department_id in ( 10, 90, 100 ) ;


/*����36
�̸�(first_name)�� S �Ǵ� s �� ���� ������ �̸�, ������ ��Ÿ���ÿ�*/
select  first_name, 
        salary 
from employees
where upper(first_name) like '%S%' ;


/*����37
��ü �μ��� ����Ϸ��� �մϴ�. ������ �μ��̸��� �� ������� ����� ������.*/
select department_name
from departments
order by length(department_name) desc ;



/*����38
���簡 ���� ������ ����Ǵ� ������� �����̸��� �빮�ڷ� ����ϰ�
�ø�����(ASC)���� ������ ������.*/
select upper(country_name) country_name 
from countries
order by upper(country_name) asc ;


/*����39
�Ի����� 03/12/31 �� ���� �Ի��� ������ �̸�, ����, ��ȭ ��ȣ, �Ի����� ����ϼ���
��ȭ��ȣ�� 545-343-3433 �� ���� ���·� ����Ͻÿ�.*/
select  first_name,
        salary,
        replace(phone_number, '.', '-') phone_number,
        hire_date
from employees
where hire_date < '03/12/31'
