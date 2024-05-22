prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 215031
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>101552441239654991975
,p_default_application_id=>215031
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ONLINEBOOKSTORE'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(111984247951522066960)
);
wwv_flow_imp.component_end;
end;
/
