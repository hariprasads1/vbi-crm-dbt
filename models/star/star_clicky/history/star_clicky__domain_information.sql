{{ config(
    materialized='incremental',
    transient = false,
    unique_key = 'domain',
    alias='clicky_domain_information'
)
}}

select * from {{ ref('stg_clicky__domain_information') }}
{% if is_incremental() %}
	where record_captured_at > (select max(record_captured_at) from {{this}})
{% endif %}