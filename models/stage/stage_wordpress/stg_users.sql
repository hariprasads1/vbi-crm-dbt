select 
    SRC:"id"::number as "id",
    SRC:"name"::varchar as "name",
    SRC:"url"::varchar as "url",
    SRC:"description"::varchar as "description",
    SRC:"link"::varchar as "link",
    SRC:"slug"::varchar as "slug",
    SRC:"avatar_urls"::varchar as "avatar_urls",
    SRC:"meta"::variant as "meta",
    SRC:"_links"::variant as "_links",
    "RECORD_CAPTURED_TIME"
from {{ source('wordpress_sources', 'TB_USERS_DOCUMENT')}}