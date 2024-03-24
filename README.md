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
numeJob varchar(20) not null,
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


