--Postgres Sandbox Admin test
--https://www.katacoda.com/enterprisedb/scenarios/pgadmin-sandbox

--Postgres Sql Injections 


--String Operation 
--***********************************
--String join 
Select 'A'  || 'B' --Result AB

--Check Null String or first not null string
--
Select COALESCE(null,'0') ---result if (username == null) '0' else "text of username"

--******
-- multiple string join
create table table1(txt text);
insert table1 values ('a');
insert table1 values ('b');
insert table1 values ('c');
Select string_agg(txt,',') from Table1 -- result a,b,c

--database  staructs
--*********************************
--return database list

select datname from pg_database
select string_agg(cast(COALESCE(datname,'')  as varchar) , ',') from pg_database --result all database name in separated string

--*****






