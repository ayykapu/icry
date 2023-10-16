--create database University
-- use University

--create table students(
--	student_id int identity primary key,
--	surname varchar(50) not null,
--	first_name varchar(50) not null,
--	date_of_birth date not null,
--	group_no char(20) not null
--)

--create table tuition_fees(
--	payment_id int identity primary key,
--	student_id int not null,
--	fee_amount decimal(10,2) not null,
--	date_of_payment date not null,
--)

--create table students_modules(
--	student_id int not null,
--	module_id int not null,
--	planned_exam_date date,
--	constraint kpsm primary key(student_id, module_id)
--)

--create table student_grades(
--	student_id int,
--	module_id int,
--	exam_date date,
--	grade decimal(2,1) not null,
--	constraint kpsg primary key(student_id, module_id, exam_date)
--)

--create table grades(
--	grade decimal(2,1) primary key,
--)

--create table modules(
--	module_id int identity primary key,
--	module_name varchar(100) not null,
--	no_of_hours tinyint not null,
--	lecturer_id int not null,
--	preceding_module int not null,
--	department varchar(100) not null
--)

--create table departments(
--	department varchar(100) primary key
--)

--create table groups(
--	group_no char(20) primary key
--)

--create table lecturers(
--	lecturer_id int primary key,
--	acad_position varchar(30),
--	department varchar(100) not null
--)

--create table acad_positions(
--	acad_position varchar(30),
--	overtime_rate decimal(7,2) not null,
--	constraint kpap primary key(acad_position)
--)

--create table employees(
--	employee_id int identity primary key,
--	surname varchar(50) not null,
--	first_name varchar(50) not null,
--	employment_date date not null,
--	PESEL char(11) not null unique
--)

--alter table modules add 
--constraint rmap foreign key(lecturer_id)
--references lecturers(lecturer_id)
--on delete no action

--alter table modules add
--constraint rmpmap foreign key(preceding_module)
--references modules(module_id)
--on delete no action

--alter table modules add
--constraint rmdap foreign key(department)
--references departments(department)
--on delete no action on update cascade

--alter table lecturers add 
--constraint rdap foreign key(department)
--references departments(department)
--on delete no action on update cascade

--alter table lecturers add
--constraint rlap foreign key(acad_position)
--references acad_positions(acad_position)
--on delete no action on update cascade

--alter table tuition_fees add
--constraint ftfpsi foreign key(student_id)
--references students(student_id)
--on delete no action on update cascade

--alter table students add
--constraint fgnpgn foreign key(group_no)
--references groups(group_no)
--on delete no action on update cascade

--alter table students_modules add
--constraint fsipsi foreign key(student_id)
--references students(student_id)
--on delete cascade

--alter table students_modules add
--constraint fmipmi foreign key(module_id)
--references modules(module_id)
--on delete no action;

--alter table lecturers add
--constraint flipei foreign key(lecturer_id)
--references employees(employee_id)
--on delete cascade

--alter table student_grades add
--constraint fgpg foreign key(grade)
--references grades(grade)
--on delete no action on update cascade

