prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 215031
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>101552441239654991975
,p_default_application_id=>215031
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ONLINEBOOKSTORE'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(103333542970018026757)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(103333298166160026577)
,p_default_dialog_template=>wwv_flow_imp.id(103333292930980026574)
,p_error_template=>wwv_flow_imp.id(103333282857441026569)
,p_printer_friendly_template=>wwv_flow_imp.id(103333298166160026577)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(103333282857441026569)
,p_default_button_template=>wwv_flow_imp.id(103333448170853026651)
,p_default_region_template=>wwv_flow_imp.id(103333374994509026614)
,p_default_chart_template=>wwv_flow_imp.id(103333374994509026614)
,p_default_form_template=>wwv_flow_imp.id(103333374994509026614)
,p_default_reportr_template=>wwv_flow_imp.id(103333374994509026614)
,p_default_tabform_template=>wwv_flow_imp.id(103333374994509026614)
,p_default_wizard_template=>wwv_flow_imp.id(103333374994509026614)
,p_default_menur_template=>wwv_flow_imp.id(103333387368528026620)
,p_default_listr_template=>wwv_flow_imp.id(103333374994509026614)
,p_default_irr_template=>wwv_flow_imp.id(103333365133491026609)
,p_default_report_template=>wwv_flow_imp.id(103333413154485026632)
,p_default_label_template=>wwv_flow_imp.id(103333445622185026649)
,p_default_menu_template=>wwv_flow_imp.id(103333451874840026652)
,p_default_calendar_template=>wwv_flow_imp.id(103333453215496026652)
,p_default_list_template=>wwv_flow_imp.id(103333429592559026640)
,p_default_nav_list_template=>wwv_flow_imp.id(103333441338231026647)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(103333441338231026647)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(103333435958854026644)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(103333311078147026585)
,p_default_dialogr_template=>wwv_flow_imp.id(103333308205665026583)
,p_default_option_label=>wwv_flow_imp.id(103333445622185026649)
,p_default_required_label=>wwv_flow_imp.id(103333446999743026650)
,p_default_navbar_list_template=>wwv_flow_imp.id(103333435518755026644)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>67
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
