prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_name=>'Wishlist Price'
,p_alias=>'WISHLIST-PRICE'
,p_page_mode=>'MODAL'
,p_step_title=>'Wishlist Price'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(103333272006910026562)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'2022-1-60-261@STD.EWUBD.EDU'
,p_last_upd_yyyymmddhh24miss=>'20240519203915'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112121064032383444270)
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
 p_id=>wwv_flow_imp.id(112121064765738444271)
,p_plug_name=>'Wishlist Price'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(103333365133491026609)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUM(b.price) AS total_price',
'FROM wishlist w',
'JOIN books b ON w.book_name = b.title;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Wishlist Price'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(112121064864110444271)
,p_name=>'Wishlist Price'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'2022-1-60-261@STD.EWUBD.EDU'
,p_internal_uid=>112121064864110444271
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112121065220039444272)
,p_db_column_name=>'TOTAL_PRICE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Total Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(112121067069499445145)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1121210671'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TOTAL_PRICE'
);
wwv_flow_imp.component_end;
end;
/
