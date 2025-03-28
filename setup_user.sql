CREATE LOGIN anthony WITH PASSWORD = '123';

CREATE USER anthony FOR LOGIN anthony;

ALTER ROLE db_datareader ADD MEMBER anthony;
ALTER ROLE db_datawriter ADD MEMBER anthony;