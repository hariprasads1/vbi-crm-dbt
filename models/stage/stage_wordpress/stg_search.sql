select 
    SRC:"id"::number as "id",
    SRC:"title"::varchar as "title",
    SRC:"url"::varchar as "url",
    SRC:"type"::varchar as "type",
    SRC:"subtype"::varchar as "subtype",
    SRC:"_links"::variant as "_links",
    "RECORD_CAPTURED_TIME"
from {{ source('wordpress_sources', 'TB_SEARCH_DOCUMENT')}}