DROP DATABASE dejavu;
CREATE DATABASE dejavu;

CREATE TABLE dejavu.status (
id int NOT NULL AUTO_INCREMENT,
name varchar(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE dejavu.user (
  id int NOT NULL AUTO_INCREMENT,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  birthday date NOT NULL,
  status int NOT NULL,
  created date NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (status) REFERENCES status(id)
);

CREATE TABLE dejavu.advertiser (
  id int NOT NULL AUTO_INCREMENT,
  userID int NOT NULL,
  phone varchar(255) NOT NULL,
  company varchar(255) NOT NULL,
  address varchar(255) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (userID) REFERENCES user(id)
);

CREATE TABLE dejavu.ad (
id int NOT NULL AUTO_INCREMENT,
created date NOT NULL,
start date NOT NULL,
end date NOT NULL,
cost double NOT NULL,
views int NOT NULL,
clicks int NOT NULL,
status int NOT NULL,
PRIMARY KEY (id),
  FOREIGN KEY (status) REFERENCES status(id)
);

CREATE TABLE dejavu.item (
id int NOT NULL AUTO_INCREMENT,
image varchar(255) NOT NULL,
name varchar(255) NOT NULL,
started date,
description varchar(20000) NOT NULL,
creator varchar (255),
location varchar (500),
status int NOT NULL,
link varchar (300),
created date NOT NULL,
itemOwner int,
PRIMARY KEY (id),
  FOREIGN KEY (status) REFERENCES status(id)
);

CREATE TABLE dejavu.category (
id int NOT NULL AUTO_INCREMENT,
name varchar (255),
PRIMARY KEY (id)
);

CREATE TABLE dejavu.tag (
id int NOT NULL AUTO_INCREMENT,
name varchar (255),
PRIMARY KEY (id)
);

CREATE TABLE dejavu.userSettings (
userID int NOT NULL,
visibleProfile int NOT NULL,
  FOREIGN KEY (userID) REFERENCES user(id)
);

CREATE TABLE dejavu.likes (
userID int NOT NULL,
itemID int NOT NULL,
likeDate int NOT NULL,
  FOREIGN KEY (userID) REFERENCES user(id),
  FOREIGN KEY (itemID) REFERENCES item(id)
);

CREATE TABLE dejavu.itemCategory (
categoryID int NOT NULL,
itemID int NOT NULL,
  FOREIGN KEY (categoryID) REFERENCES category(id),
  FOREIGN KEY (itemID) REFERENCES item(id)
);

CREATE TABLE dejavu.subCategory (
categoryID int NOT NULL,
subCategoryID int NOT NULL,
  FOREIGN KEY (categoryID) REFERENCES category(id),
  FOREIGN KEY (subCategoryID) REFERENCES category(id)
);

CREATE TABLE dejavu.itemTag (
itemID int NOT NULL,
tagID int NOT NULL,
status int NOT NULL,
created date NOT NULL,
addedBy int NOT NULL,
  FOREIGN KEY (itemID) REFERENCES item(id),
  FOREIGN KEY (tagID) REFERENCES tag(id),
  FOREIGN KEY (status) REFERENCES status(id)
);

CREATE TABLE dejavu.advertiserAd (
advertiserID int NOT NULL,
adID int NOT NULL,
  FOREIGN KEY (advertiserID) REFERENCES advertiser(id),
  FOREIGN KEY (adID) REFERENCES ad(id)
);

CREATE TABLE dejavu.adItem (
adID int NOT NULL,
itemID int NOT NULL,
status int NOT NULL,
  FOREIGN KEY (adID) REFERENCES ad(id),
  FOREIGN KEY (itemID) REFERENCES item(id),
  FOREIGN KEY (status) REFERENCES status(id)
);

CREATE TABLE dejavu.followUser (
userID int NOT NULL,
followUser int NOT NULL,
status int NOT NULL,
  FOREIGN KEY (userID) REFERENCES user(id),
  FOREIGN KEY (followUser) REFERENCES user(id),
  FOREIGN KEY (status) REFERENCES status(id)
);

CREATE TABLE dejavu.tagCategory (
tagID int NOT NULL,
categoryID int NOT NULL,
  FOREIGN KEY (tagID) REFERENCES tag(id),
  FOREIGN KEY (categoryID) REFERENCES category(id)
);

CREATE TABLE dejavu.itemMatches (
userID int NOT NULL,
itemID int NOT NULL,
matchDate date NOT NULL,
  FOREIGN KEY (userID) REFERENCES user(id),
  FOREIGN KEY (itemID) REFERENCES item(id)
);

CREATE TABLE dejavu.userMatches (
userID int NOT NULL,
itemID int NOT NULL,
matchDate date NOT NULL,
  FOREIGN KEY (userID) REFERENCES user(id),
  FOREIGN KEY (itemID) REFERENCES item(id)
);

CREATE TABLE dejavu.event (
id int NOT NULL AUTO_INCREMENT,
name varchar(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE dejavu.itemEvent (
itemID int NOT NULL,
eventID int NOT NULL,
url varchar(255) NOT NULL,
  FOREIGN KEY (itemID) REFERENCES item(id),
  FOREIGN KEY (eventID) REFERENCES event(id)
);
