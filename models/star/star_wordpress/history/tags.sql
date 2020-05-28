{{ config(
    alias='wordpress_tags'
)
}}
select * from {{ ref('stg_tags') }} where "RECORD_CAPTURED_TIME"=(select max("RECORD_CAPTURED_TIME") from {{ ref('stg_tags') }} )