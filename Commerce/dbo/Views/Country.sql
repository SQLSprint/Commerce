CREATE VIEW [dbo].[Country]
AS
SELECT c.CountryKey,
c.Country
FROM dbo.dimCountry AS c;
