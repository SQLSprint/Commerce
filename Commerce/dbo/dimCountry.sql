CREATE TABLE [dbo].[dimCountry]
(
	[CountryKey] INT NOT NULL CONSTRAINT PK_dimCountry PRIMARY KEY,
	Country VARCHAR(24) NOT NULL CONSTRAINT UK_dimCountry_Country UNIQUE
)
