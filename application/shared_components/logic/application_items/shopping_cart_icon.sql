prompt --application/shared_components/logic/application_items/shopping_cart_icon
begin
--   Manifest
--     APPLICATION ITEM: SHOPPING_CART_ICON
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>101552441239654991975
,p_default_application_id=>215031
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ONLINEBOOKSTORE'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(111714869117778360576)
,p_name=>'SHOPPING_CART_ICON'
,p_protection_level=>'I'
,p_version_scn=>15530434549890
);
wwv_flow_imp.component_end;
end;
/
