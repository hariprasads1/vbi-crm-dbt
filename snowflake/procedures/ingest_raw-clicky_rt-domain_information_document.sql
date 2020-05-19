use role crm_developer;
use warehouse crm_wh;
use database crm_edw;
use schema clicky;

create or replace procedure sp_domain_information_document_ingest()
returns boolean
language javascript
execute as caller
as
$$
  snowflake.createStatement({sqlText: "copy into raw.clicky.domain_information_document from (select $1, convert_timezone('UTC', current_timestamp(2))::timestamp_ntz as record_captured_at, metadata$filename as blob_file_name from @raw.clicky.stg_clicky/domain_information)"}).execute();
  return true;
$$;