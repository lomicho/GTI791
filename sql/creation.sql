CREATE TABLE Member (
  ID INT NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(150) NOT NULL,
  phone CHAR(11),
  description VARCHAR (100),
  firstVisitCheck INT NOT NULL DEFAULT 1,
  PRIMARY KEY (ID)
);

CREATE TABLE Project(
  ID INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  description VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Sensor(
  ID INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(10) NOT NULL,
  unit VARCHAR(20) NOT NULL,
  max_val FLOAT NOT NULL,
  min_val FLOAT NOT NULL,
  description VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Arduino(
  ID INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(10) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Location(
  ID INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(10) NOT NULL,
  description VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Status(
  ID int NOT NULL AUTO_INCREMENT,
  name VARCHAR(10) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE DataInfo(
  ID INT NOT NULL AUTO_INCREMENT,
  data_entry FLOAT NOT NULL,
  input_date Date,
  PRIMARY KEY (ID)
);

CREATE TABLE Alert(
  ID INT NOT NULL AUTO_INCREMENT,
  data_entry VARCHAR(255) NOT NULL,
  input_date Date,
  PRIMARY KEY (ID)
);

CREATE TABLE TypeAlert(
  ID INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Family(
  ID INT NOT NULL AUTO_INCREMENT,
  unit VARCHAR(20),
  upperCriticalLimit INT NOT NULL,
  lowerCriticalLimit INT NOT NULL,
  upperBufferLimit INT NOT NULL,
  lowerBufferLimit INT NOT NULL,
  updateTime TIME,
  communicationProtocol VARCHAR(50),
  PRIMARY KEY (ID)
);

CREATE TABLE Member_Project(
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Member INT NOT NULL,
  ID_Project INT NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Project_Sensor(
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Project INT NOT NULL,
  ID_Sensor INT NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Sensor_Arduino(
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Sensor INT NOT NULL,
  ID_Arduino INT NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Sensor_Location(
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Sensor INT NOT NULL,
  ID_Location INT NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Sensor_Status(
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Sensor INT NOT NULL,
  ID_Status INT NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Sensor_DataInfo(
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Sensor INT NOT NULL,
  ID_DataInfo INT NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Sensor_Alert(
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Sensor INT NOT NULL,
  ID_Alert INT NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Alert_TypeAlert(
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Alert INT NOT NULL,
  ID_TypeAlert INT NOT NULL,
  PRIMARY KEY(ID)
);


CREATE TABLE Alert_Family(
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Alert INT NOT NULL,
  ID_Family INT NOT NULL,
  PRIMARY KEY(ID)
);