{{ config (
    alias = 'clicky_traffic_sources'
)}}

select
    document:value::varchar as value,
    document:value_percent::number as value_percent,
    document:title::varchar as title,
    document:stats_url::varchar as stats_url,
    document:url::varchar as url,
    record_captured_at,
    blob_file_name
from {{ source('clicky_sources', 'traffic_sources_document')}}