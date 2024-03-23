# Database Project for eJobs

The scope of this project is to use all the SQL knowledge gained throught the Software Testing course and apply them in practice.

Application under test: eJobs.ro

Tools used: MySQL Workbenc

Database description: 

The database for the eJobs project, which is a site that can be used both for looking for a job (candidate account) and for staff recruitment (a company account) is divided into several tables (jobs, field, experience, studies , cities, salary, tipjob) each having a unique role in this database by the simple fact that it provides us with useful information about what we can find on the website/application as follows:

Jobs table

In this table we will find the name of the jobs (nameJob) as well as the name of the connection with the id of the other tables (idTipJob, idDomeniu, idOras, idNivelStuidii, idExperience, idSalariu).

Domain table

It includes both its specific id and a number of different domains.

Experience table

It contains the degree of experience that a candidate can have, starting from no experience to manager, as well as the table id.

Study level table

It includes the studies that a candidate must have, starting from unqualified to graduate, as well as the id of this table.

Cities table

It includes a number of inserted cities as well as the id of the table.

Salary table

It includes the salaries related to each job as well as the table id.

The job type table

It includes the work schedule that the job offers starting from internship to full-time, as well as the table id.
