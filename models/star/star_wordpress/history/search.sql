{{ config(
    alias='wordpress_search'
)
}}
select * from {{ ref('stg_search') }} where "RECORD_CAPTURED_TIME"=(select max("RECORD_CAPTURED_TIME") from {{ ref('stg_search') }} )