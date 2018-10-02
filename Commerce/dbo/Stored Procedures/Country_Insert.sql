CREATE PROCEDURE [dbo].[Country_Insert]
AS
SET NOCOUNT ON;

SET IDENTITY_INSERT dbo.dimCountry ON;

INSERT INTO dbo.dimCountry
(
    CountryKey,
    Country
)
SELECT -1 AS CountryKey,
       'Unknown' AS Country
WHERE NOT EXISTS
(
    SELECT CountryKey FROM dbo.dimCountry WHERE CountryKey = -1
);

SET IDENTITY_INSERT dbo.dimCountry OFF;

INSERT INTO dbo.dimCountry
(
    Country
)
SELECT Country
FROM staging.Sale
EXCEPT
SELECT c.Country
FROM dbo.dimCountry AS c;
RETURN 0;
