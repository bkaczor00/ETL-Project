# ETL Project
Using extract, transform and load to find the lead actors/actresses in Oscar-winning films


## Data Sources

* CSV 
Data: Academy Award Winners spanning from 1927 - 2017
Link: https://datahub.io/rufuspollock/oscars-nominees-and-winners#resource-data

* API
Data: Database which includes many search features for film and television including cast, crew, plot, and reviews among others 
Link: https://developers.themoviedb.org/3/getting-started/introduction


## Data Cleanup & Analysis

TRANSFORM
-Read data_csv.csv (Academy Award Data) into Pandas dataframe
-Selected all Academy winners
-Selected Best Actress and Best Actor categories (Actor, Actress, Actor In A Leading Role, Actress In A Leading Role)
-Extracted the first and last name for each actor/actress and appended both values to the dataframe 
-Queried through the API to find each actor/actress’s ID Number and appended it to the dataframe
-Queried through the API to find each movie title the actor/actress was in using their ID Number and created a DataFrame consisting of the actor/actress’s ID Number and Movie Title
-Created a DataFrame consisting of the actor/actress and their ID Number
-Exported all DataFrames as csv’s to be used in SQL
-Removed commas from movie title fields because they were being mistaken as delimiters in Postgres

LOAD
Relational database because of primary/foreign key relationships 
Use SQL for relational databases. 

Tables
actor_actress 
Includes year of the award win, the award category, winner = True, and actor/actress name. It’s used to store the main data that other tables can reference to if wanting to view everything at once.

actor_id 
Includes entity (Actor/Actress first and last name) and ID number (unique key)
Because some actors/actresses have won multiple years we needed to drop the duplicates in order to create a primary key.

actor_id_title
Includes the actor/actress IDs (as a foreign key) and all of the movies they’ve been in.
