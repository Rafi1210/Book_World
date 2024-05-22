prompt --application/shared_components/navigation/lists/user_interface
begin
--   Manifest
--     LIST: User Interface
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>101552441239654991975
,p_default_application_id=>215031
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ONLINEBOOKSTORE'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(103334289361987030592)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(103333569068264026776)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(103334289778704030592)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(103333569068264026776)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
