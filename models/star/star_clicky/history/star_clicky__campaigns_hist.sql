{{ config(
    materialized='incremental',
    transient = false,
    alias='clicky_campaigns_hist'
)
}}

select * from {{ ref('stg_clicky__campaigns') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}