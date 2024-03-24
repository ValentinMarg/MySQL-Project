# Database Project for eJobs

The scope of this project is to use all the SQL knowledge gained throught the Software Testing course and apply them in practice.

Application under test: eJobs.ro

Tools used: MySQL Workbenc

Database description: 

The database for the eJobs project, which is a site that can be used both for looking for a job (candidate account) and for staff recruitment (a company account) is divided into several tables (jobs, field, experience, studies , cities, salary, tipjob) each having a unique role in this database by the simple fact that it provides us with useful information about what we can find on the website/application as follows:

In jobs table we will find the name of the jobs (nameJob) as well as the name of the connection with the id of the other tables (idTipJob, idDomeniu, idOras, idNivelStuidii, idExperience, idSalariu).

Domain table includes both its specific id and a number of different domains.

Experience table contains the degree of experience that a candidate can have, starting from no experience to manager, as well as the table id.

Study level table includes the studies that a candidate must have, starting from unqualified to graduate, as well as the id of this table.

Cities table includes a number of inserted cities as well as the id of the table.

Salary table It includes the salaries related to each job as well as the table id.

The job type table includes the work schedule that the job offers starting from internship to full-time, as well as the table id.


1.Database Schema

You can find below the database schema that was generated through Reverse Engineer and which contains all the tables and the relationships between them.
The tables are connected in the following way:

Joburi is connected with tipjob through a one to many relationship wich was implemented through joburi.idTipJob as a primary key and tipjob.id as a foreign key

Joburi is connected with domeniu through a one to many relationship wich was implemented through joburi.idDomeniu as a primary key and domeniu.id as a foreign key

Joburi is connected with experienta through a one to many relationship wich was implemented through joburi.idExperienta as a primary key and experienta.id as a foreign key

Joburi is connected with nivelstudii through a one to many relationship wich was implemented through joburi.idNivelStudii as a primary key and nivelstudii.id as a foreign key

Joburi is connected with idOrase through a one to many relationship wich was implemented through joburi.idOras as a primary key and orase.id as a foreign key

Joburi is connected with salariu through a one to many relationship wich was implemented through joburi.idSalariu as a primary key and salariu.id as a foreign key


Database Queries

DDL (Data Definition Language)

The following instructions were written in the scope of CREATING the structure of the database (CREATE INSTRUCTIONS)

create database ejobs;

create table jobs

(

id int not null auto_increment,

numeJob varchar(20) not null

idTipJob int not null,

idDomeniu int,

idOras int,

idNivelStudii int,

idExperienta int,

idSalariu int,

primary key(id)

);

create table tipJob

(

id int not null auto_increment primary key,

tipJob varchar(20)

);

create table domeniu
(
id int not null auto_increment primary key,
domeniuJob varchar(20)
);

create table orase
(
id int not null auto_increment primary key,
oraseJob varchar(15)
);

create table nivelStudii
(
id int not null auto_increment primary key,
nivelStudiiJob varchar(10)
);

create table experienta
(
id int not null auto_increment primary key,
experientaJob varchar(15)
);

create table salariu
(
id int not null auto_increment primary key,
salariuJob int
);

After the database and the tables have been created, a few ALTER instructions were written in order to update the structure of the database, as described below:

alter table joburi
modify idSalariu int;

alter table salariu
modify salariuJob int;

alter table joburi
add foreign key (idSalariu) references salariu(id); 

alter table joburi
add foreign key (idTipJob) references tipjob(id);

rename table jobs to joburi;

DML (Data Manipulation Language)

In order to be able to use the database I populated the tables with various data necessary in order to perform queries and manipulate the data. In the testing process, this necessary data is identified in the Test Design phase and created in the Test Implementation phase.

Below you can find all the insert instructions that were created in the scope of this project:

insert into joburi(numejob,idTipJob,idDomeniu,idOras,idNivelStudii,idExperienta,idSalariu) values
('inginer de calcul',1,2,2,4,1,5),
('asistent medical',4,3,4,2,3,3),
('militar',1,4,6,2,4,4);

insert into domeniu (id,domeniuJob) values
(1,'Banca'),
(2,'Inginerie'),
(3,'Medicina'),
(4,'Militar'),
(5,'Constructii'),
(6,'IT');

insert into tipjob(id,tipJob) values
(1,'full-time'),
(2,'part-time'),
(3,'internship'),#sters
(4,'seasonal');

insert into salariu(id,salariuJob) values
(1,3000),
(2,4500),
(3,4800),
(4,7500),
(5,2600);

insert into orase(id,oraseJob) values
(1,'Arad'),
(2,'Sibiu'),
(3,'Alba'),
(4,'Timisoara'),
(5,'Targu Jiu'),
(6,'Bucuresti');

insert into nivelstudii(id,nivelStudiiJob) values
(1,'necalif.'),
(2,'calificat'),
(3,'student'),
(4,'absolvent');
