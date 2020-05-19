{{ config(
    materialized='incremental',
    transient = false,
    alias='clicky_traffic_sources_hist'
)
}}

select * from {{ ref('stg_clicky__traffic_sources') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}