{{ config (
    alias = 'domain_information'
)}}

select
    document:domain::varchar as domain,
    document:name::varchar as organization,
    document:logo::varchar as logo_URL,
    record_captured_at,
    blob_file_name
from {{ source('clicky_sources', 'hostnames_document')}}