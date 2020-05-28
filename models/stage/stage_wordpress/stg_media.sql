select 
    SRC:"id"::number as "id",
    SRC:"date"::timestamp as "date",
    SRC:"date_gmt"::timestamp as "date_gmt",
    SRC:"guid"."rendered"::varchar as "guid",
    SRC:"modified"::timestamp as "modified",
    SRC:"modified_gmt"::timestamp as "modified_gmt",
    SRC:"slug"::varchar as "slug",
    SRC:"status"::varchar as "status",
    SRC:"type"::varchar as "type",
    SRC:"link"::varchar as "link",
    SRC:"title"."rendered"::varchar as "title",
    SRC:"author"::number as "author",
    SRC:"comment_status"::varchar as "comment_status",
    SRC:"ping_status"::varchar as "ping_status",
    SRC:"template"::varchar as "template",
    SRC:"meta"::variant as "meta",
    SRC:"description"."rendered"::varchar as "description",
    SRC:"caption"."rendered"::varchar as "caption",
    SRC:"alt_text"::varchar as "alt_text",
    SRC:"media_type"::varchar as "media_type",
    SRC:"mime_type"::varchar as "mime_type",
    SRC:"media_details" as "media_details",
    SRC:"post"::number as "post",
    SRC:"source_url"::varchar as "source_url",
    SRC:"_links"::variant as "_links",
    "RECORD_CAPTURED_TIME"
from {{ source('wordpress_sources', 'TB_MEDIA_DOCUMENT')}}