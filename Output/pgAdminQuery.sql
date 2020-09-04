--drop table actor_id_df;

--drop table actor_actress_df;

--drop table actor_id_title;



CREATE TABLE actor_id_df(
			entity VARCHAR (255),
			"ID Number" INT
);

CREATE TABLE actor_actress_df(
			year VARCHAR(10),
			category VARCHAR(50),
			winner BOOLEAN,
			entity VARCHAR(255),
			"First Name" VARCHAR (50),
			"Last Name" VARCHAR (50),
			"ID Number" INT
);

CREATE TABLE actor_id_title(
	"Actor ID" INT,
	"Movie Title" VARCHAR(255)
);

select * from actor_id_title;

select * from actor_id_df;

select * from actor_actress_df;

select entity, "Movie Title"
from actor_id_df
join actor_id_title on actor_id_df."ID Number"=actor_id_title."Actor ID";

