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
insert into table1 values ('a');
insert into table1 values ('b');
insert into table1 values ('c');
Select string_agg(txt,',') from Table1 -- result a,b,c


--database  structure
--*********************************
--return database list

select datname from pg_database
select string_agg(datname,',') from pg_database --result all database name in separated string

--return tables 
select table_name from information_schema.tables
select string_agg(table_name, ',') from information_schema.tables

--return columns 
select column_name from information_schema.columns where table_name = 'tablename'
select string_agg(column_name, ',') from information_schema.columns where table_name = 'tablename'

--return tables and fields
select (table_name || ' : ' || (select string_agg(column_name, ',') from information_schema.columns _c  where _c.table_name = _t.table_name)) as txt1 from information_schema.tables _t
--sapmle result
------------------------------------
--| table1 : field1,field2,field3  |
--| table2 : field1                |
------------------------------------





