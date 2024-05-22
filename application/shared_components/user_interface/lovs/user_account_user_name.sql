prompt --application/shared_components/user_interface/lovs/user_account_user_name
begin
--   Manifest
--     USER_ACCOUNT.USER_NAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>101552441239654991975
,p_default_application_id=>215031
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ONLINEBOOKSTORE'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(103333605027863027235)
,p_lov_name=>'USER_ACCOUNT.USER_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USER_ACCOUNT'
,p_return_column_name=>'USER_ID'
,p_display_column_name=>'USER_NAME'
,p_default_sort_column_name=>'USER_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
