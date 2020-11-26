CREATE DATABASE bedu_test;

-- esto evita tener errores y solo regresa un mensaje de advertencia
-- CREATE DATABASE IF NOT EXISTS bedu_test; recomendable
-- DROP DATABASE IF EXISTS bedu_test; 

USE bedu_test;

CREATE TABLE IF NOT EXISTS users (
	id int PRIMARY KEY, 
    genero char(1),
    edad int,
    ocupacion int,
    cp varchar(20)
);

-- Reto 1; sesión 7

CREATE TABLE IF NOT EXISTS movies (
	id int PRIMARY KEY, 
    title varchar(120),
    genre varchar(120)
);

CREATE TABLE IF NOT EXISTS ratings (
	UserID int,
    MovieID int,
    Rating int,
    time_stamp bigint
);

select * from movies;