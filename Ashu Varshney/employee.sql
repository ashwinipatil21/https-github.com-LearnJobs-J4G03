CREATE DATABASE IF NOT EXISTS employee;
USE employee;

SELECT "designation";
DROP TABLE IF EXISTS designation;
CREATE TABLE designation(
    desig_id        INT(6)          AUTO_INCREMENT,
    desig_desc      VARCHAR(100)    NOT NULL,
    desig_abbr      VARCHAR(20),
    del             ENUM("*")       DEFAULT NULL,
    PRIMARY KEY(desig_id)
);
INSERT INTO designation(desig_desc,desig_abbr) VALUES
    ("Chief Executive Officer","CEO"),
    ("Chief Operating Officer","COO"),
    ("Director General","DG"),
    ("General Manager","GM"),
    ("Junior Manager","JM");


SELECT "department";
DROP TABLE IF EXISTS department;
CREATE TABLE department(
    depart_id       INT(6)          AUTO_INCREMENT,
    depart_name     VARCHAR(50)     NOT NULL,
    depart_abbr     VARCHAR(20),
    del             ENUM("*")       DEFAULT NULL,
    PRIMARY KEY(depart_id)
);
INSERT INTO department(depart_name,depart_abbr) VALUES
    ("System",      "CEO"),
    ("Marketing",   "COO"),
    ("Hotel",       "Manager"),
    ("Sales",       "AM"),
    ("Bussiness",   "MD");


SELECT "employee";
DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
    employ_id       INT(6)          AUTO_INCREMENT,
    employ_name     VARCHAR(50)     NOT NULL,
    father_name     VARCHAR(50)     NOT NULL,
    desig_id        VARCHAR(20)     NOT NULL REFERENCES designation(desig_id),
    depart_id       VARCHAR(10)     NOT NULL REFERENCES department(depart_id),
    gender          VARCHAR(1)      NOT NULL,
    dob             VARCHAR(20)     NOT NULL,
    doj             VARCHAR(20)     NOT NULL,
    PRIMARY KEY(employ_id)
);
INSERT INTO employee(employ_name,father_name,desig_id, depart_id,gender,dob,doj) VALUES
    ("Ashu",    "Mr Satish Kumar",  "dhj235",   "617876",   "M",    "01-08-2001",   "01-04-2022"),
    ("Vikas",   "Mr Ashu Kumar",    "dhj25",    "678726",   "M",    "01-09-2001",   "01-04-2022"),
    ("Ansh",    "Mr Vasu Kumar",    "dhj2335",  "678476",   "M",    "01-07-2011",   "01-04-2022"),
    ("Rishabh", "Mr Ankit Kumar",   "dhfj235",  "2667876",  "M",    "01-03-2001",   "01-04-2022"),
    ("Anurag",  "Mr Anuj Kumar",    "dhj2345",  "678776",   "M",    "02-07-2001",   "01-04-2022"),
    ("Akash",   "Mr Anurag Kumar",  "dhj2385",  "678796",   "M",    "03-07-2001",   "01-04-2022"),
    ("Veeresh", "Mr Akash Kumar",   "dhj2315",  "678766",   "M",    "11-07-2001",   "01-04-2022"),
    ("Lokesh",  "Mr Sveeresh Kumar","dhj2235",  "675876",   "M",    "21-07-2001",   "01-04-2022"),
    ("Shalini", "Mr Satish Kumar",  "dhj2335",  "678746",   "F",    "06-07-2001",   "01-04-2022"),
    ("Anshika", "Mr Satish Kumar",  "dhj2375",  "6787386",  "F",    "07-07-2001",   "01-04-2022"),
    ("Nisha",   "Mr Satish Kumar",  "dhj2535",  "678756",   "F",    "01-07-2001",   "01-04-2022"),
    ("Akrati",  "Mr Satish Kumar",  "dhj2135",  "678176",   "F",    "09-07-2001",   "01-04-2022"),
    ("Vanshika","Mr Satish Kumar",  "dhjh235",  "672876",   "F",    "01-07-2001",   "01-04-2022"),
    ("Myank",   "Mr Satish Kumar",  "dhjs235",  "678763",   "M",    "01-07-2002",   "01-04-2022"),
    ("Monu",    "Mr Satish Kumar",  "dhju235",  "674876",   "M",    "01-07-2003",   "01-04-2022"),
    ("Vinay",   "Mr Satish Kumar",  "dhjl235",  "657876",   "M",    "01-07-2005",   "01-04-2022"),
    ("Ankit",   "Mr Satish Kumar",  "dhjw235",  "667876",   "M",    "01-07-2006",   "01-04-2022"),
    ("Ashutosh","Mr Satish Kumar",  "dfhj235",  "767876",   "M",    "01-08-2001",   "01-04-2022"),
    ("Narayan", "Mr Satish Kumar",  "dhdj235",  "687876",   "M",    "24-07-2001",   "01-04-2022"),
    ("Vashu",   "Mr Satish Kumar",  "dhje235",  "678796",   "M",    "27-07-2001",   "01-04-2022");


SELECT "salary";
DROP TABLE IF EXISTS salary;
CREATE TABLE salary(
    salary_id   INT(6)          NOT NULL AUTO_INCREMENT,
    employ_id   INT(6)          NOT NULL REFERENCES employ(employ_id),
    bank_name   VARCHAR(10)     NOT NULL,
    bank_ifsc   VARCHAR(12)     NOT NULL,
    bank_ac_no  VARCHAR(20)     NOT NULL UNIQUE,
    PRIMARY KEY(salary_id)
);
INSERT INTO salary(employ_id,bank_name,bank_ifsc,bank_ac_no) VALUES
    (01,    "HDFC",     "HDFC0022F",    "0146862516279"),
    (02,    "HDFC",     "HDFC0022F",    "0134862516279"),
    (03,    "HDFC",     "HDFC0022F",    "01368662516279"),
    (04,    "HDFC",     "HDFC0022F",    "01367625162793"),
    (05,    "HDFC",     "HDFC0022F",    "013486251627329"),
    (06,    "HDFC",     "HDFC0022F",    "0136762516279"),
    (07,    "HDFC",     "HDFC0022F",    "01368762516279"),
    (08,    "HDFC",     "HDFC0022F",    "0136782516279"),
    (09,    "HDFC",     "HDFC0022F",    "01368572516279"),
    (10,    "HDFC",     "HDFC0022F",    "01368552516279"),
    (11,    "HDFC",     "HDFC0022F",    "0136882516279"),
    (12,    "HDFC",     "HDFC0022F",    "0136867516279"),
    (13,    "HDFC",     "HDFC0022F",    "01368625416279"),
    (14,    "HDFC",     "HDFC0022F",    "01368625076279"),
    (15,    "HDFC",     "HDFC0022F",    "013686257579"),
    (16,    "HDFC",     "HDFC0022F",    "013686251866779"),
    (17,    "HDFC",     "HDFC0022F",    "0136862516669"),
    (18,    "HDFC",     "HDFC0022F",    "013686251655679"),
    (19,    "HDFC",     "HDFC0022F",    "01368625162677"),
    (20,    "HDFC",     "HDFC0022F",    "0136862516266");

