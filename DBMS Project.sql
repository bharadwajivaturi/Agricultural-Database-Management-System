CREATE DATABASE project;

USE project;

CREATE TABLE Farmer
(
F_Id INT NOT NULL,
F_FirstName VARCHAR(50) NOT NULL,
F_SurName VARCHAR(50) NOT NULL,  
F_DOB DATE NOT NULL,
F_DoorNo VARCHAR(20) NOT NULL,
F_StreetName VARCHAR(50) NOT NULL,
F_Village VARCHAR(50) NOT NULL,
F_Type VARCHAR(50) NOT NULL,
PRIMARY KEY (F_Id)
);

insert into Farmer values(7451,"Veerayya","Kasturi","1962-05-21","1/7-6F","Surya Nagar","Chepurapalli","Owner");
insert into Farmer values(1524,"Saidulu","Kadiyala","1989-08-30","2/5/9F","Ashok Nagar","Lakkavarapu Kota","Tenent");
insert into Farmer values(4963,"Subbayya","Gangavarapu","1967-02-11","91-4/A","Pransanth Nagar","Sabbavaram","Owner");
insert into Farmer values(2582,"Bharat","Ogirala","1965-06-09","1-2/5B","Chanukya Nagar","Srungavarapu Kota","Owner");
insert into Farmer values(6428,"Srinu","Vadlamani","1958-03-12","1-54/A","Prasanthi Nagar","CM Wada","Tenent");
insert into Farmer values(6745,"Swamy","Ivaturi","1973-12-11","8-4/1C","Rama Rao Colony","Pendurthi","Owner");
insert into Farmer values(2983,"Sasidhar","Manchiraju","1992-05-20","9-8-/A","Prakash Nagar","Devarapalli","Tenent");

DESC Farmer;

SELECT * FROM Farmer;

CREATE TABLE Farm
(
Farm_Id INT NOT NULL,
Farm_Area INT NOT NULL,
Farm_Village VARCHAR(50) NOT NULL,
Farm_Mandal VARCHAR(50) NOT NULL,
Farm_SoilType VARCHAR(50) NOT NULL,
F_Id INT NOT NULL,
PRIMARY KEY(Farm_Id)
);

insert into Farm values(97482,3,"Sabbavaram","Sangivalasa","Red Soil",4963);
insert into Farm values(48642,2,"Devarapalli","Mangalapalem","Black Soil",2983);
insert into Farm values(34811,4,"Pendurthi","Anakapalli","Black Soil",6745);
insert into Farm values(67418,1,"Lakkavarapu Kota","Jami","Red Soil",1524);
insert into Farm values(87522,1,"CM Wada","Gopalapatnam","Black Soil",6428);
insert into Farm values(75671,2,"Srungavarapu Kota","Kothavalasa","Red Soil",2582);
insert into Farm values(73196,1,"Chepurapalli","Veera Bhadra Puram","Black Soil",7451);

DESC Farm;

SELECT * FROM Farm;

CREATE TABLE Pesticides
(
P_Id INT NOT NULL,
P_Name VARCHAR(60) NOT NULL,
P_Manufacture DATE NOT NULL,
P_Expiry DATE NOT NULL,
P_Use VARCHAR(60) NOT NULL,
PRIMARY KEY (P_Id)
);

insert into Pesticides values(7857,"Sodium Arsenite","2020-01-11","2022-03-10","Purpose for Plants");
insert into Pesticides values(9745,"Streptomycin","2020-03-23","2022-02-20","Purpose for Bacteria");
insert into Pesticides values(1486,"Warfarin","2021-02-13","2023-05-16","Purpose for Rats");
insert into Pesticides values(6068,"Folpet","2021-07-25","2024-02-09","Purpose for Fungi");
insert into Pesticides values(9743,"Bactivec","2021-09-17","2024-03-21","Purpose for Larvae");
insert into Pesticides values(1525,"Green Beauveria","2022-05-09","2025-03-14","Purpose for Insects");

DESC Pesticides;

SELECT * FROM Pesticides;

CREATE TABLE Equipment
(
Equipment_Id INT NOT NULL,
Equipmrnt_Type VARCHAR(60) NOT NULL,
Equipment_Cost INT NOT NULL,
Equipment_Use VARCHAR(60) NOT NULL,
PRIMARY KEY (Equipment_Id)
);

insert into Equipment values(75,"Water Filter Pressure",17000,"Watering for Crops");
insert into Equipment values(41,"Turner Tool Attachment",15000,"Trimming Purpose");
insert into Equipment values(61,"Aeronex Blower",20000,"Creating Airflow");
insert into Equipment values(93,"Disc Harrow",22000,"Digging Purpose");
insert into Equipment values(18,"Plough",5000,"Sowing Purpose");
insert into Equipment values(54,"Hand Push Brush Cutter",13000,"Cutting Purpose");
insert into Equipment values(85,"Tractor",10000,"Tilling Purpose");

DESC Equipment;

SELECT * FROM Equipment;

CREATE TABLE Crops
(
C_Id INT NOT NULL,
C_Name VARCHAR(60) NOT NULL,
Duration INT NOT NULL,
Season_Month VARCHAR(60) NOT NULL,
Investment INT NOT NULL,
Profit INT NOT NULL,
Loss INT NOT NULL,
PRIMARY KEY (C_Id)
);

insert into Crops values(1,"Kharif Crops",5,"June",10000,12,8);
insert into Crops values(2,"Rabi Crops",6,"October",10000,15,9);
insert into Crops values(3,"Rice",3,"July",15000,20,5);
insert into Crops values(4,"Zaid Crops",4,"March",12000,10,7);
insert into Crops values(5,"Wheat",5,"November",16000,14,4);
insert into Crops values(6,"Cotton",7,"August",20000,19,6);
insert into Crops values(7,"Sugarcane",10,"September",25000,20,3);
insert into Crops values(8,"Corn",3,"April",30000,25,6);

DESC Crops;

SELECT * FROM Crops;

CREATE TABLE Worker
(
W_Id INT NOT NULL,
W_FirstName VARCHAR(60) NOT NULL,
W_SurName VARCHAR(60) NOT NULL,
W_DoorNo VARCHAR(20) NOT NULL,
W_StreetName VARCHAR(60) NOT NULL,
W_Village VARCHAR(60) NOT NULL,
Gender VARCHAR(10) NOT NULL,
PRIMARY KEY (W_Id)
);

insert into Worker values(205145,"Lalitha","Paila","2/05B","Sai Nagar Colony","Paderu","Female");
insert into Worker values(934381,"Nagalakshmi","Peddireddy","28/7B","Adarsh Nagar","Hanumantavaka","Female");
insert into Worker values(187563,"Sarath","Amudalapalli","18/7A","Simhagiri Colony","Simhachalam","Male");
insert into Worker values(781839,"Naresh","Morampudi","9/7-5","Ganapathi Nagar","Seethanagaram","Male");
insert into Worker values(485963,"Siddharth","Chimakurthi","28-7/A","Krishna Nagar","Gajuwaka","Male");
insert into Worker values(975823,"Jagadesh","Goshika","6/5-1A","Sramasakthi Nagar","NAD","Male");
insert into Worker values(137562,"Jayanth","Geddha","6/4-1A","Symala Nagar","Venkata Nagaram","Male");
insert into Worker values(897181,"Srinivas","Navara","8-9-4/A","Swarajya Nagar","Konthamuru","Male");
insert into Worker values(287653,"Narayana Rao","Valluru","8-75/B","Hari Hara Colony","Elamanchili","Male");
insert into Worker values(697682,"Sarada","Yalakala","3-69/A","Ramalayam Colony","Vepagunta","Female");

DESC Worker;

SELECT * FROM Worker;

CREATE TABLE Farmer_F_Contact
(
F_Id INT NOT NULL,
F_Contact VARCHAR(12) NOT NULL,
PRIMARY KEY (F_Contact, F_Id),
FOREIGN KEY (F_Id) REFERENCES Farmer(F_Id)
);

insert into Farmer_F_Contact values(7451,"7093369035");
insert into Farmer_F_Contact values(1524,"9347429568");
insert into Farmer_F_Contact values(4963,"9059144881");
insert into Farmer_F_Contact values(2582,"9348101001");
insert into Farmer_F_Contact values(6428,"9110312523");
insert into Farmer_F_Contact values(6745,"9492590911");
insert into Farmer_F_Contact values(2983,"9542765317");
insert into Farmer_F_Contact values(6745,"6303341833");
insert into Farmer_F_Contact values(6745,"8332822678");
insert into Farmer_F_Contact values(2582,"7396661751");
insert into Farmer_F_Contact values(2983,"9705563225");

DESC Farmer_F_Contact;

SELECT * FROM Farmer_F_Contact;

CREATE TABLE Worker_W_Contact
(
W_Id INT NOT NULL,
W_Contact VARCHAR(12) NOT NULL,
PRIMARY KEY (W_Contact, W_Id),
FOREIGN KEY (W_Id) REFERENCES Worker(W_Id)
);

insert into Worker_W_Contact values(205145,"7680086559");
insert into Worker_W_Contact values(934381,"9502531452");
insert into Worker_W_Contact values(187563,"7989712049");
insert into Worker_W_Contact values(781839,"8333870892");
insert into Worker_W_Contact values(485963,"9182841215");
insert into Worker_W_Contact values(975823,"7901077733");
insert into Worker_W_Contact values(137562,"8977703366");
insert into Worker_W_Contact values(897181,"9884560538");
insert into Worker_W_Contact values(287653,"8555079214");
insert into Worker_W_Contact values(697682,"9121524825");

DESC Worker_W_Contact;

SELECT * FROM Worker_W_Contact;

CREATE TABLE Sprays
(
C_Id INT NOT NULL,
P_Id INT NOT NULL,
PRIMARY KEY (C_Id, P_Id),
FOREIGN KEY (C_Id) REFERENCES Crops(C_Id),
FOREIGN KEY (P_Id) REFERENCES Pesticides(P_Id)
);

insert into Sprays values(3,7857);
insert into Sprays values(5,1525);
insert into Sprays values(2,9745);
insert into Sprays values(6,6068);
insert into Sprays values(6,1486);
insert into Sprays values(7,1486);
insert into Sprays values(8,9745);
insert into Sprays values(4,6068);
insert into Sprays values(8,9743);
insert into Sprays values(7,1525);
insert into Sprays values(5,7857);
insert into Sprays values(1,6068);
insert into Sprays values(3,1486);
insert into Sprays values(2,9743);
insert into Sprays values(6,9745);

DESC Sprays;

SELECT * FROM Sprays;