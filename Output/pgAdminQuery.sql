drop table actor_id;

-- 1. Create a departments table
CREATE TABLE actor_id (
    entity varchar(30),
	"ID Number" varchar(10),
	primary key("ID Number")
);

--COPY actor_id from 'C:\Users\dbayn\Documents\GT Bootcamp\Projects\ETL-Project\Output\actor_id.csv' delimiter ',' csv header;

select * from actor_id