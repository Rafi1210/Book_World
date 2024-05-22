prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Authors Info'
,p_alias=>'AUTHORS-INFO'
,p_step_title=>'Authors Info'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(103333274906664026565)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_by=>'2022-1-60-261@STD.EWUBD.EDU'
,p_last_upd_yyyymmddhh24miss=>'20240519205707'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111752740836876488673)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(103333387368528026620)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(103333271254884026562)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(103333451874840026652)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111752741541166488675)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(103333315345454026587)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    AUTHORS.AUTHOR_ID AS AUTHOR_ID_A,',
'    AUTHORS.AUTHOR_NAME AS AUTHOR_NAME,',
'    BOOKS.BOOK_ID AS BOOK_ID_B,',
'    BOOKS.TITLE AS BOOK_TITLE',
'FROM ',
'    AUTHORS ',
'INNER JOIN ',
'    BOOKS ON AUTHORS.AUTHOR_ID = BOOKS.AUTHOR_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(111739951204794236409)
,p_region_id=>wwv_flow_imp.id(111752741541166488675)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'AUTHOR_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'BOOK_TITLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'BOOK_TITLE'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111752741610441488675)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(103333374994509026614)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(111752741541166488675)
,p_landmark_label=>'Filters'
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'Y'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111752743277237488677)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(103333311078147026585)
,p_plug_display_sequence=>20
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111752743734652488677)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(111752743277237488677)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(103333448223250026651)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:RR,26::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111752742127358488676)
,p_name=>'P26_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111752741610441488675)
,p_prompt=>'Search'
,p_source=>'AUTHOR_NAME,BOOK_TITLE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_attribute_04=>'N'
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111752742524157488676)
,p_name=>'P26_AUTHOR_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111752741610441488675)
,p_prompt=>'Author Name'
,p_source=>'AUTHOR_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attribute_01=>'1'
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111752742963016488677)
,p_name=>'P26_BOOK_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111752741610441488675)
,p_prompt=>'Book Title'
,p_source=>'BOOK_TITLE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attribute_01=>'1'
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp.component_end;
end;
/
