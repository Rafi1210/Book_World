prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_name=>'Highest Rated Books'
,p_alias=>'HIGHEST-RATED-BOOKS'
,p_step_title=>'Highest Rated Books'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_last_updated_by=>'2022-1-60-261@STD.EWUBD.EDU'
,p_last_upd_yyyymmddhh24miss=>'20240519155818'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112016954148967501955)
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
 p_id=>wwv_flow_imp.id(112016955034952501955)
,p_plug_name=>'Highest Rated Books'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(103333374994509026614)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(112016955465595501956)
,p_region_id=>wwv_flow_imp.id(112016955034952501955)
,p_chart_type=>'combo'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(112016957590698501957)
,p_chart_id=>wwv_flow_imp.id(112016955465595501956)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    b.TITLE AS BOOK_TITLE,',
'    AVG(r.RATING) AS AVERAGE_RATING',
'FROM ',
'    BOOKS b',
'JOIN ',
'    REVIEWS r ON b.TITLE = r.BOOK_NAME',
'GROUP BY ',
'    b.BOOK_ID, b.TITLE',
'HAVING ',
'    AVG(r.RATING) > 3',
'ORDER BY ',
'    AVERAGE_RATING DESC',
'FETCH FIRST 10 ROWS ONLY;',
''))
,p_max_row_count=>5
,p_series_type=>'bar'
,p_items_value_column_name=>'AVERAGE_RATING'
,p_group_short_desc_column_name=>'BOOK_TITLE'
,p_items_label_column_name=>'BOOK_TITLE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_gantt_start_date_source=>'DB_COLUMN'
,p_gantt_end_date_source=>'DB_COLUMN'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(112016955935385501956)
,p_chart_id=>wwv_flow_imp.id(112016955465595501956)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(112016956520042501956)
,p_chart_id=>wwv_flow_imp.id(112016955465595501956)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp.component_end;
end;
/
