with 

source as (

    select * from {{ source('raw_northwind', '_order_') }}

),

renamed as (

    select
        id,
        customerid,
        employeeid,
        orderdate,
        requireddate,
        shippeddate,
        shipvia,
        freight,
        shipname,
        shipaddress,
        shipcity,
        shipregion,
        shippostalcode,
        shipcountry

    from source

)

select * from renamed
