create table customer(
	customer_id serial primary key,  
	first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	email VARCHAR(50) not null,
	loyalty_member boolean default false
);

select *
from customer; 

create table movie(
	movie_id serial primary key,
	movie_title VARCHAR(50),
	movie_genre VARCHAR(50)
);

select * 
from movie;

create table "ticket"(
	ticket_id serial primary key,
	purchase_date TIMESTAMP,
	ticket_price NUMERIC(4,2),
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	movie_id INTEGER not null, 
	foreign key(movie_id) references movie(movie_id)
);

select *
from "ticket"

--adding data 

insert into customer(
	first_name, 
	last_name,
	email,
	loyalty_member
) values (
	'Rachel',
	'Tucker',
	'racheltucker@spoofymail.com',
	false
), (
	'Laila',
	'Schnauzer',
	'lailaschnauzer@spoofymail.com',
	true
);

select *
from customer; 


insert into movie(
	movie_title,
	movie_genre
) values (
	'Miniature Schnauzers Take Over',
	'Horror'
), (
	'Tiny Bearded Ladies',
	'comedy'
);

select * 
from movie;

insert into ticket(
	purchase_date,
	ticket_price,
	customer_id, 
	movie_id
) values (
	CURRENT_TIMESTAMP,
	10.95,
	1,
	1
), (
	CURRENT_TIMESTAMP,
	8.95,
	2,
	2
);

select *
from ticket;
	










	