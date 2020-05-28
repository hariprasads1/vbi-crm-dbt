{{ config(
    alias='wordpress_pages'
)
}}
select * from {{ ref('stg_pages') }} where "RECORD_CAPTURED_TIME"=(select max("RECORD_CAPTURED_TIME") from {{ ref('stg_pages') }} )