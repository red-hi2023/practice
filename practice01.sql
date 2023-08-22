/*����1
����� �����ȣ �̸�(first_name) ��(last_name) �Ի����� ����ϼ��� */
select  employee_id, 
        first_name, 
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
select  first_name || ' ' || last_name "�� ��",
        phone_number ��ȭ��ȣ,
        hire_date �Ի���,
        salary ����,
        department_id �μ���ȣ
from employees;

/*����5
����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� '�� ��' 
�̶�� 1���� �̸�����(�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �ֱٿ� �Ի��� ������� ����ϼ���*/
select  first_name || ' ' || last_name "�� ��",
        phone_number ��ȭ��ȣ,
        hire_date �Ի���,
        salary ����,
        department_id �μ���ȣ
from employees
order by hire_date desc;



/*����6
����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� '�� ��' 
�̶�� 1���� �̸�����(�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �μ���ȣ ������ ����ϼ���*/
select  first_name || ' ' || last_name "�� ��",
        phone_number ��ȭ��ȣ,
        hire_date �Ի���,
        salary ����,
        department_id �μ���ȣ
from employees
order by department_id asc;


/*����7
����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� '�� ��' 
�̶�� 1���� �̸�����(�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �μ���ȣ �ø��������� ����ϼ���. 
�μ���ȣ�� ������� �Ի����� ���� ������� ����ϼ���*/
select  first_name || ' ' || last_name "�� ��",
        phone_number ��ȭ��ȣ,
        hire_date �Ի���,
        salary ����,
        department_id �μ���ȣ
from employees
order by department_id asc, hire_date desc;

/*����8
����� �̸�(fisrt_name)�� ��(last_name)�� �ٿ��� '�� ��' 
�̶�� 1���� �̸�����(�̸��� ���� 1���� �������� ����), 
�׸��� ��ȭ��ȣ �Ի��� ���� �μ���ȣ�� �μ���ȣ �ø��������� ����ϼ���. 
�μ���ȣ�� ������� �Ի����� ���� ������� ����ϼ���
�� �μ���ȣ�� ���� ����� �μ���ȣ�� 0���� ǥ���մϴ�.*/


























