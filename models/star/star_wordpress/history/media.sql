{{ config(
    alias='wordpress_media'
)
}}
select * from {{ ref('stg_media') }} where "RECORD_CAPTURED_TIME"=(select max("RECORD_CAPTURED_TIME") from {{ ref('stg_media') }} )