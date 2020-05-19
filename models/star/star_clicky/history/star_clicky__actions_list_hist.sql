{{ config(
    materialized='incremental',
    transient = false,
    alias='clicky_actions_list_hist'
)
}}

select * from {{ ref('stg_clicky__actions_list') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}