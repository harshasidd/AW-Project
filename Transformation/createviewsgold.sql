-------------------------
--- Territories
-------------------------
create view gold.territories
AS
select * from 
OPENROWSET(
    BULK 'https://harshadatalake.dfs.core.windows.net/silver/Territories/',
    FORMAT='parquet'
)as territories
;
-------------------------
--- calendar
-------------------------
create view gold.calendar
AS
select * from 
OPENROWSET(
    BULK 'https://harshadatalake.dfs.core.windows.net/silver/calendar/',
    FORMAT='parquet'
)as calendar
;

------------------------
--- customers
-------------------------
create view gold.customers
AS
select * from 
OPENROWSET(
    BULK 'https://harshadatalake.dfs.core.windows.net/silver/customers/',
    FORMAT='parquet'
)as customers
;


------------------------
--- product
-------------------------
create view gold.product
AS
select * from 
OPENROWSET(
    BULK 'https://harshadatalake.dfs.core.windows.net/silver/product/',
    FORMAT='parquet'
)as product
;

------------------------
--- productcat
-------------------------
create view gold.productcat
AS
select * from 
OPENROWSET(
    BULK 'https://harshadatalake.dfs.core.windows.net/silver/productcat/',
    FORMAT='parquet'
)as productcat
;

------------------------
--- productsub
-------------------------
create view gold.productsub
AS
select * from 
OPENROWSET(
    BULK 'https://harshadatalake.dfs.core.windows.net/silver/productsub/',
    FORMAT='parquet'
)as productsub
;

------------------------
--- returns
-------------------------
create view gold.returns
AS
select * from 
OPENROWSET(
    BULK 'https://harshadatalake.dfs.core.windows.net/silver/returns/',
    FORMAT='parquet'
)as returns
;

------------------------
--- sales
-------------------------
create view gold.sales
AS
select * from 
OPENROWSET(
    BULK 'https://harshadatalake.dfs.core.windows.net/silver/sales/',
    FORMAT='parquet'
)as sales
;
