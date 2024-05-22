prompt --workspace/credentials/app_215031_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 215031 Push Notifications Credentials
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>101552441239654991975
,p_default_application_id=>215031
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ONLINEBOOKSTORE'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(103334323058279030978)
,p_name=>'App 215031 Push Notifications Credentials'
,p_static_id=>'App_215031_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
