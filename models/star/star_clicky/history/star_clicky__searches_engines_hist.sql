{{ config(
    materialized='incremental',
    transient = false,
    alias='clicky_searches_engines_hist'
)
}}

select * from {{ ref('stg_clicky__searches_engines') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}