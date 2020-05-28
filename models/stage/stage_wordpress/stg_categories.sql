select 
    SRC:"id"::number as "id",
    SRC:"count"::number as "count",
    SRC:"description"::varchar as "description",
    SRC:"link"::varchar as "link",
    SRC:"name"::varchar as "name",
    SRC:"slug"::varchar as "slug",
    SRC:"taxonomy"::varchar as "taxonomy",
    SRC:"parent"::number as "parent",
    SRC:"meta"::variant as "meta",
    SRC:"_links" as "_links",
    "RECORD_CAPTURED_TIME"
from {{ source('wordpress_sources', 'TB_CATEGORIES_DOCUMENT')}}