prompt --application/pages/page_10060
begin
--   Manifest
--     PAGE: 10060
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
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(103333572668987026780)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(103333568965110026776)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
,p_last_updated_by=>'2022-1-60-261@STD.EWUBD.EDU'
,p_last_upd_yyyymmddhh24miss=>'20240503150027'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103334282538388030586)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(103333337080360026597)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp.component_end;
end;
/
