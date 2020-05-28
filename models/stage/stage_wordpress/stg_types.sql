select 
    SRC:"post"::variant as "post",
    SRC:"page"::variant as "page",
    SRC:"attachment"::variant as "attachment",
    SRC:"wp_block"::variant as "wp_block" ,
    "RECORD_CAPTURED_TIME"
from {{ source('wordpress_sources', 'TB_TYPES_DOCUMENT')}}