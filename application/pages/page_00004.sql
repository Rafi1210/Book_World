prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'New Arrival'
,p_alias=>'NEW-ARRIVAL'
,p_step_title=>'New Arrival'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'2022-1-60-261@STD.EWUBD.EDU'
,p_last_upd_yyyymmddhh24miss=>'20240519152613'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111998830230738298911)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(111998830923493298912)
,p_name=>'New Arrival'
,p_template=>wwv_flow_imp.id(103333374994509026614)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    BOOK_ID,',
'    TITLE,',
'    AUTHOR_NAME,',
'    GENRE,',
'    PRICE,',
'    ISBN,',
'    PUBLISHER,',
'    TO_CHAR(PUBLICATION_DATE, ''YYYY-MM-DD'') AS PUBLICATION_DATE,',
'    DESCRIPTION',
'FROM ',
'    BOOKS',
'WHERE ',
'    PUBLICATION_DATE >= TRUNC(SYSDATE) - 90',
'ORDER BY ',
'    PUBLICATION_DATE DESC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(103333413154485026632)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(111998831396809298913)
,p_query_column_id=>1
,p_column_alias=>'BOOK_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Book Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(111998831797787298913)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(111998832151428298913)
,p_query_column_id=>3
,p_column_alias=>'AUTHOR_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Author Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(111998832585957298914)
,p_query_column_id=>4
,p_column_alias=>'GENRE'
,p_column_display_sequence=>4
,p_column_heading=>'Genre'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(111998832958640298914)
,p_query_column_id=>5
,p_column_alias=>'PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Price'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(111998833327790298914)
,p_query_column_id=>6
,p_column_alias=>'ISBN'
,p_column_display_sequence=>6
,p_column_heading=>'Isbn'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(111998833778167298915)
,p_query_column_id=>7
,p_column_alias=>'PUBLISHER'
,p_column_display_sequence=>7
,p_column_heading=>'Publisher'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(111998834150970298915)
,p_query_column_id=>8
,p_column_alias=>'PUBLICATION_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Publication Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(111998834593243298915)
,p_query_column_id=>9
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>9
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
