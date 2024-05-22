prompt --application/shared_components/user_interface/lovs/products_product_name
begin
--   Manifest
--     PRODUCTS.PRODUCT_NAME
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
 p_id=>wwv_flow_imp.id(112082039527657501722)
,p_lov_name=>'PRODUCTS.PRODUCT_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PRODUCTS'
,p_return_column_name=>'PRODUCT_ID'
,p_display_column_name=>'PRODUCT_NAME'
,p_default_sort_column_name=>'PRODUCT_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
