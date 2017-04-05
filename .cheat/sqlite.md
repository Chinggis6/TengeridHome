# SQLite

	create table table (id integer primary autoincrement, name text, tag text);

> autoincrement can only set on INTEGER PRIMARY KEY column

	update set name='name', tag='tag' where id=1;

	insert into table (name, tag) values ('name', 'tag'), ('name2', 'tag2');

	alter table table rename to table2;

	create table table as select * from table2;

	insert into table select * from table2;

## Comment

	create view as select * from table where column like '%string%'; --comment

## Master table containing other table names and their SQL
	select * from sqlite_master;

## Concatenate
> || operator
update table set column=column||'string' where id is 1 or id is 2; (OR id between 1 and 5)

## Export table
Dumps as a transaction form in exportable format
	.dump table
	sqlite3 db .dump

## Import table from file
	.import file table

## Show string instead of empty in NULL cells
	.nullvalue 'string'

## Read results into file
	.once '| vim -'

## DESCRIBE table
	.schema sqlite_master

## Show existing tables
	.tables

## Show all dot commands
	.help

## Show current settings
	.show

# Write RESULTS to file once
	.once

## Write RESULTS to file ALWAYS
	.output stdout (default) or file

## Execute SQL statement from file
	.read file

## Change width in column mode 
	.width col row

## Save database to file
	.save data.db

## Open database from file
	.open data.db

## Database information
	.dbinfo

## Print system command output
	.system clear
	.shell ls
