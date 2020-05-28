{{ config(
    alias='wordpress_categories'
)
}}
select * from {{ ref('stg_categories') }} where "RECORD_CAPTURED_TIME"=(select max("RECORD_CAPTURED_TIME") from {{ ref('stg_categories') }} )