prompt --application/shared_components/user_interface/lovs/authors_author_name
begin
--   Manifest
--     AUTHORS.AUTHOR_NAME
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
 p_id=>wwv_flow_imp.id(103333583400219026879)
,p_lov_name=>'AUTHORS.AUTHOR_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'AUTHORS'
,p_return_column_name=>'AUTHOR_ID'
,p_display_column_name=>'AUTHOR_NAME'
,p_default_sort_column_name=>'AUTHOR_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
