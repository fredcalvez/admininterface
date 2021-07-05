CREATE TABLE users (
	id serial PRIMARY KEY,
	username VARCHAR ( 50 ) UNIQUE NOT NULL,
	password VARCHAR ( 50 ) NOT NULL,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
	enabled BOOLEAN NOT NULL DEFAULT FALSE,
	created_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP
);

CREATE TABLE authorities
(
    user_id  serial,
    authority VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);
CREATE UNIQUE INDEX authorities_idx_1 ON authorities(user_id, authority);

CREATE TABLE customers
(
    id serial PRIMARY KEY,
    firstname  VARCHAR(50)                         NOT NULL,
    lastname   VARCHAR(255)                        NOT NULL,
    email      VARCHAR(255)                        NOT NULL UNIQUE,
    added_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

INSERT INTO customers (id, firstname, lastname, email, added_date)
VALUES (1, 'Uchiha', 'Sasuke', 'uchiha_sasuke@konohagakure.com', '2020-03-29 07:52:34'),
       (2, 'Uzumaki', 'Naruto', 'uzumaki_naruto2@konohagakure.com', '2020-03-29 08:18:59'),
       (3, 'Uzumaki', 'Naruto', 'uzumaki_naruto3@konohagakure.com', '2020-03-29 08:18:59'),
       (4, 'Uzumaki', 'Naruto', 'uzumaki_naruto4@konohagakure.com', '2020-03-29 08:18:59'),
       (5, 'Uzumaki', 'Naruto', 'uzumaki_naruto5@konohagakure.com', '2020-03-29 08:18:59'),
       (6, 'Uzumaki', 'Naruto', 'uzumaki_naruto6@konohagakure.com', '2020-03-29 08:18:59'),
       (7, 'Uzumaki', 'Naruto', 'uzumaki_naruto7@konohagakure.com', '2020-03-29 08:18:59'),
       (8, 'Uzumaki', 'Naruto', 'uzumaki_naruto8@konohagakure.com', '2020-03-29 08:18:59'),
       (9, 'Uzumaki', 'Naruto', 'uzumaki_naruto9@konohagakure.com', '2020-03-29 08:18:59'),
       (10, 'Uzumaki', 'Naruto', 'uzumaki_naruto10@konohagakure.com', '2020-03-29 08:18:59'),
       (11, 'Uzumaki', 'Naruto', 'uzumaki_naruto11@konohagakure.com', '2020-03-29 08:18:59'),
       (12, 'Uzumaki', 'Naruto', 'uzumaki_naruto12@konohagakure.com', '2020-03-29 08:18:59'),
       (13, 'Uzumaki', 'Naruto', 'uzumaki_naruto13@konohagakure.com', '2020-03-29 08:18:59'),
       (14, 'Uzumaki', 'Naruto', 'uzumaki_naruto14@konohagakure.com', '2020-03-29 08:18:59'),
       (15, 'Uzumaki', 'Naruto', 'uzumaki_naruto15@konohagakure.com', '2020-03-29 08:18:59'),
       (16, 'Uzumaki', 'Naruto', 'uzumaki_naruto16@konohagakure.com', '2020-03-29 08:18:59'),
       (17, 'Uzumaki', 'Naruto', 'uzumaki_naruto17@konohagakure.com', '2020-03-29 08:18:59'),
       (18, 'Uzumaki', 'Naruto', 'uzumaki_naruto18@konohagakure.com', '2020-03-29 08:18:59'),
       (19, 'Uzumaki', 'Naruto', 'uzumaki_naruto19@konohagakure.com', '2020-03-29 08:18:59'),
       (20, 'Uzumaki', 'Naruto', 'uzumaki_naruto20@konohagakure.com', '2020-03-29 08:18:59');
