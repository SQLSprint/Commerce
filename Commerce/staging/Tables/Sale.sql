CREATE TABLE [staging].[Sale] (
    [Segment]             NVARCHAR (255) NULL,
    [Country]             NVARCHAR (255) NULL,
    [Product]             NVARCHAR (255) NULL,
    [Discount Band]       NVARCHAR (255) NULL,
    [Units Sold]          FLOAT (53)     NULL,
    [Manufacturing Price] MONEY          NULL,
    [Sale Price]          MONEY          NULL,
    [Gross Sales]         MONEY          NULL,
    [Discounts]           MONEY          NULL,
    [ Sales]              MONEY          NULL,
    [COGS]                MONEY          NULL,
    [Profit]              MONEY          NULL,
    [Date]                DATETIME       NULL,
    [Month Number]        FLOAT (53)     NULL,
    [Month Name]          NVARCHAR (255) NULL,
    [Year]                NVARCHAR (255) NULL
);

