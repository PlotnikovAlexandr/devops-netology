CREATE DATABASE test_db;

CREATE ROLE "test-admin-user" SUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN;

CREATE ROLE "test-simple-user" NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN;

\c test_db

CREATE TABLE IF NOT EXISTS orders (

  id integer, 

  name text, 

  price integer, 

  PRIMARY KEY (id) 

);

CREATE TABLE IF NOT EXISTS clients (

  id integer PRIMARY KEY,

  lastname text,

  country text,

  zakaz integer,

  FOREIGN KEY (zakaz) REFERENCES orders (Id)

);

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.clients TO "test-simple-user";

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.orders TO "test-simple-user";
