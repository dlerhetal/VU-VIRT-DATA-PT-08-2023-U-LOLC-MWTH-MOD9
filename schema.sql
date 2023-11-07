-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/EOA2pq
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

create table "departments" (
    "dept_no" varchar primary key,
    "dept_name" varchar not null
);

create table "titles" (
    "title_id" varchar primary key,
    "title" varchar not null
);

create table "employees" (
    "emp_no" integer primary key,
    "emp_title_id" varchar not null,
    "birth_date" date not null,
    "first_name" varchar not null,
    "last_name" varchar not null,
    "sex" varchar not null,
    "hire_date" date not null
);

create table "dept_manager" (
    "dept_no" varchar,
    "emp_no" integer,
	primary key("dept_no", "emp_no")
);

create table "dept_emp" (
    "emp_no" integer,
    "dept_no" varchar,
	primary key("emp_no", "dept_no")
);

create table "salaries" (
    "emp_no" integer  primary key,
    "salary" integer not null
);

alter table "employees" add constraint "fk_employees_emp_title_id" foreign key("emp_title_id")
references "titles" ("title_id");

alter table "dept_manager" add constraint "fk_dept_manager_dept_no" foreign key("dept_no")
references "departments" ("dept_no");

alter table "dept_manager" add constraint "fk_dept_manager_emp_no" foreign key("emp_no")
references "employees" ("emp_no");

alter table "dept_emp" add constraint "fk_dept_emp_emp_no" foreign key("emp_no")
references "employees" ("emp_no");

alter table "dept_emp" add constraint "fk_dept_emp_dept_no" foreign key("dept_no")
references "departments" ("dept_no");

alter table "salaries" add constraint "fk_salaries_emp_no" foreign key("emp_no")
references "employees" ("emp_no");

