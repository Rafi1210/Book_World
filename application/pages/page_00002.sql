prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>101552441239654991975
,p_default_application_id=>215031
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ONLINEBOOKSTORE'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Add to Cart'
,p_alias=>'ADD-TO-CART'
,p_page_mode=>'MODAL'
,p_step_title=>'Add to Cart'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'2022-1-60-261@STD.EWUBD.EDU'
,p_last_upd_yyyymmddhh24miss=>'20240517144938'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110866801099809560834)
,p_plug_name=>'Books'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleC'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(103333315345454026587)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.TITLE, ',
'       jt1.description, ',
'       jt2.publisher',
'FROM   books b,',
'       JSON_TABLE (b.TITLE, ''$'' ',
'           COLUMNS ( description VARCHAR2(4000) PATH ''$.description'') ) jt1,',
'       JSON_TABLE (b.DESCRIPTION, ''$'' ',
'           COLUMNS ( publisher VARCHAR2(4000) PATH ''$.publisher'') ) jt2',
'WHERE  b.BOOK_ID = :p18_book_id;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(110866801120080560835)
,p_region_id=>wwv_flow_imp.id(110866801099809560834)
,p_layout_type=>'FLOAT'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp.component_end;
end;
/
