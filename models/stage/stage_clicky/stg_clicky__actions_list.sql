{{ config (
    alias = 'clicky_actions_list'
)}}

select
    document:uid::number as uid,
    document:session_id::number as session_id,
    document:time::timestamp as action_date_time,
    document:time_pretty::varchar as time_pretty,
    document:action_title::varchar as action_title,
    document:action_type::varchar as action_type,
    document:action_url::varchar as action_url,
    document:ip_address::varchar as ip_address,
    document:stats_url::varchar as stats_url,
    record_captured_at,
    blob_file_name
from {{ source('clicky_sources', 'actions_list_document')}}