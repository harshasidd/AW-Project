CREATE MASTER KEY  ENCRYPTION BY PASSWORD ='password';

CREATE DATABASE SCOPED CREDENTIAL credenital
WITH 
    IDENTITY = 'Identity';

create external data source source_silver
with 
(
    location='https://harshadatalake.dfs.core.windows.net/silver/',
    credential=credential
)



--DROP EXTERNAL DATA SOURCE source_gold;

--DROP EXTERNAL TABLE gold.extsales;



create external data source source_gold
with 
(
    location='https://harshadatalake.dfs.core.windows.net/gold/',
    credential=cred_harsha
)
/*
CREATE EXTERNAL FILE FORMAT format_parquet
WITH (
         FORMAT_TYPE = PARQUET,
          DATA_COMPRESSION = ' org.apache.hadoop.io.compress.SnappyCodec'
    );
*/ delimite,orc, formats

CREATE EXTERNAL FILE FORMAT format_parquet
WITH (
    FORMAT_TYPE = PARQUET
);

create external table gold.extterritories
with (
location ='extterritories',
data_source=source_gold,
file_format=format_parquet
) As select * from gold.territories;

create external table gold.extsales
with (
location ='extsales',
data_source=source_gold,
file_format=format_parquet
) As select * from gold.sales;

create external table gold.extcalendar
with (
location ='extcalendar',
data_source=source_gold,
file_format=format_parquet
) As select * from gold.extcalendar;

create external table gold.productcat
with (
location ='extproductcat',
data_source=source_gold,
file_format=format_parquet
) As select * from gold.productcat;

DROP EXTERNAL TABLE gold.product;

--drop external table gold.returns;
create external table gold.returns
with (
location ='extreturns',
data_source=source_gold,
file_format=format_parquet
) As select * from gold.returns;


create external table gold.extproduct
with (
location ='extproduct',
data_source=source_gold,
file_format=format_parquet
) As select * from gold.product;

create external table gold.extproductsub
with (
location ='extproductsub',
data_source=source_gold,
file_format=format_parquet
) As select * from gold.productsub;

create external table gold.extcustomer
with (
location ='extcustomer',
data_source=source_gold,
file_format=format_parquet
) As select * from gold.customer;
