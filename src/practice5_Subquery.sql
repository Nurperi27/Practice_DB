create table hospitals(
    id_hospital serial primary key ,
    name varchar,
    address varchar
);
drop table hospitals;

create table departments(
    id_department serial primary key ,
    name_department varchar,
    hospital_id int references hospitals(id_hospital)
);
drop table departments;

-- todo Enum
create type gender as enum ('Male', 'Female');
create type specialization as enum ('DERMOTOLOGIST', 'CARDIOLOGIST', 'ALLERGIST', 'ORTOPEDIST', 'PSYCHIATRIST');
drop type gender;
drop type specialization;

create table doctors(
    id_doctors serial primary key ,
    first_name varchar,
    last_name varchar,
    experience int,
    email varchar,
    gender gender,
    specialization specialization,
    department_id int references departments(id_department)
);
drop table doctors;

create table patients(
    id_patient serial primary key ,
    firstName_patient varchar,
    lastName_patient varchar,
    phone_number varchar,
    email_patient varchar,
    gender gender,
    hospital_id int references hospitals(id_hospital),
    doctor_id int references doctors(id_doctors)
);
drop table patients;

insert into hospitals (id_hospital, name, address)
values (1, 'Red Centre', '10548 Reindahl Circle');

insert into departments (id_department, name_department, hospital_id)
values (1, 'Neurology', 1);
insert into departments (id_department, name_department, hospital_id)
values (2, 'Oncology', 1);
insert into departments (id_department, name_department, hospital_id)
values (3, 'Cardiology', 1);
insert into departments (id_department, name_department, hospital_id)
values (4, 'Emergency Health', 1);
insert into departments (id_department, name_department, hospital_id)
values (5, 'Anesthesiology', 1);
insert into departments (id_department, name_department, hospital_id)
values (6, 'Surgical', 1);
insert into departments (id_department, name_department, hospital_id)
values (7, 'Pediatric', 1);
insert into departments (id_department, name_department, hospital_id)
values (8, 'Psychical', 1);
insert into departments (id_department, name_department, hospital_id)
values (9, 'Intensive', 1);
insert into departments (id_department, name_department, hospital_id)
values (10, 'Nursery', 1);

insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (1, 'Dulcy', 'Jerson', 'djerson0@amazon.com', 1, 'Female', 'DERMOTOLOGIST', 1);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (2, 'Conrado', 'Placide', 'cplacide1@friendfeed.com', 2, 'Male', 'ALLERGIST', 2);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (3, 'Durand', 'Dreghorn', 'ddreghorn2@utexas.edu', 3, 'Male', 'CARDIOLOGIST', 6);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (4, 'Miller', 'Caddies', 'mcaddies3@barnesandnoble.com', 4, 'Male', 'DERMOTOLOGIST', 4);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (5, 'Trevor', 'Avon', 'tavon4@arizona.edu', 5, 'Male', 'ORTOPEDIST', 4);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (6, 'Marvin', 'Crix', 'mcrix5@bloomberg.com', 6, 'Male', 'CARDIOLOGIST', 5);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (7, 'Vail', 'Baily', 'vbaily6@symantec.com', 7, 'Male', 'ALLERGIST', 4);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (8, 'Yvette', 'Van Der Weedenburg', 'yvanderweedenburg7@ucsd.edu', 8, 'Female', 'PSYCHIATRIST', 5);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (9, 'Mil', 'Gwillim', 'mgwillim8@nba.com', 4, 'Female', 'ORTOPEDIST', 2);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (10, 'Angy', 'Minor', 'aminor9@auda.org.au', 10, 'Female', 'DERMOTOLOGIST', 5);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (11, 'Cassey', 'De la Barre', 'cdelabarrea@biblegateway.com', 5, 'Female', 'ALLERGIST', 7);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (12, 'Gaultiero', 'Goldie', 'ggoldieb@howstuffworks.com', 12, 'Male', 'CARDIOLOGIST', 6);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (13, 'Susannah', 'Ryce', 'srycec@foxnews.com', 15, 'Female', 'PSYCHIATRIST', 8);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (14, 'Eustacia', 'Caghy', 'ecaghyd@liveinternet.ru', 10, 'Female', 'DERMOTOLOGIST', 9);
insert into doctors (id_doctors, first_name, last_name, email, experience, gender, specialization, department_id)
values (15, 'Kariotta', 'Ferrettini', 'kferrettinie@phoca.cz', 15, 'Female', 'PSYCHIATRIST', 8);

insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (1, 'Lea', 'Witch', 'lwitch0@printfriendly.com', 7034943573, 'Female', 1, 3);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (2, 'Saraann', 'Seleway', 'sseleway1@discuz.net', 7042731563, 'Female', 1, 2);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (3, 'Thaxter', 'Bartley', 'tbartley2@reference.com', 5029541489, 'Male', 1, 3);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (4, 'Evvy', 'Mintoff', 'emintoff3@house.gov', 5047624512, 'Female', 1, 4);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (5, 'Fonsie', 'Fairholm', 'ffairholm4@dedecms.com', 5038828192, 'Male', 1, 5);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (6, 'Arda', 'Canadine', 'acanadine5@howstuffworks.com', 7069307149, 'Female', 1, 5);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (7, 'Elvira', 'Churchlow', 'echurchlow6@weebly.com', 7054337678, 'Female', 1, 3);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (8, 'Marty', 'Targetter', 'mtargetter7@vinaora.com', 5042600657, 'Male', 1, 2);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (9, 'Thaddeus', 'Scotts', 'tscotts8@chronoengine.com', 7054131954, 'Male', 1, 7);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (10, 'Freddy', 'Skilbeck', 'fskilbeck9@archive.org', 5057985117, 'Male', 1, 5);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (11, 'Kenn', 'Leif', 'kleifa@bloglovin.com', 7094159807, 'Male', 1, 6);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (12, 'Abdel', 'Lethebridge', 'alethebridgeb@wired.com', 7095010261, 'Male', 1, 8);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (13, 'Brandon', 'Jeaycock', 'bjeaycockc@booking.com', 5055207270, 'Male', 1, 4);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (14, 'Brew', 'Wloch', 'bwlochd@delicious.com', 7094319667, 'Male', 1, 2);
insert into patients (id_patient, firstName_patient, lastName_patient, email_patient, phone_number, gender, hospital_id, doctor_id)
values (15, 'Sonny', 'Labusch', 'slabusche@flickr.com', 5009884214, 'Female', 1, 8);

-- todo SubQuery
-- Queries:
-- 1. Найти всех пациентов, которые лечатся в отделении 'Surgical’
-- todo Join
select * from patients p join doctors doc on p.doctor_id = doc.id_doctors join departments dep on dep.id_department = doc.department_id where dep.name_department = 'Surgical';
--todo SubQuery
select * from patients where doctor_id in
                             (select doctors.id_doctors from doctors where department_id =
                                                                           (select departments.id_department from departments where name_department = 'Surgical'));

-- 2. Получить список всех отделений, где работает врач с именем 'John’
-- todo Join
-- todo SubQuery
select * from departments where id_department in ( select department_id from doctors where first_name = 'Miller');

-- 3. Найти всех пациентов, у которых врач имеет стаж более 10 лет
-- todo Join
select * from patients p full join doctors d on d.id_doctors = p.doctor_id where d.experience >= 10;
--todo SubQuery
select * from patients where doctor_id in (select id_doctors from doctors where experience >= 10);

-- 4. Получить список всех врачей и количество пациентов, которых они обслуживают
-- todo Join
select d.first_name, count(p.id_patient) from doctors d join patients p on p.doctor_id = d.id_doctors group by d.first_name;
-- todo SubQuery
select *, (select count(*) from patients where patients.doctor_id = doctors.id_doctors) from doctors; -- count(p.id)

-- 5. SQL(SubQuery,ENUM) 25. Получить список всех пациентов, которые не обслуживаются ни у одного врача
-- todo Join
-- todo SubQuery
select * from patients where doctor_id not in (select id_doctors from doctors);

-- 6. Получить список всех врачей, которые не обслуживают ни одного пациента
-- todo Join
-- todo SubQuery
select * from doctors where id_doctors not in (select doctor_id from patients);

-- 7. Получить список всех врачей, которые лечат пациентов старше 60 лет
-- todo Join
-- todo SubQuery

-- 8. Найти всех пациентов, которые лечатся у врача с именем 'Anna' и фамилией 'Smith’
-- todo Join
-- todo SubQuery
select * from patients where doctor_id in (select id_doctors from doctors where first_name = 'Mil' or last_name = 'Crix');

-- 9. Получить список всех врачей, работающих в отделении 'Intensive' и обслуживающих больше 3 пациентов
-- todo Join & SubQuery
select * from doctors doc join departments dep on dep.id_department = doc.department_id join (select doctor_id, count(*) from patients group by doctor_id having count(*) > 2)
 p on doc.id_doctors = p.doctor_id where dep.name_department = 'Emergency Health';

-- 10. Получить список всех отделений, в которых пациенты лечатся у врачей с опытом менее 5 лет
-- todo Join
-- todo SubQuery
select * from departments where id_department in (select p.doctor_id from patients p
    join doctors doc on doc.id_doctors = p.doctor_id where doc.experience < 5);

-- 11. Найти всех пациентов, у которых врач имеет специализацию 'DERMOTOLOGIST’
-- todo Join
-- todo SubQuery
select * from patients where doctor_id in (select id_doctors from doctors where specialization = 'DERMOTOLOGIST');

-- 12. Получить количество врачей для каждой специализации
-- todo Join
-- todo SubQuery
select specialization, count(*) from doctors group by specialization;

-- 13. Найти всех пациентов, обслуживаемых врачами с наименее распространенной специализацией
select specialization, count(*) as count_spec from doctors group by specialization;
select min(count_spec) from (select specialization, count(*) as count_spec from doctors group by specialization);
-- todo Join
-- todo SubQuery

-- 14. Найти всех пациентов, обслуживаемых врачами с специализацией ‘CARDIOLOGIST’
-- todo Join
-- todo SubQuery
select * from patients where doctor_id in (select id_doctors from doctors d where specialization = 'CARDIOLOGIST');

-- 15. Получить список всех врачей, работающих в отделении 'Neurology' и обслуживающих больше 3 пациентов
-- todo Join
-- todo SubQuery
select * from doctors where department_id in (select id_department from departments where name_department = 'Neurology') and id_doctors in (select doctor_id from patients group by doctor_id having count(*) > 3);