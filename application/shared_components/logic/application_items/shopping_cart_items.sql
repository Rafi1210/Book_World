prompt --application/shared_components/logic/application_items/shopping_cart_items
begin
--   Manifest
--     APPLICATION ITEM: SHOPPING_CART_ITEMS
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
 p_id=>wwv_flow_imp.id(111715003908397644210)
,p_name=>'SHOPPING_CART_ITEMS'
,p_protection_level=>'I'
,p_version_scn=>15530434572474
);
wwv_flow_imp.component_end;
end;
/
