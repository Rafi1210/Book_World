prompt --application/shared_components/security/authentications/custom_auth
begin
--   Manifest
--     AUTHENTICATION: custom-auth
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>101552441239654991975
,p_default_application_id=>215031
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ONLINEBOOKSTORE'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(111825483724502501249)
,p_name=>'custom-auth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'custom_auth'
,p_attribute_05=>'N'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
