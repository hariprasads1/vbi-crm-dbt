select 
    SRC:"publish":"_links":archives::variant as "archives",
    SRC:"publish":"date_floating"::boolean as "date_floating",
    SRC:"publish":"name"::varchar as "name",
    SRC:"publish":"public"::boolean as "public",
    SRC:"publish":"queryable"::boolean as "queryable",
    SRC:"publish":"slug"::varchar as "slug",
    "RECORD_CAPTURED_TIME"
from {{ source('wordpress_sources', 'TB_STATUSES_DOCUMENT')}}