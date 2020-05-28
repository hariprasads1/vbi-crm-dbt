select 
    SRC:"category"::variant as "category",
    SRC:"post_tag"::variant as "post_tag",
    "RECORD_CAPTURED_TIME"
from {{ source('wordpress_sources', 'TB_TAXONOMIES_DOCUMENT')}}