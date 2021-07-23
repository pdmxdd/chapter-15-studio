-- STUDIO 15 SETUP --

-- this file creates the two tables you need and insert's in all the data you need to start the studio.

CREATE TABLE directors (
   director_id INTEGER PRIMARY KEY AUTO_INCREMENT,
   first_name VARCHAR(40),
   last_name VARCHAR(40),
   country VARCHAR(80)
);

CREATE TABLE movies (
   movie_id INTEGER PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(120),
   year_released INTEGER,
   director_id INTEGER,
   FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

INSERT INTO directors (first_name, last_name, country)
VALUES ("John", "Lasseter", "USA");

INSERT INTO directors (first_name, last_name, country)
VALUES ("Brad", "Bird", "USA");

INSERT INTO directors (first_name, last_name, country)
VALUES ("Jodie", "Foster", "USA"); 

INSERT INTO directors (first_name, last_name, country)
VALUES ("Ang", "Lee", "Taiwan"); 

insert into directors (first_name, last_name, country)
values ("Alfonso", "Cuarón", "Mexico");

insert into directors (first_name, last_name, country)
values ("Guillermo", "del Toro", "Mexico");

insert into directors (first_name, last_name, country)
values ("Peter", "Jackson", "New Zealand");

insert into directors (first_name, last_name, country)
values ("Ava", "DuVernay", "USA");

insert into directors (first_name, last_name, country)
values ("Patty", "Jenkins", "USA");

insert into directors (first_name, last_name, country)
values ("Haifaa", "al-Mansour", "Saudi Arabia");

INSERT INTO movies (title, year_released, director_id)
VALUES ("Toy Story", 1995, 1);

INSERT INTO movies (title, year_released, director_id)
VALUES ("The Incredibles", 2004, 2);

INSERT INTO movies (title, year_released, director_id)
VALUES ("Money Monster", 2016, 3);

INSERT INTO movies (title, year_released, director_id)
VALUES ("A Bug's Life", 1998, 1);

INSERT INTO movies (title, year_released, director_id)
VALUES ("Crouching Tiger, Hidden Dragon", 2000, 4);

INSERT INTO movies (title, year_released, director_id)
VALUES ("Harry Potter and the Prisoner of Azkaban", 2004, 5);

INSERT INTO movies (title, year_released, director_id)
VALUES ("Little Man Tate", 1991, 3);

INSERT INTO movies (title, year_released, director_id)
VALUES ("Roma", 2018, 5);

INSERT INTO movies (title, year_released, director_id)
VALUES ("The Perfect Candidate", 2019, 10);

INSERT INTO movies (title, year_released, director_id)
VALUES ("The Shape of Water", 2017, 6);

INSERT INTO movies (title, year_released, director_id)
VALUES ("The Lord of the Rings: The Return of the King", 2003, 7);

INSERT INTO movies (title, year_released, director_id)
VALUES ("A Wrinke in Time", 2018, 8);

INSERT INTO movies (title, year_released, director_id)
VALUES ("Wonder Woman", 2017, 9);

INSERT INTO movies (title, year_released, director_id)
VALUES ("Ratatouille", 2007, 2);

INSERT INTO movies (title, year_released, director_id)
VALUES ("Mary Shelley", 2017, 10);

INSERT INTO movies (title, year_released, director_id)
VALUES ("Selma", 2014, 8);