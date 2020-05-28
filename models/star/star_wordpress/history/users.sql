{{ config(
    alias='wordpress_users'
)
}}
select * from {{ ref('stg_users') }} where "RECORD_CAPTURED_TIME"=(select max("RECORD_CAPTURED_TIME") from {{ ref('stg_users') }} )