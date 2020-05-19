{{ config(
    materialized='incremental',
    transient = false,
    alias='clicky_visitors_list_hist'
)
}}

select * from {{ ref('stg_clicky__visitors_list') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}