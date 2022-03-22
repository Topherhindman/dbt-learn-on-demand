with tenants as (

    select * from {{ ref('stg_tenants') }}

),

contact_infos as (

    select * from {{ ref('stg_contact_infos') }}

),



final as (

    select *
        

    from tenants

    left join contact_infos on tenants.contact_info_id = contact_infos.id
)

select * from final