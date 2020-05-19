{{ config(
    materialized='incremental',
    transient = false,
    alias='clicky_pages_hist'
)
}}

select * from {{ ref('stg_clicky__pages') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}