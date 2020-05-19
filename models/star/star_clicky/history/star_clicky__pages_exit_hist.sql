{{ config(
    materialized='incremental',
    transient = false,
    alias='clicky_pages_exit_hist'
)
}}

select * from {{ ref('stg_clicky__pages_exit') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}