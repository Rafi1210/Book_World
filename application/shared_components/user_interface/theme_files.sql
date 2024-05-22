prompt --application/shared_components/user_interface/theme_files
begin
--   Manifest
--     THEME FILES: 215031
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>101552441239654991975
,p_default_application_id=>215031
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ONLINEBOOKSTORE'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E742D4C6F67696E2D636F6E7461696E6572207B0D0A2020636F6C6F723A20626C61636B3B0D0A7D0D0A2E742D4C6F67696E2D6267207B0D0A2020636F6C6F723A20626C61636B3B0D0A7D0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(111800779874948615106)
,p_theme_id=>42
,p_file_name=>'111391743055808621590.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
