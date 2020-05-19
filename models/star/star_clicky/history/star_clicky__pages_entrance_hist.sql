{{ config(
    materialized='incremental',
    transient = false,
    alias='clicky_pages_entrance_hist'
)
}}

select * from {{ ref('stg_clicky__pages_entrance') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}