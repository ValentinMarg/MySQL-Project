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

![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/369846a9-b47c-4493-95ca-40fa88c4b7c2)                ![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/03cc30ac-e06a-40aa-a444-8a7ec0bcb5fa)
![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/634d93cb-b72f-4b59-835c-4def4ab22768)                ![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/699ca326-e559-41f2-bf65-65b1f5ed0a4a)

After the database and the tables have been created, a few ALTER instructions were written in order to update the structure of the database, as described below:

![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/500df68c-c96a-4c07-8f95-811e1f3054cd)                ![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/e572e321-9ef2-473e-ad56-1e56bfe1ce12)

DML (Data Manipulation Language)

In order to be able to use the database I populated the tables with various data necessary in order to perform queries and manipulate the data. In the testing process, this necessary data is identified in the Test Design phase and created in the Test Implementation phase.

Below you can find all the insert instructions that were created in the scope of this project:
![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/b1838ed0-280f-45b8-ac7b-2c3a94f33ec8)                ![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/45d7d7c1-72c3-4ade-8bd8-6d7e7306f700)

After the insert, in order to prepare the data to be better suited for the testing process, I updated some data in the following way:

![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/00df5704-be67-4680-9138-9e7788f0ee71)                ![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/29266789-2614-459a-af9e-e4f374e705a4)

DQL (Data Query Language)

After the testing process, I deleted the data that was no longer relevant in order to preserve the database clean:

![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/ebf66f81-0f82-4757-887a-64629281a5c4)                ![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/9dc1ec3e-3854-44bb-92e9-f528ed16db7a)

In order to simulate various scenarios that might happen in real life I created the following queries that would cover multiple potential real-life situations:

![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/e9afcbaf-ffa6-4c3e-b81e-f9f8ce46f914)                 ![image](https://github.com/ValentinMarg/MySQL-Project/assets/162619749/74b6ba1d-0d4a-413d-ad1f-126054c206b9)

Conclusion

  In this project, I have created tables that hold the necessary information for a database and that contain both IDs to identify the tables (city.id, salary.id) and their own information content (cities=Sibiu, Bucharest).
I also created links between them with the help of primary and secondary keys that showed me their role in the communication between the tables.
Following the creation of this database, I was able to observe and learn how the tables work between them and how the information is connected to each other.



