create database MC;
use MC;

create table MCStudents (
	student_id int not null auto_increment primary key,
	first_name varchar(20),
    last_name varchar(30),
    address varchar(100),
    city varchar(30),
    state varchar(2),
    zip varchar(10),
    phone varchar(14),
    major_id int
);
-- zip changed to varchar(10) from int b/c data file we are given has a number of entries with 
-- European-style zips and it was not worth trying to correct them when they are just sample data

create table MCCourses (
	course_id int not null auto_increment primary key,
    title varchar(50),
    term varchar(20),
    instructor varchar(50),
    course_year int
);

create table MCDepartments (
	department_id int not null auto_increment primary key,
    department_name varchar(50),
    department_head varchar(50)
);

create table MCMajors (
	major_id int not null auto_increment primary key,
    major_name varchar(50),
    department_id int
);

create table MCstudents_MCcourses (
	student_id int,
    course_id int
);

create table MCCourses_MCDepartments (
	course_id int,
    department_id int
);

-- data for MCstudents inserted by provided MCSTUDENTS.sql file, modified to use my variable names (does not include majors)

-- data for other tables
insert into MCCourses (title,term,course_year,instructor) values ('English 307: 18th Century British Literature','Fall','2019','Richardson');
insert into MCCourses (title,term,course_year,instructor) values ('Spanish 101: Hablamos Espanol','Fall','2019','Bonita');
insert into MCCourses (title,term,course_year,instructor) values ('English 101: Expository Writing','Fall','2019','Willow');
insert into MCCourses (title,term,course_year,instructor) values ('Biology 101: Introduction to Biology','Fall','2019','Pulmon');
insert into MCCourses (title,term,course_year,instructor) values ('Economics 102: Microeconomics','Fall','2019','Iso');
insert into MCCourses (title,term,course_year,instructor) values ('History 275: History of the Polar Regions','Fall','2019','Ursus');
insert into MCCourses (title,term,course_year,instructor) values ('English 222: Modern Novel','Fall','2019','Dudgeon');
insert into MCCourses (title,term,course_year,instructor) values ('Economics 101: Macroeconomics','Fall','2019','Laffer');
insert into MCCourses (title,term,course_year,instructor) values ('Math 235: Statistics','Fall','2019','Factor');
insert into MCCourses (title,term,course_year,instructor) values ('Math 131: Pre-Calculus','Fall','2019','Euler');
insert into MCCourses (title,term,course_year,instructor) values ('History 249: The California Gold Rush','Fall','2019','Miller');
insert into MCCourses (title,term,course_year,instructor) values ('Sociology 249: The California Gold Rush','Fall','2019','Miller');
insert into MCCourses (title,term,course_year,instructor) values ('French 101: Bon Jour!','Fall','2019','Alouette');
insert into MCCourses (title,term,course_year,instructor) values ('Engineering 288: Intro to Electrical Engineering','Fall','2019','Spark');
insert into MCCourses (title,term,course_year,instructor) values ('Computer Science 302: Jump Into Java','Fall','2019','Bean');

insert into MCDepartments (department_name,department_head) values ('English','Austen');
insert into MCDepartments (department_name,department_head) values ('Spanish','Lopez');
-- Spanish, Lopez was accidentally run twice, so I deleted the second id tag for it, so the department numbering in the 
-- join tables below is not as it would be if the db were deleted and this were rerun 
insert into MCDepartments (department_name,department_head) values ('Biology','Vanderwaals');
insert into MCDepartments (department_name,department_head) values ('Economics','Hayek');
insert into MCDepartments (department_name,department_head) values ('History','Lincoln');
insert into MCDepartments (department_name,department_head) values ('Math','Koenig');
insert into MCDepartments (department_name,department_head) values ('Sociology','Wicks');
insert into MCDepartments (department_name,department_head) values ('French','Abravanel');
insert into MCDepartments (department_name,department_head) values ('Engineering','Goethals');
insert into MCDepartments (department_name,department_head) values ('Computer Science','Coffee');

insert into MCMajors (major_name,department_id) values ('English','1');
insert into MCMajors (major_name,department_id) values ('Spanish','2');
insert into MCMajors (major_name,department_id) values ('Biology','4');
insert into MCMajors (major_name,department_id) values ('Economic Theory and Structure','5');
insert into MCMajors (major_name,department_id) values ('Finance','5');
insert into MCMajors (major_name,department_id) values ('History','6');
insert into MCMajors (major_name,department_id) values ('Math','7');
insert into MCMajors (major_name,department_id) values ('Applied Math','7');
insert into MCMajors (major_name,department_id) values ('Sociology','8');
insert into MCMajors (major_name,department_id) values ('French','9');
insert into MCMajors (major_name,department_id) values ('Mechanical and Aerospace Engineering','10');
insert into MCMajors (major_name,department_id) values ('Civil and Electrical Engineering','10');
insert into MCMajors (major_name,department_id) values ('Chemical and Geoscience Engineering','10');
insert into MCMajors (major_name,department_id) values ('Web Development','11');
insert into MCMajors (major_name,department_id) values ('Data Science','11');
insert into MCMajors (major_name,department_id) values ('General Computer Science','11');

insert into MCCourses_MCDepartments (course_id,department_id) values ('1','1');
insert into MCCourses_MCDepartments (course_id,department_id) values ('2','2');
insert into MCCourses_MCDepartments (course_id,department_id) values ('3','1');
insert into MCCourses_MCDepartments (course_id,department_id) values ('4','4');
insert into MCCourses_MCDepartments (course_id,department_id) values ('5','5');
insert into MCCourses_MCDepartments (course_id,department_id) values ('6','6');
insert into MCCourses_MCDepartments (course_id,department_id) values ('7','1');
insert into MCCourses_MCDepartments (course_id,department_id) values ('8','5');
insert into MCCourses_MCDepartments (course_id,department_id) values ('9','7');
insert into MCCourses_MCDepartments (course_id,department_id) values ('10','7');
insert into MCCourses_MCDepartments (course_id,department_id) values ('11','6');
insert into MCCourses_MCDepartments (course_id,department_id) values ('12','8');
insert into MCCourses_MCDepartments (course_id,department_id) values ('13','9');
insert into MCCourses_MCDepartments (course_id,department_id) values ('14','11');
insert into MCCourses_MCDepartments (course_id,department_id) values ('15','10');

insert into MCStudents_MCCourses (student_id, course_id) values ('4','1');
insert into MCStudents_MCCourses (student_id, course_id) values ('4','6');
insert into MCStudents_MCCourses (student_id, course_id) values ('4','12');
insert into MCStudents_MCCourses (student_id, course_id) values ('4','10');
insert into MCStudents_MCCourses (student_id, course_id) values ('8','2');
insert into MCStudents_MCCourses (student_id, course_id) values ('8','4');
insert into MCStudents_MCCourses (student_id, course_id) values ('8','11');
insert into MCStudents_MCCourses (student_id, course_id) values ('8','14');
insert into MCStudents_MCCourses (student_id, course_id) values ('37','3');
insert into MCStudents_MCCourses (student_id, course_id) values ('37','7');
insert into MCStudents_MCCourses (student_id, course_id) values ('37','15');
insert into MCStudents_MCCourses (student_id, course_id) values ('58','4');
insert into MCStudents_MCCourses (student_id, course_id) values ('58','8');
insert into MCStudents_MCCourses (student_id, course_id) values ('58','10');
insert into MCStudents_MCCourses (student_id, course_id) values ('58','13');
insert into MCStudents_MCCourses (student_id, course_id) values ('75','5');
insert into MCStudents_MCCourses (student_id, course_id) values ('75','9');
insert into MCStudents_MCCourses (student_id, course_id) values ('75','15');
insert into MCStudents_MCCourses (student_id, course_id) values ('75','4');
insert into MCStudents_MCCourses (student_id, course_id) values ('79','2');
insert into MCStudents_MCCourses (student_id, course_id) values ('79','7');
insert into MCStudents_MCCourses (student_id, course_id) values ('79','4');
insert into MCStudents_MCCourses (student_id, course_id) values ('85','4');
insert into MCStudents_MCCourses (student_id, course_id) values ('85','6');

update MCStudents set major_id = '1' where student_id = '1';
update MCStudents set major_id = '2' where student_id = '2';
update MCStudents set major_id = '3' where student_id = '3';
update MCStudents set major_id = '4' where student_id = '4';
update MCStudents set major_id = '5' where student_id = '5';
update MCStudents set major_id = '6' where student_id = '6';
update MCStudents set major_id = '7' where student_id = '7';
update MCStudents set major_id = '8' where student_id = '8';
update MCStudents set major_id = '9' where student_id = '9';
update MCStudents set major_id = '10' where student_id = '10';
update MCStudents set major_id = '11' where student_id = '11';
update MCStudents set major_id = '12' where student_id = '12';
update MCStudents set major_id = '13' where student_id = '13';
update MCStudents set major_id = '14' where student_id = '14';
update MCStudents set major_id = '15' where student_id = '15';
update MCStudents set major_id = '16' where student_id = '16';
update MCStudents set major_id = '1' where student_id = '17';
update MCStudents set major_id = '2' where student_id = '18';
update MCStudents set major_id = '3' where student_id = '19';
update MCStudents set major_id = '4' where student_id = '20';
update MCStudents set major_id = '5' where student_id = '21';
update MCStudents set major_id = '6' where student_id = '22';
update MCStudents set major_id = '7' where student_id = '23';
update MCStudents set major_id = '8' where student_id = '24';
update MCStudents set major_id = '9' where student_id = '25';
update MCStudents set major_id = '10' where student_id = '26';
update MCStudents set major_id = '11' where student_id = '27';
update MCStudents set major_id = '12' where student_id = '28';
update MCStudents set major_id = '13' where student_id = '29';
update MCStudents set major_id = '14' where student_id = '30';
update MCStudents set major_id = '15' where student_id = '31';
update MCStudents set major_id = '16' where student_id = '32';
update MCStudents set major_id = '1' where student_id = '33';
update MCStudents set major_id = '4' where student_id = '34';
update MCStudents set major_id = '6' where student_id = '35';
update MCStudents set major_id = '8' where student_id = '36';
update MCStudents set major_id = '9' where student_id = '37';
update MCStudents set major_id = '11' where student_id = '38';
update MCStudents set major_id = '12' where student_id = '39';
update MCStudents set major_id = '13' where student_id = '40';
update MCStudents set major_id = '14' where student_id = '41';
update MCStudents set major_id = '14' where student_id = '42';
update MCStudents set major_id = '1' where student_id = '58';
update MCStudents set major_id = '11' where student_id = '75';
update MCStudents set major_id = '7' where student_id = '79';
update MCStudents set major_id = '12' where student_id = '85';

-- Query to show MCStudents table
select * from MCStudents;

-- Query to show MCCourses table
select * from MCCourses;

-- Query to show MCDepartments table
select * from MCDepartments;

-- Query to show MCMajors table
select * from MCMajors;

-- Query for all students in the Engineering Department
select concat(first_name,' ',last_name) as 'student_name', major_name from MCStudents
inner join MCMajors on MCStudents.major_id=MCMajors.major_id
inner join MCDepartments on MCMajors.department_id=MCDepartments.department_id
where department_name = 'Engineering';

-- Query for all students in a particular course
select title, term, course_year as 'year', concat(first_name,' ',last_name) as 'student_name' from MCCourses
inner join MCStudents_MCCourses on MCStudents_MCCourses.course_id=MCCourses.course_id
inner join MCStudents on MCStudents_MCCourses.student_id=MCStudents.student_id
where title = 'Biology 101: Introduction to Biology' and term = 'Fall' and course_year = '2019';

-- Query for all courses a particular student is taking
select title, term, course_year from MCCourses
inner join MCStudents_MCCourses on MCStudents_MCCourses.course_id=MCCourses.course_id
inner join MCStudents on MCStudents_MCCourses.student_id=MCStudents.student_id
where MCStudents.student_id = '58' and term = 'Fall' and course_year = '2019';
    
-- Query for all students in a particular department
select concat(first_name,' ',last_name) as 'student_name', major_name from MCStudents
inner join MCMajors on MCStudents.major_id=MCMajors.major_id
inner join MCDepartments on MCMajors.department_id=MCDepartments.department_id
where department_name = 'Economics';


