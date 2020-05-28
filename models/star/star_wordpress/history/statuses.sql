{{ config(
    alias='wordpress_statuses'
)
}}
select * from {{ ref('stg_statuses') }} where "RECORD_CAPTURED_TIME"=(select max("RECORD_CAPTURED_TIME") from {{ ref('stg_statuses') }} )