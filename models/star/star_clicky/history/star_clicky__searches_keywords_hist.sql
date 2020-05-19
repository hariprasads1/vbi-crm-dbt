{{ config(
    materialized='incremental',
    transient = false,
    alias='clicky_searches_keywords_hist'
)
}}

select * from {{ ref('stg_clicky__searches_keywords') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}