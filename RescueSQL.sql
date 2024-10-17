create database RescueManagementSystem;
use RescueManagementSystem;

create table Incident
(
	IncidentID varchar (10) Primary Key,
    IncidentType varchar (10),
    IncidentLocation varchar (25),
    IncidentDescription char (15),
    IncidentDate Date
);

create table Personnel
(
	PersonnelID varchar (10) Primary Key,
    PersonnelName char (10),
    PersonnelContact varchar (15),
    PersonnelDesignation char (10),
    PersonnelShift char (10)
);

create table Vehicle
(
	VehicleID varchar (10) Primary key,
    VehicleType char (10),
    VehicleModel int (4),
    VehicleAvailability char (10)
);

create table Equipment
(
	EquipmentID varchar (10) Primary Key,
    EquipmentType varchar (10), 
    EquipmentQuantity int (5),
    EquipmentCondition char (20),
    EquipmentDescription char (15)
);

create table Victim
(
	VictimCNIC varchar (15) Primary key,
    VictimName char (10),
    VictimAge int (2)
);

create table Task
(
	TaskID varchar (10) Primary Key,
    TaskType varchar (10),
    TaskCompletion char (15)
);

create table MedicalRecord
(
	RecordID varchar (10) Primary Key,
    RecordTreatment char (10),
    RecordDiagnosis char (10)
);

insert into Incident(IncidentID ,IncidentType ,IncidentLocation ,IncidentDescription ,IncidentDate)
values ('A1' ,'Type1' ,'Street#5 ParagonCity' ,'Sucide Attempt' ,'03-05-24'),
	   ('A2' ,'Type3' ,'Canal Road' ,'Bike Accident' ,'05-05-24'),
       ('A3' ,'Type2' ,'JoharTown' ,'Gun shots' ,'07-05-24'),
       ('A4' ,'Type5' ,'Saddar Cantt' ,'Car Accident' ,'09-05-24'),
       ('A5' ,'Type4' ,'GarhiShahu' ,'Fire' ,'11-05-24');
       
insert into Personnel(PersonnelID ,PersonnelName ,PersonnelContact ,PersonnelDesignation ,PersonnelShift)
values ('P1' ,'Mubeen' ,'+92 1234567890' ,'HOD' ,'Day'),
	   ('P2' ,'Zunorain' ,'+92 0987654321' ,'Doctor' ,'Day'),
       ('P3' ,'Areeba' ,'+92 1357924680' ,'Doctor' ,'Night'),
       ('P4' ,'Jahanzaib' ,'+92 2143658709' ,'Driver' ,'Night'),
       ('P5' ,'Zaryaab' ,'+92 1234509876' ,'Driver' ,'Day');
       
insert into Vehicle(VehicleID ,VehicleType ,VehicleModel ,VehicleAvailability)
values ('V1' ,'Sudan' ,2014 ,'Yes'),
       ('V2' ,'Hashback' ,2022 ,'Yes'),
       ('V3' ,'Vagon' ,2010 ,'Yes'),
       ('V4' ,'Bus' ,2016 ,'No'),
       ('V5' ,'Bike' ,2023 ,'Yes');
       
insert into Equipment(EquipmentID ,EquipmentType ,EquipmentQuantity ,EquipmentCondition ,EquipmentDescription)
values ('E1' ,'Type1' ,8 ,'Good' ,'Imported'),
	   ('E2' ,'Type3' ,15 ,'Best' ,'Imported'),
       ('E3' ,'Type2' ,31 ,'UpgraRequired' ,'Local'),
       ('E4' ,'Type5' ,9 ,'Acceptable' ,'Local'),
       ('E5' ,'Type4' ,45 ,'Good' ,'Imported');
       
insert into Victim(VictimCNIC ,VictimName ,VictimAge)
values ('11223-344556-67','Zain',19),
	   ('99887-766554-43','Zayn',20),
       ('12345-123456-12','Zaini',21),
	   ('13579-246801-23','Zayni',22),
       ('19283-746352-41','Zaynimani',23);
       
 insert into Task(TaskID ,TaskType ,TaskCompletion)
 values ('T1','Type1','Completed'),
	    ('T2','Type2','NotCompleted'),
        ('T3','Type3','Reaching'),
	    ('T4','Type4','Completed'),
        ('T5','Type5','Reached');
        
insert into MedicalRecord(RecordID ,RecordTreatment ,RecordDiagnosis)
values ('R1','Done',Null),
	   ('R2','Done',Null),
       ('R3','Done',Null),
       ('R4','Done',Null),
       ('R5','Done',Null);

update Incident
set IncidentID = 'I1'
where IncidentID = 'A1';

update Incident
set IncidentID = 'I2'
where IncidentID = 'A2';

update Incident
set IncidentID = 'I3'
where IncidentID = 'A3';

update Incident
set IncidentID = 'I4'
where IncidentID = 'A4';

update Incident
set IncidentID = 'I5'
where IncidentID = 'A5';

update Equipment
set EquipmentCondition = 'Update Required'
where EquipmentID = 'E3';

alter table MedicalRecord
drop column RecordDIagnosis;

alter table MedicalRecord
add column Payment char (15);

update MedicalRecord
set Payment = 'Successful';

update MedicalRecord
set Payment = 'Pending'
where RecordID = 'R3';

alter table MedicalRecord
add column VictimCNIC varchar (15);

alter table MedicalRecord
add Foreign Key (VictimCNIC)
references Victim (VictimCNIC);

update MedicalRecord
set VictimCNIC = '11223-344556-67'
where RecordID = 'R1';

update MedicalRecord
set VictimCNIC = '99887-766554-43'
where RecordID = 'R2';

update MedicalRecord
set VictimCNIC = '12345-123456-12'
where RecordID = 'R3';

update MedicalRecord
set VictimCNIC = '13579-246801-23'
where RecordID = 'R4';

update MedicalRecord
set VictimCNIC = '19283-746352-41'
where RecordID = 'R5';

desc Incident;
select * from Incident;
desc Personnel;
select * from Personnel;
desc Vehicle;
select * from Vehicle;
desc Equipment;
select * from Equipment;
desc Victim;
select * from Victim;
desc Task;
select * from Task;
desc MedicalRecord;
select * from MedicalRecord;

select IncidentID,IncidentLocation from Incident;
select TaskID,TaskCompletion from Task
where TaskCompletion in ('Completed','Reached','Reaching');
select VictimCNIC,VictimAge from Victim
where VictimAge between 20 and 23;
select * from Victim
where VictimName like '%i';
select * from Vehicle
where VehicleAvailability = 'Yes';
select distinct (EquipmentCondition) from Equipment;
select * from Victim
where VictimName like '--y%';

-- SQL JOINS:
-- INNER JOIN:
use RescueManagementSystem;

SELECT I.IncidentID,I.IncidentType,P.PersonnelID,P.PersonnelName
FROM Incident AS I
INNER JOIN Personnel AS P ON I.IncidentID = P.PersonnelID;

SELECT V.VehicleID, V.VehicleType, E.EquipmentID, E.EquipmentType
FROM Vehicle V
INNER JOIN Equipment E ON V.VehicleID = E.EquipmentID;

SELECT V.VictimCNIC, V.VictimName, M.RecordID
FROM Victim V
INNER JOIN MedicalRecord M ON V.VictimCNIC = M.RecordID;

SELECT T.TaskID, T.TaskType, I.IncidentID, I.IncidentDescription
FROM Task T
INNER JOIN Incident I ON T.TaskID = I.IncidentID;

SELECT P.PersonnelID, P.PersonnelName, V.VehicleID, V.VehicleModel
FROM Personnel P
INNER JOIN Vehicle V ON P.PersonnelID = V.VehicleID;

-- LEFT JOIN:
SELECT I.IncidentID, I.IncidentType, P.PersonnelID, P.PersonnelName
FROM Incident I
LEFT JOIN Personnel P ON I.IncidentID = P.PersonnelID;

SELECT V.VehicleID, V.VehicleType, E.EquipmentID, E.EquipmentType
FROM Vehicle V
LEFT JOIN Equipment E ON V.VehicleID = E.EquipmentID;

SELECT V.VictimCNIC, V.VictimName, M.RecordID
FROM Victim V
LEFT JOIN MedicalRecord M ON V.VictimCNIC = M.RecordID;

SELECT T.TaskID, T.TaskType, I.IncidentID, I.IncidentDescription
FROM Task T
LEFT JOIN Incident I ON T.TaskID = I.IncidentID;

SELECT P.PersonnelID, P.PersonnelName, V.VehicleID, V.VehicleModel
FROM Personnel P
LEFT JOIN Vehicle V ON P.PersonnelID = V.VehicleID;

-- RIGHT JOIN:
SELECT I.IncidentID, I.IncidentType, P.PersonnelID, P.PersonnelName
FROM Incident I
RIGHT JOIN Personnel P ON I.IncidentID = P.PersonnelID;

SELECT V.VehicleID, V.VehicleType, E.EquipmentID, E.EquipmentType
FROM Vehicle V
RIGHT JOIN Equipment E ON V.VehicleID = E.EquipmentID;

SELECT V.VictimCNIC, V.VictimName, M.RecordID
FROM Victim V
RIGHT JOIN MedicalRecord M ON V.VictimCNIC = M.RecordID;

SELECT T.TaskID, T.TaskType, I.IncidentID, I.IncidentDescription
FROM Task T
RIGHT JOIN Incident I ON T.TaskID = I.IncidentID;

SELECT P.PersonnelID, P.PersonnelName, V.VehicleID, V.VehicleModel
FROM Personnel P
RIGHT JOIN Vehicle V ON P.PersonnelID = V.VehicleID;

-- FULL OUTER JOIN:
SELECT I.IncidentID, I.IncidentType, P.PersonnelID, P.PersonnelName
FROM Incident I
LEFT JOIN Personnel P ON I.IncidentID = P.PersonnelID
UNION
SELECT I.IncidentID, I.IncidentType, P.PersonnelID, P.PersonnelName
FROM Incident I
RIGHT JOIN Personnel P ON I.IncidentID = P.PersonnelID;

SELECT V.VehicleID, V.VehicleType, E.EquipmentID, E.EquipmentType
FROM Vehicle V
LEFT JOIN Equipment E ON V.VehicleID = E.EquipmentID
UNION
SELECT V.VehicleID, V.VehicleType, E.EquipmentID, E.EquipmentType
FROM Vehicle V
RIGHT JOIN Equipment E ON V.VehicleID = E.EquipmentID;

SELECT V.VictimCNIC, V.VictimName, M.RecordID
FROM Victim V
LEFT JOIN MedicalRecord M ON V.VictimCNIC = M.RecordID
UNION
SELECT V.VictimCNIC, V.VictimName, M.RecordID
FROM Victim V
RIGHT JOIN MedicalRecord M ON V.VictimCNIC = M.RecordID;

SELECT T.TaskID, T.TaskType, I.IncidentID, I.IncidentDescription
FROM Task T
LEFT JOIN Incident I ON T.TaskID = I.IncidentID
UNION
SELECT T.TaskID, T.TaskType, I.IncidentID, I.IncidentDescription
FROM Task T
RIGHT JOIN Incident I ON T.TaskID = I.IncidentID;

SELECT P.PersonnelID, P.PersonnelName, V.VehicleID, V.VehicleModel
FROM Personnel P
LEFT JOIN Vehicle V ON P.PersonnelID = V.VehicleID
UNION
SELECT P.PersonnelID, P.PersonnelName, V.VehicleID, V.VehicleModel
FROM Personnel P
RIGHT JOIN Vehicle V ON P.PersonnelID = V.VehicleID;

-- CROSS JOIN:
SELECT I.IncidentID, I.IncidentType, P.PersonnelID, P.PersonnelName
FROM Incident I
CROSS JOIN Personnel P;

SELECT V.VehicleID, V.VehicleType, E.EquipmentID, E.EquipmentType
FROM Vehicle V
CROSS JOIN Equipment E;

SELECT V.VictimCNIC, V.VictimName, M.RecordID
FROM Victim V
CROSS JOIN MedicalRecord M;

SELECT T.TaskID, T.TaskType, I.IncidentID, I.IncidentDescription
FROM Task T
CROSS JOIN Incident I;

SELECT P.PersonnelID, P.PersonnelName, V.VehicleID, V.VehicleModel
FROM Personnel P
CROSS JOIN Vehicle V;