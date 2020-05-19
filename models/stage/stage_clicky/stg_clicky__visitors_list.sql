{{ config (
    alias = 'clicky_visitors_list'
)}}

select
    document:uid::number as uid,
    document:session_id::number as session_id,
    document:time::timestamp as visit_date_time,
    document:time_pretty::varchar as time_pretty,
    document:time_total::number as time_total,
    document:ip_address::varchar as ip_address,
    document:actions::number as actions,
    document:total_visits::number as total_visits,
    document:landing_page::varchar as landing_page,
    document:web_browser::varchar as web_browser,
    document:operating_system::varchar as operating_system,
    document:screen_resolution::varchar as screen_resolution,
    document:javascript::varchar as javascript,
    document:language::varchar as language,
    document:referrer_url::varchar as referrer_url,
    document:referrer_domain::varchar as referrer_domain,
    document:referrer_search::varchar as referrer_search,
    document:referrer_type::varchar as referrer_type,
    document:geolocation::varchar as geolocation,
    document:country_code::varchar as country_code,
    document:latitude::number as latitude,
    document:longitude::number as longitude,
    document:organization::varchar as organization,
    document:stats_url::varchar as stats_url,
    document:hostname::varchar as hostname,
    record_captured_at,
    blob_file_name
from {{ source('clicky_sources', 'visitors_list_document')}}