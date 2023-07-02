-- DROP DATABASE
GO
IF EXISTS (
    SELECT name
    FROM sys.databases
    WHERE name = 'division_geografica'
)
BEGIN
    DROP DATABASE division_geografica;
END
-- CREATE DATABASE
GO
CREATE DATABASE division_geografica;
GO