with transactions as (

    select * from {{ ref('stg_transactions') }}

),

units as (

    select * from {{ ref('stg_units') }}

),

dim_tenants as (
    select * from {{ ref('dim_tenants') }}
)



final as (

    select *
        

    from transactions

    left join units using (id)
    left join dim_tenants using (id)
)

select * from final