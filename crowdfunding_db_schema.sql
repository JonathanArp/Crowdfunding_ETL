/*CREATE DATABASE crowdfunding_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;*/

CREATE TABLE Category (
	category_id VARCHAR,
	category VARCHAR,
	PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
	subcategory_id VARCHAR,
	subcategory VARCHAR,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE Contacts (
	contact_id INT,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR,
	PRIMARY KEY (contact_id)
);

CREATE TABLE Campaign (
	cf_id INT,
	contact_id INT,
	company_name VARCHAR,
	description VARCHAR,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR,
	subcategory_id VARCHAR,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES Contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES Category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory (subcategory_id)
);

SELECT * FROM Category;

SELECT * FROM Subcategory;

SELECT * FROM Contacts;

SELECT * FROM Campaign;
