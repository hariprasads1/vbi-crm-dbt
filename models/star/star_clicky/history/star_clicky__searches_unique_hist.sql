{{ config(
    materialized='incremental',
    transient = false,
    alias='clicky_searches_unique_hist'
)
}}

select * from {{ ref('stg_clicky__searches_unique') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}