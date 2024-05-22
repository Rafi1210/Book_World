prompt --application/shared_components/user_interface/lovs/email_username_format
begin
--   Manifest
--     EMAIL_USERNAME_FORMAT
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
 p_id=>wwv_flow_imp.id(103334220851136030367)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(103334220851136030367)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(103334221188282030367)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
wwv_flow_imp.component_end;
end;
/
