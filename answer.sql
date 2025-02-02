
-- SGB: 5 Gender Equality
-- Gender Based Violence

create database gender_equality_sdg;
use gender_equality_sdg;

-- Create SupportServices table
CREATE TABLE SupportServices (
    SupportServiceID INT PRIMARY KEY AUTO_INCREMENT,
    ServiceType VARCHAR(255),
    ServiceProvider VARCHAR(255),
    Location VARCHAR(255),
    ContactInfo VARCHAR(255)
);
-- Create Victims table
CREATE TABLE Victims (
    VictimID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Age INT,
    Gender VARCHAR(50),
    Location VARCHAR(255),
    IncidentDate DATE,
    TypeOfViolence VARCHAR(255),
    SupportServiceID INT,
    FOREIGN KEY (SupportServiceID) REFERENCES SupportServices(SupportServiceID)
);

-- Create Incidents table
CREATE TABLE Incidents (
    IncidentID INT PRIMARY KEY AUTO_INCREMENT,
    VictimID INT,
    IncidentDate DATE,
    TypeOfViolence VARCHAR(255),
    Location VARCHAR(255),
    ReportedToAuthorities VARCHAR(3),
    Outcome VARCHAR(255),
    FOREIGN KEY (VictimID) REFERENCES Victims(VictimID)
);

-- Create Authorities table
CREATE TABLE Authorities (
    AuthorityID INT PRIMARY KEY AUTO_INCREMENT,
    `Name` VARCHAR(255),
    `Role` VARCHAR(255),  
    ContactInfo VARCHAR(255)
);
-- Inserting into supportservices
INSERT INTO SupportServices (ServiceType, ServiceProvider, Location, ContactInfo)
VALUES
('Legal Assistance', 'Women’s Rights Kenya', 'Nairobi', '123-456-7890'),
('Medical Support', 'Health Aid Kenya', 'Mombasa', '234-567-8901'),
('Counseling', 'Counseling Center', 'Kisumu', '345-678-9012'),
('Shelter Services', 'Safe House Kenya', 'Eldoret', '456-789-0123'),
('Legal Assistance', 'Justice for All Kenya', 'Nakuru', '567-890-1234'),
('Medical Support', 'Kenya Health Foundation', 'Kisii', '678-901-2345'),
('Counseling', 'Healing Minds Kenya', 'Malindi', '789-012-3456'),
('Shelter Services', 'Women’s Safe Space', 'Thika', '890-123-4567'),
('Legal Assistance', 'Human Rights International', 'Nyeri', '901-234-5678'),
('Counseling', 'Peaceful Paths Kenya', 'Kitale', '012-345-6789'),
('Legal Assistance', 'Legal Empowerment Kenya', 'Nakuru', '123-567-8901'),
('Medical Support', 'MedAid Kenya', 'Kakamega', '234-678-9012'),
('Shelter Services', 'Hope Shelter', 'Narok', '345-789-0123'),
('Counseling', 'Mind Care Kenya', 'Meru', '456-890-1234'),
('Legal Assistance', 'Justice for Women', 'Bomet', '567-901-2345');

-- Inserting into victims
INSERT INTO Victims (Name, Age, Gender, Location, IncidentDate, TypeOfViolence, SupportServiceID)
VALUES
('Jane Doe', 30, 'Female', 'Nairobi', '2024-11-01', 'Physical', 1),
('Mary Smith', 25, 'Female', 'Mombasa', '2024-10-15', 'Sexual', 2),
('Susan Lee', 35, 'Female', 'Kisumu', '2024-09-20', 'Emotional', 3),
('Emily White', 28, 'Female', 'Eldoret', '2024-08-25', 'Physical', 4),
('Anna Brown', 40, 'Female', 'Nakuru', '2024-07-30', 'Sexual', 5),
('Lisa Green', 33, 'Female', 'Kisii', '2024-06-05', 'Emotional', 6),
('Jessica Black', 22, 'Female', 'Malindi', '2024-05-10', 'Physical', 7),
('Patricia Blue', 27, 'Female', 'Thika', '2024-04-17', 'Sexual', 8),
('Karen Grey', 50, 'Female', 'Nyeri', '2024-03-22', 'Emotional', 9),
('Rachel Pink', 29, 'Female', 'Kitale', '2024-02-14', 'Physical', 10),
('John Mwangi', 35, 'Male', 'Nairobi', '2024-11-05', 'Physical', 11),
('Samuel Otieno', 26, 'Male', 'Mombasa', '2024-09-25', 'Sexual', 12),
('Peter Kariuki', 40, 'Male', 'Kisumu', '2024-08-18', 'Emotional', 13),
('David Juma', 32, 'Male', 'Eldoret', '2024-07-12', 'Physical', 14),
('Michael Otieno', 28, 'Male', 'Nakuru', '2024-06-25', 'Sexual', 15);

-- Inserting sample records into Incidents table (with Kenyan towns)
INSERT INTO Incidents (VictimID, IncidentDate, TypeOfViolence, Location, ReportedToAuthorities, Outcome)
VALUES
(1, '2024-11-01', 'Physical', 'Nairobi', 'Yes', 'Under Investigation'),
(2, '2024-10-15', 'Sexual', 'Mombasa', 'Yes', 'Prosecution'),
(3, '2024-09-20', 'Emotional', 'Kisumu', 'No', 'Unresolved'),
(4, '2024-08-25', 'Physical', 'Eldoret', 'Yes', 'Support Provided'),
(5, '2024-07-30', 'Sexual', 'Nakuru', 'Yes', 'Under Investigation'),
(6, '2024-06-05', 'Emotional', 'Kisii', 'No', 'Unresolved'),
(7, '2024-05-10', 'Physical', 'Malindi', 'Yes', 'Prosecution'),
(8, '2024-04-17', 'Sexual', 'Thika', 'Yes', 'Support Provided'),
(9, '2024-03-22', 'Emotional', 'Nyeri', 'No', 'Unresolved'),
(10, '2024-02-14', 'Physical', 'Kitale', 'Yes', 'Under Investigation'),
(11, '2024-11-05', 'Physical', 'Nairobi', 'Yes', 'Under Investigation'),
(12, '2024-09-25', 'Sexual', 'Mombasa', 'Yes', 'Prosecution'),
(13, '2024-08-18', 'Emotional', 'Kisumu', 'No', 'Unresolved'),
(14, '2024-07-12', 'Physical', 'Eldoret', 'Yes', 'Support Provided'),
(15, '2024-06-25', 'Sexual', 'Nakuru', 'Yes', 'Under Investigation');

-- Inserting into authorities
INSERT INTO Authorities (Name, Role, ContactInfo)
VALUES
('Officer John Doe', 'Police Officer', '071-111-2222'),
('Detective Emily White', 'Detective', '072-222-3333'),
('Social Worker Karen Grey', 'Social Worker', '073-333-4444'),
('Officer Mark Brown', 'Police Officer', '074-444-5555'),
('Detective Jessica Black', 'Detective', '075-555-6666'),
('Officer Rachel Pink', 'Police Officer', '076-666-7777'),
('Judge Patricia Blue', 'Judge', '077-777-8888'),
('Officer Susan Lee', 'Police Officer', '078-888-9999'),
('Detective Anna Brown', 'Detective', '079-999-0000'),
('Officer Lisa Green', 'Police Officer', '080-000-1111'),
('Officer Michael Otieno', 'Police Officer', '071-222-3333'),
('Detective Samuel Otieno', 'Detective', '072-333-4444'),
('Judge Peter Kariuki', 'Judge', '073-444-5555'),
('Officer David Juma', 'Police Officer', '074-555-6666'),
('Detective John Mwangi', 'Detective', '075-666-7777');



--  total number of gender-based violence incidents reported by gender 
SELECT Gender, COUNT(*) AS total_incidents
FROM Victims
INNER JOIN Incidents ON Victims.victimID = Incidents.victimID
GROUP BY Gender;

-- most common types of gender-based violence reported
select TypeOfViolence, count(*) as total_incidences
from Incidents
group by TypeOfViolence
order by total_incidences; 

--  incidents that have been reported for different age groups   
select
    case 
        WHEN age < 18 THEN 'Under 18'
        WHEN age BETWEEN 18 AND 35 THEN '18-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '50+'
    END AS age_group,
    COUNT(*) AS total_incidents
FROM Victims
INNER JOIN Incidents ON Victims.victimID = Incidents.victimID
GROUP BY age_group;

--  gender-based violence incidents reported in each region 
select Victims.Location, Incidents.TypeOfViolence, count(*) as total_incidences
from Victims
inner join Incidents on Victims.VictimID = Incidents.VictimID
group by Victims.Location,Incidents.TypeOfViolence;

-- regions have the highest number of specific types of gender-based violence
select Victims.Location, Incidents.TypeOfViolence, count(*) as total_incidences
from Victims
inner join Incidents on Victims.VictimID = Incidents.VictimID
group by Victims.Location,Incidents.TypeOfViolence
having Incidents.TypeOfViolence = 'Sexual';
