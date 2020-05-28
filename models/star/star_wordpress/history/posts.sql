{{ config(
    alias='wordpress_posts'
)
}}
select * from {{ ref('stg_posts') }} where "RECORD_CAPTURED_TIME"=(select max("RECORD_CAPTURED_TIME") from {{ ref('stg_posts') }} )