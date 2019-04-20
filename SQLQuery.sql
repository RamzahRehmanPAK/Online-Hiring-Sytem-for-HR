create schema HR

create table HR.Person(

name varchar(50),
email varchar(50) primary key,
password varchar(50),
phone varchar (14),
address varchar(100),
typeOfUser varchar(50)  CHECK (typeOfUser = 'Applicant' OR typeOFUser = 'Manager' OR typeOFUser = 'SME' or typeOFUser = 'HRPersonnel')
)

create table HR.Applicant(

applicationStatus varchar(50),
SMERank int,
ManagerRank int,
email varchar(50) foreign key references HR.Person(email) primary key
)--cv job

create table HR.Job(

id int primary key identity(1,1),
JobTitle varchar (50),
Category varchar(50),
PayRate varchar (50),
Department varchar (50),
StartDate varchar(50),
Deadline varchar(50),
About varchar(5000),
Duties varchar (5000),
Skills varchar(5000),
EducationExperience varchar(5000),
PositionStatus varchar (5000),

)
