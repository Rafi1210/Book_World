prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'BookWorld'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(103333572668987026780)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'2022-1-60-261@STD.EWUBD.EDU'
,p_last_upd_yyyymmddhh24miss=>'20240519082900'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103333580258914026789)
,p_plug_name=>'BookWorld'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(103333341693462026599)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103333881280003029866)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#:::::::::::'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--hideBody::t-Cards--animColorFill'
,p_plug_template=>wwv_flow_imp.id(103333308205665026583)
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(103333877343809029863)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(103333423990459026638)
,p_plug_query_num_rows=>15
);
wwv_flow_imp.component_end;
end;
/
