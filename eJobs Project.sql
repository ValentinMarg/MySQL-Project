drop database eJobs;
create database ejobs;
use ejobs;

#creearea tabelei joburi
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

alter table joburi
modify idSalariu int;

#creearea tabelei tipul jobului
create table tipJob
(
id int not null auto_increment primary key,
tipJob varchar(20)
);
drop table tipJob;

create table domeniu
(
id int not null auto_increment primary key,
domeniuJob varchar(20)
);
drop table domeniu;

create table orase
(
id int not null auto_increment primary key,
oraseJob varchar(15)
);
drop table orase;

create table nivelStudii
(
id int not null auto_increment primary key,
nivelStudiiJob varchar(10)
);
drop table nivelStudii;

#redenumire tabel
rename table jobs to joburi;

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

#modific tipul unei coloane
alter table salariu
modify salariuJob int;

drop table salariu;


#legatura intre tabele
alter table joburi
add foreign key (idSalariu) references salariu(id); 

alter table joburi
add foreign key (idTipJob) references tipjob(id);

alter table joburi
add foreign key(idDomeniu) references domeniu(id);

alter table joburi
add foreign key(idOras) references orase(id);

alter table joburi
add foreign key(idNivelStudii) references nivelstudii(id);

alter table joburi
add foreign key(idExperienta) references experienta(id);

#inserez date in tabele

insert into joburi(numejob,idTipJob,idDomeniu,idOras,idNivelStudii,idExperienta,idSalariu) values
('inginer de calcul',1,2,2,4,1,5),
('asistent medical',4,3,4,2,3,3),
('militar',1,4,6,2,4,4);
select * from joburi;

delete from joburi
where id=2;
delete from joburi
where id=3;
delete from joburi
where id=1;
delete from joburi
where id=4;
delete from joburi
where id=5;
select *from joburi;

insert into domeniu (id,domeniuJob) values
(1,'Banca'),
(2,'Inginerie'),
(3,'Medicina'),
(4,'Militar'),
(5,'Constructii'),
(6,'IT');

#verific datele in tabel
select *from domeniu;

insert into experienta(id,experientaJob) values
(1,'fara experienta'),
(2,'entry-level'),
(3,'mid-level'),
(4,'senior-level'),
(5,'manager');

select *from experienta;

insert into nivelstudii(id,nivelStudiiJob) values
(1,'necalif.'),
(2,'calificat'),
(3,'student'),
(4,'absolvent');

select *from nivelstudii;

insert into orase(id,oraseJob) values
(1,'Arad'),
(2,'Sibiu'),
(3,'Alba'),
(4,'Timisoara'),
(5,'Targu Jiu'),
(6,'Bucuresti');

select *from orase;

insert into salariu(id,salariuJob) values
(1,3000),
(2,4500),
(3,4800),
(4,7500),
(5,2600);

update salariu
set salariuJob=3000
where id=1;
update salariu
set salariuJob=4500
where id=2;
update salariu
set salariuJob=4800
where id=3;
update salariu
set salariuJob=7500
where id=4;
update salariu
set salariuJob=2600
where id=5;
select *from salariu;

insert into tipjob(id,tipJob) values
(1,'full-time'),
(2,'part-time'),
(3,'internship'),#sters
(4,'seasonal');

select *from tipjob;

#update-ul unui tabel

select *from orase;
update orase
set oraseJob='Aiud'
where id=5;

#stergem date din tabel

delete from tipjob
where id=3;

 #Afisati toate joburile disponibile pe site.
 select *from joburi;
 
 #Afisati toate orasele disponibile pentru gasirea unui job
select oraseJob from orase;

#Afisati joburile si orasele lor
select joburi.numeJob, orase.oraseJob
from joburi inner join orase
on joburi.idOras=orase.id;

#Afisati joburile cu orasul aferent acestora si nivelul de experienta cerut
select joburi.numeJob, orase.oraseJob, experienta.experientaJob
from joburi inner join orase inner join experienta
on joburi.idOras= orase.id and joburi.idExperienta= experienta.id;


#afisati salariul cel mai mic
select min(salariuJob)from salariu;

#afisati salariul cel mai mare
select max(salariuJob)from salariu;

#Afisati media salariilor
select avg(salariuJob) from salariu;

#Afisati joburile cu salariilor lor cu right join
select joburi.numeJob, salariu.salariuJob
from joburi right join salariu
on joburi.idSalariu=salariu.id;

#Afisati joburile cu salariilor lor cu left join
select joburi.numeJob, salariu.salariuJob
from joburi left join salariu
on joburi.idSalariu=salariu.id;


