prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_default_workspace_id=>101552441239654991975
);
end;
/
prompt  WORKSPACE 101552441239654991975
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   05:28 Wednesday May 22, 2024
--   Exported By:     2022-1-60-261@STD.EWUBD.EDU
--   Export Type:     Workspace Export
--   Version:         23.2.4
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_230200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>101552441239654991975);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace ONLINE-BOOK-STORE...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 101554530041386003271
 ,p_provisioning_company_id => 101552441239654991975
 ,p_short_name => 'ONLINE-BOOK-STORE'
 ,p_display_name => 'ONLINE-BOOK-STORE'
 ,p_first_schema_provisioned => 'WKSP_ONLINEBOOKSTORE'
 ,p_company_schemas => 'WKSP_ONLINEBOOKSTORE'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'ONLINE-B'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'ONLINE-BOOK-STORE'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1860327649224503,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1860264752224503,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1860157151224499,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '101552441119965991975',
  p_user_name                    => '2022-1-60-261@STD.EWUBD.EDU',
  p_first_name                   => 'Md. Sadat Ahmed',
  p_last_name                    => 'Rafi',
  p_description                  => '',
  p_email_address                => '2022-1-60-261@std.ewubd.edu',
  p_web_password                 => 'BB3DE6B609D4431969D3EC2321A77C205D4FA61318E3AD30515553D9FAC6BB93C8B355E6791D2E8E820E4DA0CFFDA17B51E658159A0A3BF0F7A8BE752159DDFB',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_ONLINEBOOKSTORE',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404300757','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '101576486506880158948',
  p_user_name                    => 'ALIF',
  p_first_name                   => 'Mohammad ',
  p_last_name                    => 'Alif',
  p_description                  => '',
  p_email_address                => '2022-1-60-142@std.ewubd.edu',
  p_web_password                 => '731C834551114B16289F26D46A2CD7521A425762152E7B3957DE965645DCF0629A765CF272D69FD55808CFBE6486661E25326612D7FAF0A36E5CFC0BF270DF00',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'WKSP_ONLINEBOOKSTORE',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404300000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '105730036319298898900',
  p_user_name                    => 'DEVIN1234',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'dash@pmail.com',
  p_web_password                 => '2F0AD805912E0B825749BCEA308CB0B41637D667CE01D728F4B6D5554CB7B9E41DE963AC908B59214F6592FAAC6DA4DED6CC368B95BACEDA6B6A16583CA66379',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_ONLINEBOOKSTORE',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202405080000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '101581584926329711958',
  p_user_name                    => 'JANNATUL',
  p_first_name                   => 'Jannatul',
  p_last_name                    => 'Ferdous',
  p_description                  => '',
  p_email_address                => '2022-1-60-056@std.ewubd.edu',
  p_web_password                 => '5654819D06D394C463A79D1FDC72787FF9997ECD544B142E511D1992A9D5AA02724DDF7D6693F5993E25B24389A048B273C0D987F25101587B8E69F90728F8C1',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'WKSP_ONLINEBOOKSTORE',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404300000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '101578234811053176087',
  p_user_name                    => 'RAFI',
  p_first_name                   => 'sadat',
  p_last_name                    => 'rafi',
  p_description                  => '',
  p_email_address                => 'sadatahmedrafi@gmail.com',
  p_web_password                 => '49159207C2F3B3A79DC487D21AEC8EC935DA5B919FFEEA9377A0578A1BF44300D060B5A8CFA08B141A2BB3D0366D7ACAA83E1D024FD1027B130A0CA028AEC76C',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'WKSP_ONLINEBOOKSTORE',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404300652','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 4,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '101580663306049215838',
  p_user_name                    => 'RAJON',
  p_first_name                   => 'Rajon',
  p_last_name                    => 'Das',
  p_description                  => '',
  p_email_address                => '2022-1-60-050@std.ewubd.edu',
  p_web_password                 => '5776D1AFB5632AACA3F4817EF7FD55EE41C86D7B0218C23C8A49B9197A5649801910064B5535A83AE8873BCD9072F0673A788BF85828725D5A794D27A6AC0E51',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'WKSP_ONLINEBOOKSTORE',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404300000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '103357979095426863827',
  p_user_name                    => 'USER',
  p_first_name                   => 'sadat',
  p_last_name                    => 'rafi',
  p_description                  => '',
  p_email_address                => 'sadatahmedrafi@gmail.com',
  p_web_password                 => '15F7CE8C273BDDE55CB32B50068DD2E07878BB69B4216F801E7C5B62D2CCCE7933E56E038676A33609E2311EE8BAD19BA6A8AFCACF194E86A58FAA3C4D8FE4B7',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'WKSP_ONLINEBOOKSTORE',
  p_account_locked               => 'Y',
  p_account_expiry               => to_date('202405030000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 101638998771538569923,
    p_user_id => 101552441119965991975,
    p_password => 'BB3DE6B609D4431969D3EC2321A77C205D4FA61318E3AD30515553D9FAC6BB93C8B355E6791D2E8E820E4DA0CFFDA17B51E658159A0A3BF0F7A8BE752159DDFB');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 101554530203564003281,
    p_user_id => 101552441119965991975,
    p_password => '5D4F3953C1F0B98EA2F179F53DE8E4BDCFB920EF2B15E24B76A1EF37E0BB2332E7F76E5A8EABBFB10E4BF28A9B88D81586827A6338803AC496FEBD3849091DB6');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 101578303757782184227,
    p_user_id => 101578234811053176087,
    p_password => '49159207C2F3B3A79DC487D21AEC8EC935DA5B919FFEEA9377A0578A1BF44300D060B5A8CFA08B141A2BB3D0366D7ACAA83E1D024FD1027B130A0CA028AEC76C');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 101576486627207158957,
    p_user_id => 101576486506880158948,
    p_password => '731C834551114B16289F26D46A2CD7521A425762152E7B3957DE965645DCF0629A765CF272D69FD55808CFBE6486661E25326612D7FAF0A36E5CFC0BF270DF00');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 103357979103917863838,
    p_user_id => 103357979095426863827,
    p_password => '15F7CE8C273BDDE55CB32B50068DD2E07878BB69B4216F801E7C5B62D2CCCE7933E56E038676A33609E2311EE8BAD19BA6A8AFCACF194E86A58FAA3C4D8FE4B7');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 101580685859631215846,
    p_user_id => 101580663306049215838,
    p_password => '5776D1AFB5632AACA3F4817EF7FD55EE41C86D7B0218C23C8A49B9197A5649801910064B5535A83AE8873BCD9072F0673A788BF85828725D5A794D27A6AC0E51');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 101578235081261176096,
    p_user_id => 101578234811053176087,
    p_password => 'B2B86300236CCD481A76A6E7CD0B7E26D9DAFE8F219030831075732FF7791E9508F756E127FC6B8CE3E1CDEF1DB4F614B017216E41D42A9F3C81B1DA1A0AAE36');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 101581585010071711967,
    p_user_id => 101581584926329711958,
    p_password => '5654819D06D394C463A79D1FDC72787FF9997ECD544B142E511D1992A9D5AA02724DDF7D6693F5993E25B24389A048B273C0D987F25101587B8E69F90728F8C1');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 105730036409547898908,
    p_user_id => 105730036319298898900,
    p_password => '2F0AD805912E0B825749BCEA308CB0B41637D667CE01D728F4B6D5554CB7B9E41DE963AC908B59214F6592FAAC6DA4DED6CC368B95BACEDA6B6A16583CA66379');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 101555076631747497588,
    p_user_id => 101552441119965991975,
    p_password => '2F581D2B975D6180E45D1D5CE1B5F6F291990ED89C1F5BD24EFC4C7E765FCCF2788A252C42DF1F9DE74FE91CC12A3E3BB0BF7C0402B86F56678DD37C76905A1B');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109909617305953297350,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_1906067983860548_CURRENT_REPORT',
    p_attribute_value => '1720725137294547:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111877045507916439376,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_20915676136405505_CURRENT_REPORT',
    p_attribute_value => '21352313571544338:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104185812703465131090,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_21515661633785596_CURRENT_REPORT',
    p_attribute_value => '21952299068924429:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104193661638217277708,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_2500606111718504_CURRENT_REPORT',
    p_attribute_value => '5306711573062761:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104185812872505131105,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_262121216799808381_CURRENT_REPORT',
    p_attribute_value => '2113442552309866:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111877045650309439387,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_266470409881026219_CURRENT_REPORT',
    p_attribute_value => '6462635633527704:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 106357355989619458267,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_786390949359884461_CURRENT_REPORT',
    p_attribute_value => '786401902417889038:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110880190210649064026,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 101652448076535654637,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '200:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111145272326484428037,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'F4500_1901781580041201_SPLITTER_STATE',
    p_attribute_value => '332:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 101559688630368538112,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '215031',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111432984272121596576,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P194_R224505023496694888_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 113654795959457632116,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P688_R207469307328320096_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111421634349168023054,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P797_R186034418786574670_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112111813845390018233,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P10034_W103333936978428030260',
    p_attribute_value => '103333944766225030269____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111860821013097199129,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P10053_W103334270183499030570',
    p_attribute_value => '103334280047968030584____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104958879669917103184,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P16_W103333776787721029430',
    p_attribute_value => '103333861620054029850____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110857867805823711631,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P24_W110662932776591741527',
    p_attribute_value => '110857864086538711621____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 107301665694409183404,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P26_W107300374390818463135',
    p_attribute_value => '107301665138809183395____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112117151992517142678,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P43_W112117289399909399785',
    p_attribute_value => '112117151485596142668____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111988662164357421711,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P4_W111988342872196158151',
    p_attribute_value => '111988661625036421705____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111994277660687466765,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P4_W215327161600382232071',
    p_attribute_value => '215327310840980233207____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104958750998218820158,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P6_W103333633219553027591',
    p_attribute_value => '103333829856786029823____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110698925672239884237,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P19_W451745617575288584',
    p_attribute_value => '451746507039288843____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110593056364187550851,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P4003_W632908938554265910',
    p_attribute_value => '632910390117265918____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112187568075777533287,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P4070_W47949429235486335',
    p_attribute_value => '47951124794493113____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111714708857864629905,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P4100_W3727618522871356',
    p_attribute_value => '3728530690872449____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111396548327440703210,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P4110_W1548412223182178',
    p_attribute_value => '1550029190194632____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111714758636829637453,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P42_W47815815177196218',
    p_attribute_value => '47817731311198150____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 105712323306569534107,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P554_W192763109168723524',
    p_attribute_value => '192764308218723592____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 113654794627048632030,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P688_W5633379337882843',
    p_attribute_value => '6300998346442124____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 113654795682858632106,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P688_W5633926744882849',
    p_attribute_value => '6310559989467102____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 105697078942128698318,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P801_W47918412797645641',
    p_attribute_value => '47921608032702994____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 107969182643857316136,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4350_P26_W9290710598383521',
    p_attribute_value => '9292829407383980____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104188542669277171704,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4500_P500_W441220719108112851',
    p_attribute_value => '441222102992115206____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110697457722386875188,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'PD_TWO_COLUMN_MODE',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 101559688070591538075,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 107969183030398316161,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'PERSISTENT_ITEM_P26_SINCE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 113654794900672632043,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'PERSISTENT_ITEM_P688_APPLICATION',
    p_attribute_value => '215031',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181209840631321857,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4000T3',
    p_attribute_value => '72328790154483268',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103322642012153863312,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_5402528899234735_CURRENT_REPORT',
    p_attribute_value => '27818993000237613:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103355405120156789786,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_665073618803777080_CURRENT_REPORT',
    p_attribute_value => '665079563548779201:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103354779806769788548,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111397473645339995048,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'APEX_IG_9499495849275742_CURRENT_REPORT',
    p_attribute_value => '23204494782337413:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 101652447618123654609,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '265:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 101652830440161143338,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '306:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109918995010741083385,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '265:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110867698007449872889,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP215031_P24_R109948129608402471101_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111738619212485229177,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP215031_P24_R110871827587575923300_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111736262989975123359,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P194_R115839224419800245_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 105745922163878000722,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P195_R225787614827384691_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110592849382301834372,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P197_R935666971301945228_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111421811089115303847,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P796_R185991323167292111_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 105713251246964817773,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4000_P817_R1384333522660578_SORT',
    p_attribute_value => 'sort_4_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104177711207626222317,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4500_P1220_R11177418830226625_SORT',
    p_attribute_value => 'fsp_sort_8',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104177713773357222565,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4500_P1225_R164053306541529880_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103403721838558157363,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4600_P1_R10424237842079440_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103403721747938157362,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4600_P1_R15607707130231509_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103403721677580157360,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP4600_P1_R4876236258998332_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111860285447039186668,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P10010_W103333882439745029867',
    p_attribute_value => '103333888100009029876____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 105725162141625870744,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P10031_W103333969461894030297',
    p_attribute_value => '103333975894283030312____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111860759491784196631,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P10032_W103333962048012030289',
    p_attribute_value => '103333967032112030296____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111859724631238934753,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P10033_W103333948038061030273',
    p_attribute_value => '103333958606892030285____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103337224329501046992,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P10041_W103334202536069030343',
    p_attribute_value => '103334205225604030349____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103336206330017040465,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P10_W103333668613427028317',
    p_attribute_value => '103333840980493029833____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103335664280862528106,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P12_W103333698778141028703',
    p_attribute_value => '103333848018739029839____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103335653848839526233,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P2_W103333594244498026888',
    p_attribute_value => '103333807347717029804____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104958877346308102989,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P14_W103333755440806029065',
    p_attribute_value => '103333854054885029844____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111421485066909291343,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P14_W222841244307031247756',
    p_attribute_value => '222841289284893248995____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104958885817222103336,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P18_W103333800209263029796',
    p_attribute_value => '103333869434853029856____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111561924786687240408,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P18_W111560165955258952508',
    p_attribute_value => '111561924287870240399____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111429539172658275861,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P23_W111429421286131268503',
    p_attribute_value => '111429538651587275852____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 107300234300662446202,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P24_W107300221592123443256',
    p_attribute_value => '107300233808568446195____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111419912214994242678,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P25_W111419865116085241012',
    p_attribute_value => '111419910093947242251____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112124482608245524073,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P26_W112122943359037507709',
    p_attribute_value => '112124482143270524066____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110842692069132207387,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P2_W110662931397183741513',
    p_attribute_value => '110842691526556207378____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112125204301224323478,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P30_W112125202066639322706',
    p_attribute_value => '112125203893077323471____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112121067573738445151,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P45_W112121064864110444271',
    p_attribute_value => '112121067069499445145____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104180519256247015200,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P4_W103333612426337027241',
    p_attribute_value => '103333821586915029816____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104958758481285820290,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P8_W103333646991668027942',
    p_attribute_value => '103333838137068029830____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112128234965994634413,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_215031_P8_W112122944693755507722',
    p_attribute_value => '112128234430692634407____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103347541474227664976,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103345612015798654236,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4350_P25_W9307709001462905',
    p_attribute_value => '9309908769463151____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103334527485591031389,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110840376495459444663,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P2300_W2050828593861326',
    p_attribute_value => '2117833588027975____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110840376666728444672,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P2300_W92468021968325911',
    p_attribute_value => '95148537308558700____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110593156439704565428,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P260_W40585608941890825',
    p_attribute_value => '40587517034894377____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104180812003345292797,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P4207_W47814307723191364',
    p_attribute_value => '47815210532192150____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111365838142279191061,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P44_W192971700145071263',
    p_attribute_value => '192972607003071274____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110692011173054796448,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P520_W1386831364981723',
    p_attribute_value => '1388113000982963____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110692345526898800174,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P521_W1393503630406494',
    p_attribute_value => '1394424437412015____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111408823545161073178,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4000_P939_W451352700445603348',
    p_attribute_value => '451353909559603360____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103347481556929659148,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4350_P29_W9294827650405715',
    p_attribute_value => '9296821143409975____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103357778230360362256,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104172936818881808176,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109909543145593013834,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'FSP_IR_4500_P4000_W2273820316819404',
    p_attribute_value => '2288425746427871____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110891408750069227786,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_H',
    p_attribute_value => '597.986',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111120211700536981974,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_W',
    p_attribute_value => '728',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103329780629440452933,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 101555199577721503126,
    p_user_id => '2022-1-60-261@STD.EWUBD.EDU',
    p_preference_name => 'PERSISTENT_ITEM_P25_DATE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181209969420321857,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4001T3',
    p_attribute_value => '72328790154483268.4001',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181210026246321857,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4002T3',
    p_attribute_value => '72328790154483268.4002',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181210172082321857,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4003T3',
    p_attribute_value => '72328790154483268.4003',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181210207834321857,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4004T3',
    p_attribute_value => '72328790154483268.4004',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181210343921321857,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4005T3',
    p_attribute_value => '72328790154483268.4005',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181210462758321857,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4006T3',
    p_attribute_value => '72328790154483268.4006',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181210577711321857,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4007T3',
    p_attribute_value => '72328790154483268.4007',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181210902816321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4021T101',
    p_attribute_value => '72329795312505899.4021',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181210684890321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4008T3',
    p_attribute_value => '72328790154483268.4008',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181210796496321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4009T3',
    p_attribute_value => '72328790154483268.4009',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181210815849321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4020T101',
    p_attribute_value => '72329795312505899',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181211059945321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4022T101',
    p_attribute_value => '72329795312505899.4022',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181211103121321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4023T101',
    p_attribute_value => '72329795312505899.4023',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181211274268321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4024T101',
    p_attribute_value => '72329795312505899.4024',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181211334081321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4025T101',
    p_attribute_value => '72329795312505899.4025',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181211460008321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4026T101',
    p_attribute_value => '72329795312505899.4026',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181211547236321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4027T101',
    p_attribute_value => '72329795312505899.4027',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181211690329321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4028T101',
    p_attribute_value => '72329795312505899.4028',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181211767002321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4029T101',
    p_attribute_value => '72329795312505899.4029',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181211842145321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4050T3',
    p_attribute_value => '72330278206509731',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181211998242321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4051T3',
    p_attribute_value => '72330278206509731.4051',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181212080134321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4052T3',
    p_attribute_value => '72330278206509731.4052',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181212156969321858,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4053T3',
    p_attribute_value => '72330278206509731.4053',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181212252895321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4054T3',
    p_attribute_value => '72330278206509731.4054',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181212395969321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4055T3',
    p_attribute_value => '72330278206509731.4055',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181212457412321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4056T3',
    p_attribute_value => '72330278206509731.4056',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181212530582321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4057T3',
    p_attribute_value => '72330278206509731.4057',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181212605225321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4058T3',
    p_attribute_value => '72330278206509731.4058',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181212709405321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4059T3',
    p_attribute_value => '72330278206509731.4059',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181212811117321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4300T3',
    p_attribute_value => '16565172685526446',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181212994145321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4301T3',
    p_attribute_value => '16565172685526446.4301',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181213071856321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4302T3',
    p_attribute_value => '16565172685526446.4302',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181213103756321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4303T3',
    p_attribute_value => '16565172685526446.4303',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181213271847321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4304T3',
    p_attribute_value => '16565172685526446.4304',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181213314950321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4305T3',
    p_attribute_value => '16565172685526446.4305',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181213430991321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4306T3',
    p_attribute_value => '16565172685526446.4306',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181213509725321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4307T3',
    p_attribute_value => '16565172685526446.4307',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181213675429321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4308T3',
    p_attribute_value => '16565172685526446.4308',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181213764168321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4309T3',
    p_attribute_value => '16565172685526446.4309',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181213817482321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4350T3',
    p_attribute_value => '72331295244515034',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181213991957321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4351T3',
    p_attribute_value => '72331295244515034.4351',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181214371436321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4355T3',
    p_attribute_value => '72331295244515034.4355',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181214067598321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4352T3',
    p_attribute_value => '72331295244515034.4352',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181214154276321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4353T3',
    p_attribute_value => '72331295244515034.4353',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181214257134321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4354T3',
    p_attribute_value => '72331295244515034.4354',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181214417279321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4356T3',
    p_attribute_value => '72331295244515034.4356',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181214543265321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4357T3',
    p_attribute_value => '72331295244515034.4357',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181214692868321859,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4358T3',
    p_attribute_value => '72331295244515034.4358',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181214768167321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4359T3',
    p_attribute_value => '72331295244515034.4359',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181214879249321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4470T3',
    p_attribute_value => '182005134783173294',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181214998071321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4471T3',
    p_attribute_value => '182005134783173294.4471',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181215054345321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4472T3',
    p_attribute_value => '182005134783173294.4472',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181215150666321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4473T3',
    p_attribute_value => '182005134783173294.4473',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181215212517321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4474T3',
    p_attribute_value => '182005134783173294.4474',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181215364178321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4475T3',
    p_attribute_value => '182005134783173294.4475',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181215475968321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4476T3',
    p_attribute_value => '182005134783173294.4476',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181215581760321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4477T3',
    p_attribute_value => '182005134783173294.4477',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181215666040321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4478T3',
    p_attribute_value => '182005134783173294.4478',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181215766230321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4479T3',
    p_attribute_value => '182005134783173294.4479',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181215836857321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4481T3',
    p_attribute_value => '182005134783173294.4481',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181215926641321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4482T3',
    p_attribute_value => '182005134783173294.4482',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181216042171321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4483T3',
    p_attribute_value => '182005134783173294.4483',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181216187860321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4484T3',
    p_attribute_value => '182005134783173294.4484',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181216234020321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4485T3',
    p_attribute_value => '182005134783173294.4485',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181216364614321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4486T3',
    p_attribute_value => '182005134783173294.4486',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181216473426321860,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4487T3',
    p_attribute_value => '182005134783173294.4487',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181216575109321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4488T3',
    p_attribute_value => '182005134783173294.4488',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181216649539321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4489T3',
    p_attribute_value => '182005134783173294.4489',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181216732211321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4491T3',
    p_attribute_value => '182005134783173294.4491',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181216853250321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4492T3',
    p_attribute_value => '182005134783173294.4492',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181216950025321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4493T3',
    p_attribute_value => '182005134783173294.4493',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181217045563321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4494T3',
    p_attribute_value => '182005134783173294.4494',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181217154575321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4495T3',
    p_attribute_value => '182005134783173294.4495',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181217268497321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4496T3',
    p_attribute_value => '182005134783173294.4496',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181217370751321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4497T3',
    p_attribute_value => '182005134783173294.4497',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181217476055321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4498T3',
    p_attribute_value => '182005134783173294.4498',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181217565992321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4499T3',
    p_attribute_value => '182005134783173294.4499',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181217624539321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4500T3',
    p_attribute_value => '72332249557526712',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181217792811321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4501T3',
    p_attribute_value => '72332249557526712.4501',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181217821723321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4502T3',
    p_attribute_value => '72332249557526712.4502',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181217957549321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4503T3',
    p_attribute_value => '72332249557526712.4503',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181218076091321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4504T3',
    p_attribute_value => '72332249557526712.4504',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181218113716321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4505T3',
    p_attribute_value => '72332249557526712.4505',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181218297613321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4506T3',
    p_attribute_value => '72332249557526712.4506',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181218323637321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4507T3',
    p_attribute_value => '72332249557526712.4507',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181218497256321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4508T3',
    p_attribute_value => '72332249557526712.4508',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181218506985321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4509T3',
    p_attribute_value => '72332249557526712.4509',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181218600241321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4541T3',
    p_attribute_value => '182005134783173294.4541',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181218779124321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4542T3',
    p_attribute_value => '182005134783173294.4542',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181218888679321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4543T3',
    p_attribute_value => '182005134783173294.4543',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181218917802321861,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4544T3',
    p_attribute_value => '182005134783173294.4544',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181219015784321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4550T3',
    p_attribute_value => '72332775553531661',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181219176624321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4551T3',
    p_attribute_value => '72332775553531661.4551',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181219234042321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4552T3',
    p_attribute_value => '72332775553531661.4552',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181219393008321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4553T3',
    p_attribute_value => '72332775553531661.4553',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181219444780321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4554T3',
    p_attribute_value => '72332775553531661.4554',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181219563101321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4555T3',
    p_attribute_value => '72332775553531661.4555',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181219690607321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4556T3',
    p_attribute_value => '72332775553531661.4556',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181219718857321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4557T3',
    p_attribute_value => '72332775553531661.4557',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181219884268321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4558T3',
    p_attribute_value => '72332775553531661.4558',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181219931007321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4559T3',
    p_attribute_value => '72332775553531661.4559',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181220008275321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4600T101',
    p_attribute_value => '77533347140630629',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181220184301321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4601T101',
    p_attribute_value => '77533347140630629.4601',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181220224317321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4602T101',
    p_attribute_value => '77533347140630629.4602',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181220346326321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4603T101',
    p_attribute_value => '77533347140630629.4603',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181220496529321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4604T101',
    p_attribute_value => '77533347140630629.4604',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181220533102321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4605T101',
    p_attribute_value => '77533347140630629.4605',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181220627753321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4606T101',
    p_attribute_value => '77533347140630629.4606',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181220749803321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4607T101',
    p_attribute_value => '77533347140630629.4607',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181220827522321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4608T101',
    p_attribute_value => '77533347140630629.4608',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181220980539321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4609T101',
    p_attribute_value => '77533347140630629.4609',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181221013745321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4650T3',
    p_attribute_value => '78840186844083825',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181221141148321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4651T3',
    p_attribute_value => '78840186844083825.4651',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181221216662321862,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4652T3',
    p_attribute_value => '78840186844083825.4652',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181221376230321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4653T3',
    p_attribute_value => '78840186844083825.4653',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181221454324321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4654T3',
    p_attribute_value => '78840186844083825.4654',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181221579464321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4655T3',
    p_attribute_value => '78840186844083825.4655',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181221673506321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4656T3',
    p_attribute_value => '78840186844083825.4656',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181221774421321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4657T3',
    p_attribute_value => '78840186844083825.4657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181221853639321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4658T3',
    p_attribute_value => '78840186844083825.4658',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181221913615321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4659T3',
    p_attribute_value => '78840186844083825.4659',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181222064538321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4700T3',
    p_attribute_value => '72333216619538152',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181222125618321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4701T3',
    p_attribute_value => '72333216619538152.4701',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181222276008321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4702T3',
    p_attribute_value => '72333216619538152.4702',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181222349838321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4703T3',
    p_attribute_value => '72333216619538152.4703',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181222485343321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4704T3',
    p_attribute_value => '72333216619538152.4704',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181222514127321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4705T3',
    p_attribute_value => '72333216619538152.4705',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181222614328321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4706T3',
    p_attribute_value => '72333216619538152.4706',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181222703567321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4707T3',
    p_attribute_value => '72333216619538152.4707',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181222829618321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4708T3',
    p_attribute_value => '72333216619538152.4708',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181222927912321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4709T3',
    p_attribute_value => '72333216619538152.4709',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181223094886321863,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4750T3',
    p_attribute_value => '72333757135541211',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181223133303321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4751T3',
    p_attribute_value => '72333757135541211.4751',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181223280716321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4752T3',
    p_attribute_value => '72333757135541211.4752',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181223389581321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4753T3',
    p_attribute_value => '72333757135541211.4753',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181223493826321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4754T3',
    p_attribute_value => '72333757135541211.4754',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181223506377321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4755T3',
    p_attribute_value => '72333757135541211.4755',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181223619984321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4756T3',
    p_attribute_value => '72333757135541211.4756',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181223700859321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4757T3',
    p_attribute_value => '72333757135541211.4757',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181223845103321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4758T3',
    p_attribute_value => '72333757135541211.4758',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181223944389321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4759T3',
    p_attribute_value => '72333757135541211.4759',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181224068212321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4800T3',
    p_attribute_value => '75133866524492828',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181224122471321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4850T3',
    p_attribute_value => '72334735125547461',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181224272414321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4851T3',
    p_attribute_value => '72334735125547461.4851',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181224373362321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4852T3',
    p_attribute_value => '72334735125547461.4852',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181224496063321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4853T3',
    p_attribute_value => '72334735125547461.4853',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181224521767321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4854T3',
    p_attribute_value => '72334735125547461.4854',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181224624584321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4855T3',
    p_attribute_value => '72334735125547461.4855',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181224718166321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4856T3',
    p_attribute_value => '72334735125547461.4856',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181224897499321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4857T3',
    p_attribute_value => '72334735125547461.4857',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181224925495321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4858T3',
    p_attribute_value => '72334735125547461.4858',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181225044774321864,
    p_user_id => 'ALIF',
    p_preference_name => 'APEX_THEME_STYLE_A4859T3',
    p_attribute_value => '72334735125547461.4859',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111642409011476041093,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_215031_P14_W222841244307031247756',
    p_attribute_value => '222841289284893248995____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111625953010286039167,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_215031_P16_W103333776787721029430',
    p_attribute_value => '103333861620054029850____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112186222363841747240,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_215031_P45_W112121064864110444271',
    p_attribute_value => '112121067069499445145____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112187316218492529846,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_4000_P667_W380035630081486164',
    p_attribute_value => '380036549255488918____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181500091469063664,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_4350_P78_W169333814048245920',
    p_attribute_value => '169335112738260044____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111428877225248254690,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P14_W222841244307031247756',
    p_attribute_value => '222841289284893248995____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 105731395243697908755,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P4_W103333612426337027241',
    p_attribute_value => '103333821586915029816____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109888139526742812373,
    p_user_id => 'RAJON',
    p_preference_name => 'APEX_IG_5402528899234735_CURRENT_REPORT',
    p_attribute_value => '27818993000237613:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109888139878886812377,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP4600_P1_R10424237842079440_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109888139772412812375,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP4600_P1_R15607707130231509_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109888139645506812375,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP4600_P1_R4876236258998332_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111829611005540320788,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P14_W222841244307031247756',
    p_attribute_value => '222841289284893248995____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110714226459742157539,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P16_W103333776787721029430',
    p_attribute_value => '103333861620054029850____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110714227779748158196,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P18_W103333800209263029796',
    p_attribute_value => '103333869434853029856____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111830515246132330577,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P23_W111429421286131268503',
    p_attribute_value => '111429538651587275852____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109889374616907831481,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P2_W103333594244498026888',
    p_attribute_value => '103333807347717029804____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112185797399677724357,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P45_W112121064864110444271',
    p_attribute_value => '112121067069499445145____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109889151869021114033,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P4_W103333612426337027241',
    p_attribute_value => '103333821586915029816____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110714301125280165159,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P8_W103333646991668027942',
    p_attribute_value => '103333838137068029830____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109886529015234055361,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103404597552902166352,
    p_user_id => 'ALIF',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '215031',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103404597459774166338,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103404597264120166315,
    p_user_id => 'ALIF',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104181848870425341618,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP4350_P33_R47031617128214415_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111625956338101039912,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_215031_P12_W103333698778141028703',
    p_attribute_value => '103333848018739029839____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111625959436017041243,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_215031_P6_W103333633219553027591',
    p_attribute_value => '103333829856786029823____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111625903904437035444,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_215031_P18_W111560165955258952508',
    p_attribute_value => '111561924287870240399____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111624500095231759839,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_215031_P23_W111429421286131268503',
    p_attribute_value => '111429538651587275852____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111625958925081040795,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_215031_P8_W103333646991668027942',
    p_attribute_value => '103333838137068029830____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103402865963360139079,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112185150855695435451,
    p_user_id => 'ALIF',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111163143266985731199,
    p_user_id => 'ALIF',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '1',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112033530568559771584,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P10_W103333668613427028317',
    p_attribute_value => '103333840980493029833____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110885985600208162488,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P12_W103333698778141028703',
    p_attribute_value => '103333848018739029839____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111160021396611684067,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P14_W103333755440806029065',
    p_attribute_value => '103333854054885029844____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111364252549224794944,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P16_W103333776787721029430',
    p_attribute_value => '103333861620054029850____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111158875607345937337,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P18_W103333800209263029796',
    p_attribute_value => '103333869434853029856____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112033507499676766205,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P18_W111560165955258952508',
    p_attribute_value => '111561924287870240399____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 111438959430579733731,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P23_W111429421286131268503',
    p_attribute_value => '111429538651587275852____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 105730589765617625417,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P2_W103333594244498026888',
    p_attribute_value => '103333807347717029804____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110885984342055161874,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P6_W103333633219553027591',
    p_attribute_value => '103333829856786029823____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 105731364891743906828,
    p_user_id => 'DEVIN1234',
    p_preference_name => 'FSP_IR_215031_P8_W103333646991668027942',
    p_attribute_value => '103333838137068029830____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103357698713004355510,
    p_user_id => 'RAFI',
    p_preference_name => 'FSP_IR_215031_P2_W103333594244498026888',
    p_attribute_value => '103333807347717029804____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109887707045862087058,
    p_user_id => 'RAJON',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '215031',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109891207084176862210,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P10_W103333668613427028317',
    p_attribute_value => '103333840980493029833____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109892156589880154175,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P12_W103333698778141028703',
    p_attribute_value => '103333848018739029839____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110885554236635145688,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P14_W103333755440806029065',
    p_attribute_value => '103333854054885029844____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112185563232095447256,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P18_W111560165955258952508',
    p_attribute_value => '111561924287870240399____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110713838736700434568,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_215031_P6_W103333633219553027591',
    p_attribute_value => '103333829856786029823____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109887706745128087043,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 109887706546497087022,
    p_user_id => 'RAJON',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 104176479424297197782,
    p_user_id => 'USER',
    p_preference_name => 'FSP_IR_215031_P10_W103333668613427028317',
    p_attribute_value => '103333840980493029833____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 107414617526160170384,
    p_user_id => 'USER',
    p_preference_name => 'FSP_IR_215031_P12_W103333698778141028703',
    p_attribute_value => '103333848018739029839____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103359855602221883429,
    p_user_id => 'USER',
    p_preference_name => 'FSP_IR_215031_P2_W103333594244498026888',
    p_attribute_value => '103333807347717029804____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103404948479654665575,
    p_user_id => 'USER',
    p_preference_name => 'FSP_IR_215031_P8_W103333646991668027942',
    p_attribute_value => '103333838137068029830____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 112365613096096122585,
    p_user_id => 'RAJON',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110700735009092191905,
    p_user_id => 'USER',
    p_preference_name => 'FSP_IR_215031_P14_W103333755440806029065',
    p_attribute_value => '103333854054885029844____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 110700740156725192482,
    p_user_id => 'USER',
    p_preference_name => 'FSP_IR_215031_P16_W103333776787721029430',
    p_attribute_value => '103333861620054029850____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103360739804116908371,
    p_user_id => 'USER',
    p_preference_name => 'FSP_IR_215031_P18_W103333800209263029796',
    p_attribute_value => '103333869434853029856____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 103404946753349664492,
    p_user_id => 'USER',
    p_preference_name => 'FSP_IR_215031_P4_W103333612426337027241',
    p_attribute_value => '103333821586915029816____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2D2D2044756D6D79206461746120666F7220424F4F4B53207461626C650D0A494E5345525420494E544F20424F4F4B532056414C55455320280D0A28313030312C202754686520477265617420476174736279272C2031352E39392C203130312C202746';
wwv_flow_imp.g_varchar2_table(2) := '2E2053636F7474204669747A676572616C64272C2027436C6173736963272C2027412073746F7279206F66206C6F76652C207765616C74682C20616E64207472616765647920696E2074686520526F6172696E67205477656E746965732E272C20273937';
wwv_flow_imp.g_varchar2_table(3) := '3830373433323733353635272C202753637269626E6572272C20544F5F444154452827313932352D30342D3130272C2027595959592D4D4D2D44442729292C0D0A28313030322C2027546F204B696C6C2061204D6F636B696E6762697264272C2031322E';
wwv_flow_imp.g_varchar2_table(4) := '35302C203130322C2027486172706572204C6565272C202746696374696F6E272C20274120706F77657266756C2073746F7279206F662072616369616C20696E6A75737469636520616E64206D6F72616C2067726F77746820696E207468652044656570';
wwv_flow_imp.g_varchar2_table(5) := '20536F7574682E272C202739373830303631313230303834272C202748617270657220506572656E6E69616C204D6F6465726E20436C617373696373272C20544F5F444154452827313936302D30372D3131272C2027595959592D4D4D2D44442729292C';
wwv_flow_imp.g_varchar2_table(6) := '0D0A28313030332C202731393834272C2031302E39392C203130332C202747656F726765204F7277656C6C272C2027447973746F7069616E272C20274120647973746F7069616E206E6F76656C20646570696374696E67206120746F74616C6974617269';
wwv_flow_imp.g_varchar2_table(7) := '616E20726567696D6520616E6420746865207374727567676C6520666F7220696E646976696475616C2066726565646F6D2E272C202739373830343531353234393335272C20275369676E657420436C617373696373272C20544F5F4441544528273139';
wwv_flow_imp.g_varchar2_table(8) := '34392D30362D3038272C2027595959592D4D4D2D44442729292C0D0A28313030342C2027507269646520616E64205072656A7564696365272C20382E39392C203130342C20274A616E652041757374656E272C2027526F6D616E6365272C20274120636C';
wwv_flow_imp.g_varchar2_table(9) := '617373696320726F6D616E6365206E6F76656C206578706C6F72696E67207468656D6573206F66206C6F76652C2072657075746174696F6E2C20616E6420736F6369616C20636C61737320696E2047656F726769616E20456E676C616E642E272C202739';
wwv_flow_imp.g_varchar2_table(10) := '373830313431343339353138272C202750656E6775696E20436C617373696373272C20544F5F444154452827313831332D30312D3238272C2027595959592D4D4D2D44442729292C0D0A28313030352C2027546865204361746368657220696E20746865';
wwv_flow_imp.g_varchar2_table(11) := '20527965272C20392E37352C203130352C20274A2E442E2053616C696E676572272C2027436F6D696E672D6F662D616765272C20274120636F6D696E672D6F662D616765206E6F76656C206E617272617465642062792061207465656E61676572207768';
wwv_flow_imp.g_varchar2_table(12) := '6F207374727567676C6573207769746820616C69656E6174696F6E20616E64206964656E746974792E272C202739373830333136373639343838272C20274261636B2042617920426F6F6B73272C20544F5F444154452827313935312D30372D3136272C';
wwv_flow_imp.g_varchar2_table(13) := '2027595959592D4D4D2D44442729292C0D0A28313030362C202754686520486F62626974272C2031312E32352C203130362C20274A2E522E522E20546F6C6B69656E272C202746616E74617379272C2027416E20616476656E74757265206E6F76656C20';
wwv_flow_imp.g_varchar2_table(14) := '666F6C6C6F77696E6720746865206A6F75726E6579206F662042696C626F2042616767696E7320617320686520656D6261726B73206F6E206120717565737420746F207265636C61696D2074726561737572652067756172646564206279206120647261';
wwv_flow_imp.g_varchar2_table(15) := '676F6E2E272C202739373830353437393238323237272C20274D6172696E657220426F6F6B73272C20544F5F444154452827313933372D30392D3231272C2027595959592D4D4D2D44442729292C0D0A28313030372C20275468652048756E6765722047';
wwv_flow_imp.g_varchar2_table(16) := '616D6573272C2031342E32302C203130372C202753757A616E6E6520436F6C6C696E73272C2027596F756E67204164756C74272C202754686520666972737420626F6F6B20696E206120647973746F7069616E207472696C6F6779207768657265207465';
wwv_flow_imp.g_varchar2_table(17) := '656E616765727320666967687420746F2074686520646561746820696E20612074656C65766973656420737065637461636C652E272C202739373830343339303233343831272C20275363686F6C6173746963205072657373272C20544F5F4441544528';
wwv_flow_imp.g_varchar2_table(18) := '27323030382D30392D3134272C2027595959592D4D4D2D44442729292C0D0A28313030382C20275468652044612056696E636920436F6465272C2031332E34352C203130382C202744616E2042726F776E272C20274D797374657279272C202741206D79';
wwv_flow_imp.g_varchar2_table(19) := '737465727920746872696C6C6572207468617420666F6C6C6F77732073796D626F6C6F6769737420526F62657274204C616E67646F6E20617320686520696E766573746967617465732061206D757264657220696E20746865204C6F75767265204D7573';
wwv_flow_imp.g_varchar2_table(20) := '65756D2E272C202739373830333037343734323738272C2027416E63686F7220426F6F6B73272C20544F5F444154452827323030332D30332D3138272C2027595959592D4D4D2D44442729292C0D0A28313030392C2027486172727920506F7474657220';
wwv_flow_imp.g_varchar2_table(21) := '616E6420746865205068696C6F736F706865722727732053746F6E65272C2031362E39392C203130392C20274A2E4B2E20526F776C696E67272C202746616E74617379272C202754686520666972737420626F6F6B20696E207468652048617272792050';
wwv_flow_imp.g_varchar2_table(22) := '6F74746572207365726965732C20666F6C6C6F77696E672074686520616476656E7475726573206F66206120796F756E672077697A6172642E272C202739373830373437353332373433272C2027426C6F6F6D7362757279205075626C697368696E6727';
wwv_flow_imp.g_varchar2_table(23) := '2C20544F5F444154452827313939372D30362D3236272C2027595959592D4D4D2D44442729292C0D0A28313031302C2027546865204C6F7264206F66207468652052696E67733A205468652046656C6C6F7773686970206F66207468652052696E67272C';
wwv_flow_imp.g_varchar2_table(24) := '2031392E37352C203131302C20274A2E522E522E20546F6C6B69656E272C202746616E74617379272C202754686520666972737420766F6C756D65206F662074686520657069632066616E74617379207365726965732073657420696E2074686520776F';
wwv_flow_imp.g_varchar2_table(25) := '726C64206F66204D6964646C652D65617274682E272C202739373830353437393238323130272C20274D6172696E657220426F6F6B73272C20544F5F444154452827313935342D30372D3239272C2027595959592D4D4D2D44442729290D0A293B0D0A0D';
wwv_flow_imp.g_varchar2_table(26) := '0A2D2D2044756D6D79206461746120666F722052455649455753207461626C650D0A494E5345525420494E544F20524556494557532056414C554553280D0A28312C20313030312C20313030312C2027352F35272C20274162736F6C7574656C79206C6F';
wwv_flow_imp.g_varchar2_table(27) := '7665642069742120412074696D656C65737320636C61737369632E27292C0D0A28322C20313030322C20313030322C2027342F35272C20274120636F6D70656C6C696E67207265616420776974682064656570207468656D65732E27292C0D0A28332C20';
wwv_flow_imp.g_varchar2_table(28) := '313030332C20313030332C2027352F35272C20274F7277656C6C2773206D617374657270696563653B2061206D7573742D7265616420666F722065766572796F6E652E27292C0D0A28342C20313030342C20313030342C2027342F35272C202744656C69';
wwv_flow_imp.g_varchar2_table(29) := '67687466756C206368617261637465727320616E64207769747479206469616C6F6775652E27292C0D0A28352C20313030352C20313030352C2027332F35272C2027496E746572657374696E67207065727370656374697665206F6E2061646F6C657363';
wwv_flow_imp.g_varchar2_table(30) := '656E63652E27292C0D0A28362C20313030362C20313030362C2027352F35272C202741206361707469766174696E6720616476656E747572652077697468206D656D6F7261626C6520636861726163746572732E27292C0D0A28372C20313030372C2031';
wwv_flow_imp.g_varchar2_table(31) := '3030372C2027342F35272C20274578636974696E6720616E642074686F756768742D70726F766F6B696E672E27292C0D0A28382C20313030382C20313030382C2027332F35272C2027466173742D706163656420616E6420656E7465727461696E696E67';
wwv_flow_imp.g_varchar2_table(32) := '2C20627574206C61636B732064657074682E27292C0D0A28392C20313030392C20313030392C2027352F35272C20274D61676963616C20616E6420656E6368616E74696E673B2061207472756520636C61737369632E27292C0D0A2831302C2031303130';
wwv_flow_imp.g_varchar2_table(33) := '2C20313031302C2027352F35272C2027416E2065706963206A6F75726E65792074686174206C656176657320796F752063726176696E6720666F72206D6F72652E27290D0A293B0D0A0D0A2D2D2044756D6D79206461746120666F72204F524445525F49';
wwv_flow_imp.g_varchar2_table(34) := '54454D53207461626C650D0A494E5345525420494E544F204F524445525F4954454D532056414C554553280D0A28312C20312C20313030312C20312C2031352E3939292C0D0A28322C20312C20313030322C20322C2032352E3030292C0D0A28332C2032';
wwv_flow_imp.g_varchar2_table(35) := '2C20313030332C20312C2031302E3939290D0A293B0D0A0D0A2D2D2044756D6D79206461746120666F722043415445474F52494553207461626C650D0A494E5345525420494E544F2043415445474F524945532056414C554553280D0A2827436C617373';
wwv_flow_imp.g_varchar2_table(36) := '696327292C0D0A282746696374696F6E27292C0D0A2827447973746F7069616E27292C0D0A2827526F6D616E636527292C0D0A2827436F6D696E672D6F662D61676527292C0D0A282746616E7461737927292C0D0A2827596F756E67204164756C742729';
wwv_flow_imp.g_varchar2_table(37) := '2C0D0A28274D79737465727927290D0A293B0D0A0D0A2D2D2044756D6D79206461746120666F7220555345525F4143434F554E54207461626C650D0A494E5345525420494E544F20555345525F4143434F554E542028555345525F49442C20555345525F';
wwv_flow_imp.g_varchar2_table(38) := '4E414D452C20454D41494C2C2050415353574F52445F48415348290D0A56414C554553280D0A28313030312C20277573657231272C20277573657231406578616D706C652E636F6D272C20276861736865645F70617373776F72645F3127292C0D0A2831';
wwv_flow_imp.g_varchar2_table(39) := '3030322C20277573657232272C20277573657232406578616D706C652E636F6D272C20276861736865645F70617373776F72645F3227292C0D0A28313030332C20277573657233272C20277573657233406578616D706C652E636F6D272C202768617368';
wwv_flow_imp.g_varchar2_table(40) := '65645F70617373776F72645F3327292C0D0A28313030342C20277573657234272C20277573657234406578616D706C652E636F6D272C20276861736865645F70617373776F72645F3427292C0D0A28313030352C20277573657235272C20277573657235';
wwv_flow_imp.g_varchar2_table(41) := '406578616D706C652E636F6D272C20276861736865645F70617373776F72645F3527292C0D0A28313030362C20277573657236272C20277573657236406578616D706C652E636F6D272C20276861736865645F70617373776F72645F3627292C0D0A2831';
wwv_flow_imp.g_varchar2_table(42) := '3030372C20277573657237272C20277573657237406578616D706C652E636F6D272C20276861736865645F70617373776F72645F3727290D0A293B0D0A';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 107404365407664648248,
    p_flow_id => 4500,
    p_name => '107404365407664648248/Data',
    p_pathid => null,
    p_filename => 'Data',
    p_title => 'Data',
    p_mime_type => 'application/octet-stream',
    p_dad_charset => 'UTF-8',
    p_created_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_created_on => to_date('202405102044','YYYYMMDDHH24MI'),
    p_updated_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_updated_on => to_date('202405102049','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406509464855961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 3
    ,p_src_line_number => 13
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406510793042961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 7
    ,p_src_line_number => 27
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406511375163961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 11
    ,p_src_line_number => 34
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406512431656961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 15
    ,p_src_line_number => 46
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406513553743961207
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 19
    ,p_src_line_number => 58
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406508264826961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 2
    ,p_offset => 32
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO BOOKS VALUES ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406508310031961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 3
    ,p_offset => 60
    ,p_length => 205
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1001, ''The Great Gatsby'', 15.99, 101, ''F. Scott Fitzgerald'', ''Classic'', ''A story of love, wealth, and tragedy in the Roaring Twenties.'', ''9780743273565'', ''Scribner'', TO_DATE(''1925-04-10'', ''YYYY-MM-DD'')), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406508460383961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 4
    ,p_offset => 266
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1002, ''To Kill a Mockingbird'', 12.50, 102, ''Harper Lee'', ''Fiction'', ''A powerful story of racial injustice and moral growth in the Deep South.'', ''9780061120084'', ''Harper Perennial Modern Classics'', TO_DATE(''1960-07-11'', ''YYYY-MM-DD'')), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406508507779961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 5
    ,p_offset => 503
    ,p_length => 225
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1003, ''1984'', 10.99, 103, ''George Orwell'', ''Dystopian'', ''A dystopian novel depicting a totalitarian regime and the struggle for individual freedom.'', ''9780451524935'', ''Signet Classics'', TO_DATE(''1949-06-08'', ''YYYY-MM-DD'')), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406508624388961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 6
    ,p_offset => 729
    ,p_length => 245
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1004, ''Pride and Prejudice'', 8.99, 104, ''Jane Austen'', ''Romance'', ''A classic romance novel exploring themes of love, reputation, and social class in Georgian England.'', ''9780141439518'', ''Penguin Classics'', TO_DATE(''1813-01-28'', ''YYYY-MM-DD'')), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406508746161961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 7
    ,p_offset => 975
    ,p_length => 243
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1005, ''The Catcher in the Rye'', 9.75, 105, ''J.D. Salinger'', ''Coming-of-age'', ''A coming-of-age novel narrated by a teenager who struggles with alienation and identity.'', ''9780316769488'', ''Back Bay Books'', TO_DATE(''1951-07-16'', ''YYYY-MM-DD'')), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406508874964961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 8
    ,p_offset => 1219
    ,p_length => 261
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1006, ''The Hobbit'', 11.25, 106, ''J.R.R. Tolkien'', ''Fantasy'', ''An adventure novel following the journey of Bilbo Baggins as he embarks on a quest to reclaim treasure guarded by a dragon.'', ''9780547928227'', ''Mariner Books'', TO_DATE(''1937-09-21'', ''YYYY-MM-DD'')), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406508962090961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 9
    ,p_offset => 1481
    ,p_length => 250
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1007, ''The Hunger Games'', 14.20, 107, ''Suzanne Collins'', ''Young Adult'', ''The first book in a dystopian trilogy where teenagers fight to the death in a televised spectacle.'', ''9780439023481'', ''Scholastic Press'', TO_DATE(''2008-09-14'', ''YYYY-MM-DD'')), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406509034623961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 10
    ,p_offset => 1732
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1008, ''The Da Vinci Code'', 13.45, 108, ''Dan Brown'', ''Mystery'', ''A mystery thriller that follows symbologist Robert Langdon as he investigates a murder in the Louvre Museum.'', ''9780307474278'', ''Anchor Books'', TO_DATE(''2003-03-18'', ''YYYY-MM-DD'')), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406509147737961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 11
    ,p_offset => 1980
    ,p_length => 261
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1009, ''Harry Potter and the Philosopher''''s Stone'', 16.99, 109, ''J.K. Rowling'', ''Fantasy'', ''The first book in the Harry Potter series, following the adventures of a young wizard.'', ''9780747532743'', ''Bloomsbury Publishing'', TO_DATE(''1997-06-26'', ''YYYY-MM-DD'')), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406509210319961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 12
    ,p_offset => 2242
    ,p_length => 253
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1010, ''The Lord of the Rings: The Fellowship of the Ring'', 19.75, 110, ''J.R.R. Tolkien'', ''Fantasy'', ''The first volume of the epic fantasy series set in the world of Middle-earth.'', ''9780547928210'', ''Mariner Books'', TO_DATE(''1954-07-29'', ''YYYY-MM-DD'')) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406509348361961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 2
    ,p_src_line_number => 13
    ,p_offset => 2496
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406509574199961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 16
    ,p_offset => 2535
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO REVIEWS VALUES( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406509660396961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 17
    ,p_offset => 2564
    ,p_length => 68
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1, 1001, 1001, ''5/5'', ''Absolutely loved it! A timeless classic.''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406509716515961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 18
    ,p_offset => 2633
    ,p_length => 63
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(2, 1002, 1002, ''4/5'', ''A compelling read with deep themes.''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406509826934961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 19
    ,p_offset => 2697
    ,p_length => 75
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(3, 1003, 1003, ''5/5'', ''Orwell''s masterpiece; a must-read for everyone.''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406509929754961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 20
    ,p_offset => 2773
    ,p_length => 69
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(4, 1004, 1004, ''4/5'', ''Delightful characters and witty dialogue.''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406510303858961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 24
    ,p_offset => 3050
    ,p_length => 73
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(8, 1008, 1008, ''3/5'', ''Fast-paced and entertaining, but lacks depth.''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406510471324961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 25
    ,p_offset => 3124
    ,p_length => 67
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(9, 1009, 1009, ''5/5'', ''Magical and enchanting; a true classic.''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406510509988961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 26
    ,p_offset => 3192
    ,p_length => 77
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(10, 1010, 1010, ''5/5'', ''An epic journey that leaves you craving for more.'') '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406510608841961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 27
    ,p_offset => 3270
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406510099786961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 21
    ,p_offset => 2843
    ,p_length => 67
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(5, 1005, 1005, ''3/5'', ''Interesting perspective on adolescence.''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406510183360961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 22
    ,p_offset => 2911
    ,p_length => 78
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(6, 1006, 1006, ''5/5'', ''A captivating adventure with memorable characters.''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406510234627961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 6
    ,p_src_line_number => 23
    ,p_offset => 2990
    ,p_length => 59
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7, 1007, 1007, ''4/5'', ''Exciting and thought-provoking.''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406510801332961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 10
    ,p_src_line_number => 30
    ,p_offset => 3313
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO ORDER_ITEMS VALUES( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406510910171961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 10
    ,p_src_line_number => 31
    ,p_offset => 3346
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1, 1, 1001, 1, 15.99), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406511037850961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 10
    ,p_src_line_number => 32
    ,p_offset => 3371
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(2, 1, 1002, 2, 25.00), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406511158393961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 10
    ,p_src_line_number => 33
    ,p_offset => 3396
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(3, 2, 1003, 1, 10.99) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406511279644961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 10
    ,p_src_line_number => 34
    ,p_offset => 3420
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406511403099961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 14
    ,p_src_line_number => 37
    ,p_offset => 3462
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO CATEGORIES VALUES( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406511566790961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 14
    ,p_src_line_number => 38
    ,p_offset => 3494
    ,p_length => 13
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(''Classic''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406511673150961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 14
    ,p_src_line_number => 39
    ,p_offset => 3508
    ,p_length => 13
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(''Fiction''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406511759962961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 14
    ,p_src_line_number => 40
    ,p_offset => 3522
    ,p_length => 15
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(''Dystopian''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406511864771961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 14
    ,p_src_line_number => 41
    ,p_offset => 3538
    ,p_length => 13
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(''Romance''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406511980642961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 14
    ,p_src_line_number => 42
    ,p_offset => 3552
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(''Coming-of-age''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406512069741961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 14
    ,p_src_line_number => 43
    ,p_offset => 3572
    ,p_length => 13
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(''Fantasy''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406512100477961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 14
    ,p_src_line_number => 44
    ,p_offset => 3586
    ,p_length => 17
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(''Young Adult''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406512231726961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 14
    ,p_src_line_number => 45
    ,p_offset => 3604
    ,p_length => 12
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(''Mystery'') '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406512325018961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 14
    ,p_src_line_number => 46
    ,p_offset => 3617
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406512580462961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 18
    ,p_src_line_number => 49
    ,p_offset => 3661
    ,p_length => 68
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406512618935961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 18
    ,p_src_line_number => 50
    ,p_offset => 3730
    ,p_length => 8
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406512757299961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 18
    ,p_src_line_number => 51
    ,p_offset => 3739
    ,p_length => 59
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1001, ''user1'', ''user1@example.com'', ''hashed_password_1''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406512888328961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 18
    ,p_src_line_number => 52
    ,p_offset => 3799
    ,p_length => 59
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1002, ''user2'', ''user2@example.com'', ''hashed_password_2''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406512903300961206
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 18
    ,p_src_line_number => 53
    ,p_offset => 3859
    ,p_length => 59
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1003, ''user3'', ''user3@example.com'', ''hashed_password_3''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406513067295961207
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 18
    ,p_src_line_number => 54
    ,p_offset => 3919
    ,p_length => 59
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1004, ''user4'', ''user4@example.com'', ''hashed_password_4''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406513147022961207
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 18
    ,p_src_line_number => 55
    ,p_offset => 3979
    ,p_length => 59
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1005, ''user5'', ''user5@example.com'', ''hashed_password_5''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406513275854961207
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 18
    ,p_src_line_number => 56
    ,p_offset => 4039
    ,p_length => 59
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1006, ''user6'', ''user6@example.com'', ''hashed_password_6''), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406513315001961207
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 18
    ,p_src_line_number => 57
    ,p_offset => 4099
    ,p_length => 58
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(1007, ''user7'', ''user7@example.com'', ''hashed_password_7'') '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 107406513403816961207
    ,p_file_id => 107404365407664648248
    ,p_stmt_number => 18
    ,p_src_line_number => 58
    ,p_offset => 4158
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 107406514545507962090,
    p_file_id => 107404365407664648248,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405102049','YYYYMMDDHH24MI'),
    p_start_time => 43962091,
    p_ended => to_date('202405102049','YYYYMMDDHH24MI'),
    p_end_time => 43962094,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 107406514890149962092
    ,p_result_id => 107406514545507962090
    ,p_file_id => 107404365407664648248
    ,p_seq_id => 3
    ,p_stmt_num => 10
 ,p_stmt_text => 
'INSERT INTO ORDER_ITEMS VALUES( (1, 1, 1001, 1, 15.99), (2, 1, 1002, 2, 25.00), (3, 2, 1003, 1, 10.99) )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 2/3: ORA-00907: missing right parenthesis'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405102049','YYYYMMDDHH24MI')
    ,p_start_time => 43962092
    ,p_ended => to_date('202405102049','YYYYMMDDHH24MI')
    ,p_end_time => 43962093
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405102049','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 107406514940483962093
    ,p_result_id => 107406514545507962090
    ,p_file_id => 107404365407664648248
    ,p_seq_id => 4
    ,p_stmt_num => 14
 ,p_stmt_text => 
'INSERT INTO CATEGORIES VALUES( (''Classic''), (''Fiction''), (''Dystopian''), (''Romance''), (''Coming-of-age''), (''Fantasy''), (''Young Adult''), (''Mystery'') )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00913: too many values'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405102049','YYYYMMDDHH24MI')
    ,p_start_time => 43962093
    ,p_ended => to_date('202405102049','YYYYMMDDHH24MI')
    ,p_end_time => 43962093
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405102049','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 107406515099558962093
    ,p_result_id => 107406514545507962090
    ,p_file_id => 107404365407664648248
    ,p_seq_id => 5
    ,p_stmt_num => 18
 ,p_stmt_text => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH) VALUES( (1001, ''user1'', ''user1@example.com'', ''hashed_password_1''), (1002, ''user2'', ''user2@example.com'', ''hashed_password_2''), (1003, ''user3'', ''user3@example.com'', ''hashed_password_3''), (1004, ''user4'', ''user4@example.com'', ''hashed_password_4''), (1005, ''user5'', ''user5@example.com'', ''hashed_password_5''), (1006, ''user6'', ''user6@exampl'||
'e.com'', ''hashed_password_6''), (1007, ''user7'', ''user7@example.com'', ''hashed_password_7'') )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 3/6: ORA-00907: missing right parenthesis'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405102049','YYYYMMDDHH24MI')
    ,p_start_time => 43962093
    ,p_ended => to_date('202405102049','YYYYMMDDHH24MI')
    ,p_end_time => 43962094
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405102049','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 107406514608287962091
    ,p_result_id => 107406514545507962090
    ,p_file_id => 107404365407664648248
    ,p_seq_id => 1
    ,p_stmt_num => 2
 ,p_stmt_text => 
'INSERT INTO BOOKS VALUES ( (1001, ''The Great Gatsby'', 15.99, 101, ''F. Scott Fitzgerald'', ''Classic'', ''A story of love, wealth, and tragedy in the Roaring Twenties.'', ''9780743273565'', ''Scribner'', TO_DATE(''1925-04-10'', ''YYYY-MM-DD'')), (1002, ''To Kill a Mockingbird'', 12.50, 102, ''Harper Lee'', ''Fiction'', ''A powerful story of racial injustice and moral growth in the Deep South.'', ''9780061120084'', ''Harpe'||
'r Perennial Modern Classics'', TO_DATE(''1960-07-11'', ''YYYY-MM-DD'')), (1003, ''1984'', 10.99, 103, ''George Orwell'', ''Dystopian'', ''A dystopian novel depicting a totalitarian regime and the struggle for individual freedom.'', ''9780451524935'', ''Signet Classics'', TO_DATE(''1949-06-08'', ''YYYY-MM-DD'')), (1004, ''Pride and Prejudice'', 8.99, 104, ''Jane Austen'', ''Romance'', ''A classic romance novel exploring theme'||
's of love, reputation, and social class in Georgian England.'', ''9780141439518'', ''Penguin Classics'', TO_DATE(''1813-01-28'', ''YYYY-MM-DD'')), (1005, ''The Catcher in the Rye'', 9.75, 105, ''J.D. Salinger'', ''Coming-of-age'', ''A coming-of-age novel narrated by a teenager who struggles with alienation and identity.'', ''9780316769488'', ''Back Bay Books'', TO_DATE(''1951-07-16'', ''YYYY-MM-DD'')), (1006, ''The Hobbit'''||
', 11.25, 106, ''J.R.R. Tolkien'', ''Fantasy'', ''An adventure novel following the journey of Bilbo Baggins as he embarks on a quest to reclaim treasure guarded by a dragon.'', ''9780547928227'', ''Mariner Books'', TO_DATE(''1937-09-21'', ''YYYY-MM-DD'')), (1007, ''The Hunger Games'', 14.20, 107, ''Suzanne Collins'', ''Young Adult'', ''The first book in a dystopian trilogy where teenagers fight to the death in a televi'||
'sed spectacle.'', ''9780439023481'', ''Scholastic Press'', TO_DATE(''2008-09-14'', ''YYYY-MM-DD'')), (1008, ''The Da Vinci Code'', 13.45, 108, ''Dan Brown'', ''Mystery'', ''A mystery thriller that follows symbologist Robert Langdon as he investigates a murder in the Louvre Museum.'', ''9780307474278'', ''Anchor Books'', TO_DATE(''2003-03-18'', ''YYYY-MM-DD'')), (1009, ''Harry Potter and the Philosopher''''s Stone'', 16.99, 10'||
'9, ''J.K. Rowling'', ''Fantasy'', ''The first book in the Harry Potter series, following the adventures of a young wizard.'', ''9780747532743'', ''Bloomsbury Publishing'', TO_DATE(''1997-06-26'', ''YYYY-MM-DD'')), (1010, ''The Lord of the Rings: The Fellowship of the Ring'', 19.75, 110, ''J.R.R. Tolkien'', ''Fantasy'', ''The first volume of the epic fantasy series set in the world of Middle-earth.'', ''9780547928210'', '''||
'Mariner Books'', TO_DATE(''1954-07-29'', ''YYYY-MM-DD'')) )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 2/6: ORA-00907: missing right parenthesis'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405102049','YYYYMMDDHH24MI')
    ,p_start_time => 43962091
    ,p_ended => to_date('202405102049','YYYYMMDDHH24MI')
    ,p_end_time => 43962092
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405102049','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 107406514757648962092
    ,p_result_id => 107406514545507962090
    ,p_file_id => 107404365407664648248
    ,p_seq_id => 2
    ,p_stmt_num => 6
 ,p_stmt_text => 
'INSERT INTO REVIEWS VALUES( (1, 1001, 1001, ''5/5'', ''Absolutely loved it! A timeless classic.''), (2, 1002, 1002, ''4/5'', ''A compelling read with deep themes.''), (3, 1003, 1003, ''5/5'', ''Orwell''s masterpiece; a must-read for everyone.''), (4, 1004, 1004, ''4/5'', ''Delightful characters and witty dialogue.''), (5, 1005, 1005, ''3/5'', ''Interesting perspective on adolescence.''), (6, 1006, 1006, ''5/5'', ''A capt'||
'ivating adventure with memorable characters.''), (7, 1007, 1007, ''4/5'', ''Exciting and thought-provoking.''), (8, 1008, 1008, ''3/5'', ''Fast-paced and entertaining, but lacks depth.''), (9, 1009, 1009, ''5/5'', ''Magical and enchanting; a true classic.''), (10, 1010, 1010, ''5/5'', ''An epic journey that leaves you craving for more.'') )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 2/3: ORA-00907: missing right parenthesis'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405102049','YYYYMMDDHH24MI')
    ,p_start_time => 43962092
    ,p_ended => to_date('202405102049','YYYYMMDDHH24MI')
    ,p_end_time => 43962092
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405102049','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2D2D205374657020313A2043726561746520746865206D616E6167655F6F7264657273205061636B61676520616E642046756E6374696F6E0D0A0D0A2D2D205061636B6167652053706563696669636174696F6E0D0A435245415445204F52205245504C';
wwv_flow_imp.g_varchar2_table(2) := '414345205041434B414745206D616E6167655F6F72646572732041530D0A202046554E4354494F4E206765745F7175616E746974792052455455524E204E554D4245523B0D0A454E44206D616E6167655F6F72646572733B0D0A2F0D0A0D0A2D2D205061';
wwv_flow_imp.g_varchar2_table(3) := '636B61676520426F64790D0A435245415445204F52205245504C414345205041434B41474520424F4459206D616E6167655F6F72646572732041530D0A202046554E4354494F4E206765745F7175616E746974792052455455524E204E554D4245522049';
wwv_flow_imp.g_varchar2_table(4) := '530D0A202020206C5F7175616E74697479204E554D4245523B0D0A2020424547494E0D0A202020202D2D205265706C61636520746869732077697468207468652061637475616C206C6F67696320746F2067657420746865207175616E74697479206672';
wwv_flow_imp.g_varchar2_table(5) := '6F6D2074686520636172740D0A2020202053454C4543542053554D287175616E74697479290D0A20202020494E544F2020206C5F7175616E746974790D0A2020202046524F4D20202063617274202D2D20417373756D696E672027636172742720697320';
wwv_flow_imp.g_varchar2_table(6) := '746865207461626C6520686F6C64696E67207468652063617274206974656D730D0A2020202057484552452020757365725F6964203D203A4150505F555345523B202D2D20417373756D696E6720796F7520686176652061207573657220636F6E746578';
wwv_flow_imp.g_varchar2_table(7) := '740D0A2020202052455455524E204E564C286C5F7175616E746974792C2030293B0D0A2020454E44206765745F7175616E746974793B0D0A454E44206D616E6167655F6F72646572733B0D0A2F0D0A0D0A2D2D205374657020323A205573652074686520';
wwv_flow_imp.g_varchar2_table(8) := '504C2F53514C20426C6F636B20696E20415045580D0A2D2D204E6F74653A20546869732070617274206E6565647320746F2062652073657420757020696E204F7261636C652041504558206173206120504C2F53514C2070726F636573730D0A2D2D2054';
wwv_flow_imp.g_varchar2_table(9) := '686520666F6C6C6F77696E6720636F64652073686F756C6420626520636F7069656420696E746F206120504C2F53514C2070726F6365737320696E20796F7572204150455820706167650D0A0D0A4445434C4152450D0A202020206C5F636E74204E554D';
wwv_flow_imp.g_varchar2_table(10) := '424552203A3D206D616E6167655F6F72646572732E6765745F7175616E746974793B20202D2D20466574636820746865207175616E746974792066726F6D207468652066756E6374696F6E0D0A424547494E0D0A202020204946206C5F636E74203E2030';
wwv_flow_imp.g_varchar2_table(11) := '205448454E0D0A20202020202020203A53484F5050494E475F434152545F4954454D53203A3D206C5F636E743B202020202020202020202D2D205365742074686520636F756E74206F66206974656D7320696E207468652073686F7070696E6720636172';
wwv_flow_imp.g_varchar2_table(12) := '740D0A20202020202020203A53484F5050494E475F434152545F49434F4E203A3D202766612D636172742D66756C6C273B20202D2D20536574207468652069636F6E20746F2066756C6C20636172740D0A20202020454C53450D0A20202020202020203A';
wwv_flow_imp.g_varchar2_table(13) := '53484F5050494E475F434152545F4954454D53203A3D2027273B202020202020202020202020202D2D20436C65617220746865206974656D20636F756E740D0A20202020202020203A53484F5050494E475F434152545F49434F4E203A3D202766612D63';
wwv_flow_imp.g_varchar2_table(14) := '6172742D656D707479273B202D2D20536574207468652069636F6E20746F20656D70747920636172740D0A20202020454E442049463B0D0A454E443B0D0A';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 111716844758596702537,
    p_flow_id => 4500,
    p_name => '111716844758596702537/ManageOrders',
    p_pathid => null,
    p_filename => 'ManageOrders',
    p_title => 'ManageOrders',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_created_on => to_date('202405181946','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716845174477702537
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 5
    ,p_src_line_number => 7
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716846451237702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 9
    ,p_src_line_number => 22
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716844821361702537
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 4
    ,p_src_line_number => 4
    ,p_offset => 87
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE PACKAGE manage_orders AS '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716844973382702537
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 4
    ,p_src_line_number => 5
    ,p_offset => 131
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FUNCTION get_quantity RETURN NUMBER; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716845056430702537
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 4
    ,p_src_line_number => 6
    ,p_offset => 171
    ,p_length => 19
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END manage_orders; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716845228660702537
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 10
    ,p_offset => 213
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE PACKAGE BODY manage_orders AS '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716845317265702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 11
    ,p_offset => 262
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FUNCTION get_quantity RETURN NUMBER IS '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716845442257702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 12
    ,p_offset => 304
    ,p_length => 23
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_quantity NUMBER; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716845590723702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 13
    ,p_offset => 328
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716845605269702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 14
    ,p_offset => 337
    ,p_length => 76
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Replace this with the actual logic to get the quantity from the cart '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716845743284702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 15
    ,p_offset => 414
    ,p_length => 25
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT SUM(quantity) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716845821040702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 16
    ,p_offset => 440
    ,p_length => 22
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    INTO   l_quantity '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716845986622702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 17
    ,p_offset => 463
    ,p_length => 71
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FROM   cart -- Assuming ''cart'' is the table holding the cart items '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716846097086702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 18
    ,p_offset => 535
    ,p_length => 68
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    WHERE  user_id = :APP_USER; -- Assuming you have a user context '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716846167020702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 19
    ,p_offset => 604
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    RETURN NVL(l_quantity, 0); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716846211118702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 20
    ,p_offset => 636
    ,p_length => 20
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  END get_quantity; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716846307255702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 8
    ,p_src_line_number => 21
    ,p_offset => 657
    ,p_length => 19
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END manage_orders; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716846561992702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 28
    ,p_offset => 879
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'DECLARE '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716846650317702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 29
    ,p_offset => 888
    ,p_length => 89
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_cnt NUMBER := manage_orders.get_quantity;  -- Fetch the quantity from the function '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716846732304702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 30
    ,p_offset => 978
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716846813087702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 31
    ,p_offset => 985
    ,p_length => 22
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    IF l_cnt > 0 THEN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716846990782702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 32
    ,p_offset => 1008
    ,p_length => 95
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        :SHOPPING_CART_ITEMS := l_cnt;          -- Set the count of items in the shopping cart '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716847030041702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 33
    ,p_offset => 1104
    ,p_length => 77
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        :SHOPPING_CART_ICON := ''fa-cart-full'';  -- Set the icon to full cart '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716847164896702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 34
    ,p_offset => 1182
    ,p_length => 9
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ELSE '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716847217389702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 35
    ,p_offset => 1192
    ,p_length => 72
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        :SHOPPING_CART_ITEMS := '''';             -- Clear the item count '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716847325196702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 36
    ,p_offset => 1265
    ,p_length => 78
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        :SHOPPING_CART_ICON := ''fa-cart-empty''; -- Set the icon to empty cart '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716847468365702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 37
    ,p_offset => 1344
    ,p_length => 12
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END IF; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111716847525815702538
    ,p_file_id => 111716844758596702537
    ,p_stmt_number => 15
    ,p_src_line_number => 38
    ,p_offset => 1357
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 111716856017421703038,
    p_file_id => 111716844758596702537,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405181946','YYYYMMDDHH24MI'),
    p_start_time => 112703039,
    p_ended => to_date('202405181946','YYYYMMDDHH24MI'),
    p_end_time => 112703043,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 111716856690764703039
    ,p_result_id => 111716856017421703038
    ,p_file_id => 111716844758596702537
    ,p_seq_id => 1
    ,p_stmt_num => 4
 ,p_stmt_text => 
'CREATE OR REPLACE PACKAGE manage_orders AS   FUNCTION get_quantity RETURN NUMBER; END manage_orders; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Package created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405181946','YYYYMMDDHH24MI')
    ,p_start_time => 112703039
    ,p_ended => to_date('202405181946','YYYYMMDDHH24MI')
    ,p_end_time => 112703041
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405181946','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 111716857200245703041
    ,p_result_id => 111716856017421703038
    ,p_file_id => 111716844758596702537
    ,p_seq_id => 2
    ,p_stmt_num => 8
 ,p_stmt_text => 
'CREATE OR REPLACE PACKAGE BODY manage_orders AS   FUNCTION get_quantity RETURN NUMBER IS     l_quantity NUMBER;   BEGIN     -- Replace this with the actual logic to get the quantity from the cart     SELECT SUM(quantity)     INTO   l_quantity     FROM   cart -- Assuming ''cart'' is the table holding the cart items     WHERE  user_id = :APP_USER; -- Assuming you have a user context     RETURN NVL(l_q'||
'uantity, 0);   END get_quantity; END manage_orders; '
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 9: PLS-00049: bad bind variable ''APP_USER'''
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405181946','YYYYMMDDHH24MI')
    ,p_start_time => 112703041
    ,p_ended => to_date('202405181946','YYYYMMDDHH24MI')
    ,p_end_time => 112703042
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405181946','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 111716857602819703042
    ,p_result_id => 111716856017421703038
    ,p_file_id => 111716844758596702537
    ,p_seq_id => 3
    ,p_stmt_num => 15
 ,p_stmt_text => 
'DECLARE     l_cnt NUMBER := manage_orders.get_quantity;  -- Fetch the quantity from the function BEGIN     IF l_cnt > 0 THEN         :SHOPPING_CART_ITEMS := l_cnt;          -- Set the count of items in the shopping cart         :SHOPPING_CART_ICON := ''fa-cart-full'';  -- Set the icon to full cart     ELSE         :SHOPPING_CART_ITEMS := '''';             -- Clear the item count         :SHOPPING_CART'||
'_ICON := ''fa-cart-empty''; -- Set the icon to empty cart     END IF; END; '
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-04063: package body "WKSP_ONLINEBOOKSTORE.MANAGE_ORDERS" has errors'||wwv_flow.LF||
'ORA-06508: PL/SQL: could not find program unit being called: "WKSP_ONLINEBOOKSTORE.MANAGE_ORDERS"'||wwv_flow.LF||
'ORA-06512: at line 2'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405181946','YYYYMMDDHH24MI')
    ,p_start_time => 112703042
    ,p_ended => to_date('202405181946','YYYYMMDDHH24MI')
    ,p_end_time => 112703043
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405181946','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '435245415445204F52205245504C4143452046554E4354494F4E20637573746F6D5F6175746820280D0A20202020705F757365726E616D6520494E2056415243484152322C0D0A20202020705F70617373776F726420494E2056415243484152320D0A29';
wwv_flow_imp.g_varchar2_table(2) := '2052455455524E20424F4F4C45414E0D0A41530D0A202020206C5F757365725F6964204E554D4245523B0D0A424547494E0D0A202020202D2D20436865636B2069662074686520757365722065786973747320776974682074686520676976656E207573';
wwv_flow_imp.g_varchar2_table(3) := '65726E616D6520616E642070617373776F72640D0A2020202053454C454354203120494E544F206C5F757365725F6964200D0A2020202046524F4D20555345525F4143434F554E540D0A20202020574845524520555345525F4E414D45203D20705F7573';
wwv_flow_imp.g_varchar2_table(4) := '65726E616D650D0A202020202020414E442050415353574F52445F48415348203D20705F70617373776F72643B202D2D20456E73757265207468697320697320746865206861736865642070617373776F72640D0A0D0A202020202D2D2049662061206D';
wwv_flow_imp.g_varchar2_table(5) := '6174636820697320666F756E642C2072657475726E20747275650D0A2020202052455455524E20545255453B0D0A455843455054494F4E0D0A202020205748454E204E4F5F444154415F464F554E44205448454E0D0A20202020202020202D2D20496620';
wwv_flow_imp.g_varchar2_table(6) := '6E6F206D6174636820697320666F756E642C2072657475726E2066616C73650D0A202020202020202052455455524E2046414C53453B0D0A202020205748454E204F5448455253205448454E0D0A20202020202020202D2D2048616E646C6520616E7920';
wwv_flow_imp.g_varchar2_table(7) := '6F7468657220657863657074696F6E730D0A202020202020202052455455524E2046414C53453B0D0A454E4420637573746F6D5F617574683B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 111821252798949096203,
    p_flow_id => 4500,
    p_name => '111821252798949096203/custom_auth',
    p_pathid => null,
    p_filename => 'custom_auth',
    p_title => 'custom_auth',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_created_on => to_date('202405190630','YYYYMMDDHH24MI'),
    p_updated_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_updated_on => to_date('202405190743','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841862839615532886
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE FUNCTION custom_auth ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841862974827532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 43
    ,p_length => 28
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    p_username IN VARCHAR2, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841863056567532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 72
    ,p_length => 27
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    p_password IN VARCHAR2 '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841863191361532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 100
    ,p_length => 17
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ') RETURN BOOLEAN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841863259197532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 118
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'AS '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841863307081532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 122
    ,p_length => 22
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_user_id NUMBER; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841863424879532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 145
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841863570602532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 152
    ,p_length => 69
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Check if the user exists with the given username and password '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841863623354532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 222
    ,p_length => 29
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    SELECT 1 INTO l_user_id  '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841863754252532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 252
    ,p_length => 22
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FROM USER_ACCOUNT '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841863881529532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 11
    ,p_offset => 275
    ,p_length => 33
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    WHERE USER_NAME = p_username '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841863912190532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 12
    ,p_offset => 309
    ,p_length => 76
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      AND PASSWORD_HASH = p_password; -- Ensure this is the hashed password '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841864062934532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 13
    ,p_offset => 386
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841864183005532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 14
    ,p_offset => 388
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- If a match is found, return true '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841864225289532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 15
    ,p_offset => 429
    ,p_length => 17
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    RETURN TRUE; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841864319724532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 16
    ,p_offset => 447
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'EXCEPTION '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841864450307532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 17
    ,p_offset => 458
    ,p_length => 28
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    WHEN NO_DATA_FOUND THEN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841864523887532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 18
    ,p_offset => 487
    ,p_length => 46
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- If no match is found, return false '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841864643510532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 19
    ,p_offset => 534
    ,p_length => 22
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        RETURN FALSE; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841864726292532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 20
    ,p_offset => 557
    ,p_length => 21
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    WHEN OTHERS THEN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841864807845532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 21
    ,p_offset => 579
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- Handle any other exceptions '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841864910817532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 22
    ,p_offset => 619
    ,p_length => 22
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        RETURN FALSE; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111841865001613532887
    ,p_file_id => 111821252798949096203
    ,p_stmt_number => 1
    ,p_src_line_number => 23
    ,p_offset => 642
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END custom_auth;'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 111842236073128795783,
    p_file_id => 111821252798949096203,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405190743','YYYYMMDDHH24MI'),
    p_start_time => 795784,
    p_ended => to_date('202405190743','YYYYMMDDHH24MI'),
    p_end_time => 795787,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 111842236140109795784
    ,p_result_id => 111842236073128795783
    ,p_file_id => 111821252798949096203
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE OR REPLACE FUNCTION custom_auth (     p_username IN VARCHAR2,     p_password IN VARCHAR2 ) RETURN BOOLEAN AS     l_user_id NUMBER; BEGIN     -- Check if the user exists with the given username and password     SELECT 1 INTO l_user_id      FROM USER_ACCOUNT     WHERE USER_NAME = p_username       AND PASSWORD_HASH = p_password; -- Ensure this is the hashed password      -- If a match is found'||
', return true     RETURN TRUE; EXCEPTION     WHEN NO_DATA_FOUND THEN         -- If no match is found, return false         RETURN FALSE;     WHEN OTHERS THEN         -- Handle any other exceptions         RETURN FALSE; END custom_auth;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Function created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405190743','YYYYMMDDHH24MI')
    ,p_start_time => 795784
    ,p_ended => to_date('202405190743','YYYYMMDDHH24MI')
    ,p_end_time => 795787
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405190743','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 111821476339942368449,
    p_file_id => 111821252798949096203,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405190632','YYYYMMDDHH24MI'),
    p_start_time => 368449,
    p_ended => to_date('202405190632','YYYYMMDDHH24MI'),
    p_end_time => 368453,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 111821476499655368450
    ,p_result_id => 111821476339942368449
    ,p_file_id => 111821252798949096203
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE OR REPLACE FUNCTION custom_auth (     p_username IN VARCHAR2,     p_password IN VARCHAR2 ) RETURN BOOLEAN AS     l_user_id NUMBER; BEGIN     -- Check if the user exists with the given username and password     SELECT 1 INTO l_user_id      FROM USER_ACCOUNT     WHERE USER_NAME = p_username       AND PASSWORD_HASH = p_password; -- Ensure this is the hashed password      -- If a match is found'||
', return true     RETURN TRUE; EXCEPTION     WHEN NO_DATA_FOUND THEN         -- If no match is found, return false         RETURN FALSE;     WHEN OTHERS THEN         -- Handle any other exceptions         RETURN FALSE; END custom_auth; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Function created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405190632','YYYYMMDDHH24MI')
    ,p_start_time => 368450
    ,p_ended => to_date('202405190632','YYYYMMDDHH24MI')
    ,p_end_time => 368452
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405190632','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 111840744328835500864,
    p_file_id => 111821252798949096203,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405190738','YYYYMMDDHH24MI'),
    p_start_time => 500864,
    p_ended => to_date('202405190738','YYYYMMDDHH24MI'),
    p_end_time => 500867,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 111840744496148500865
    ,p_result_id => 111840744328835500864
    ,p_file_id => 111821252798949096203
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE OR REPLACE FUNCTION custom_auth (     p_username IN VARCHAR2,     p_password IN VARCHAR2 ) RETURN NUMBER AS     l_user_id NUMBER; BEGIN     -- Check if the user exists with the given username and hashed password     SELECT USER_ID INTO l_user_id      FROM USER_ACCOUNT     WHERE USER_NAME = p_username       AND PASSWORD_HASH = HASH_FUNCTION(p_password); -- Ensure HASH_FUNCTION is replaced wi'||
'th your actual hashing function      -- If a match is found, return the user ID     RETURN l_user_id; EXCEPTION     WHEN NO_DATA_FOUND THEN         -- If no match is found, return 0 or NULL (indicating authentication failure)         RETURN NULL;     WHEN OTHERS THEN         -- Log or handle the exception appropriately         DBMS_OUTPUT.PUT_LINE(''Error in custom_auth: '' || SQLERRM);         RETU'||
'RN NULL; END custom_auth; '
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 9: PL/SQL: SQL Statement ignored'||wwv_flow.LF||
'Error at line 12: PL/SQL: ORA-00904: "HASH_FUNCTION": invalid identifier'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405190738','YYYYMMDDHH24MI')
    ,p_start_time => 500865
    ,p_ended => to_date('202405190738','YYYYMMDDHH24MI')
    ,p_end_time => 500867
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405190738','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 111821280006390102450,
    p_file_id => 111821252798949096203,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405190631','YYYYMMDDHH24MI'),
    p_start_time => 102451,
    p_ended => to_date('202405190631','YYYYMMDDHH24MI'),
    p_end_time => 102453,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 111821280116885102451
    ,p_result_id => 111821280006390102450
    ,p_file_id => 111821252798949096203
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE OR REPLACE FUNCTION custom_auth (     p_username IN VARCHAR2,     p_password IN VARCHAR2 ) RETURN BOOLEAN AS     l_user_id NUMBER; BEGIN     -- Check if the user exists with the given username and password     SELECT 1 INTO l_user_id      FROM USER_ACCOUNT     WHERE USER_NAME = p_username       AND PASSWORD_HASH = p_password; -- Ensure this is the hashed password      -- If a match is found'||
', return true     RETURN TRUE; EXCEPTION     WHEN NO_DATA_FOUND THEN         -- If no match is found, return false         RETURN FALSE;     WHEN OTHERS THEN         -- Handle any other exceptions         RETURN FALSE; END custom_auth;  DECLARE     is_authenticated BOOLEAN; BEGIN     is_authenticated := custom_auth(''user1'', ''hashed_password_1'');     IF is_authenticated THEN         DBMS_OUTPUT.PUT'||
'_LINE(''Authentication successful'');     ELSE         DBMS_OUTPUT.PUT_LINE(''Authentication failed'');     END IF; END;'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 25: PLS-00103: Encountered the symbol "DECLARE" '
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405190631','YYYYMMDDHH24MI')
    ,p_start_time => 102451
    ,p_ended => to_date('202405190631','YYYYMMDDHH24MI')
    ,p_end_time => 102453
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405190631','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 111821255974350096714,
    p_file_id => 111821252798949096203,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405190630','YYYYMMDDHH24MI'),
    p_start_time => 96718,
    p_ended => to_date('202405190630','YYYYMMDDHH24MI'),
    p_end_time => 96724,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 111821256057561096719
    ,p_result_id => 111821255974350096714
    ,p_file_id => 111821252798949096203
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE OR REPLACE FUNCTION custom_auth (     p_username IN VARCHAR2,     p_password IN VARCHAR2 ) RETURN BOOLEAN AS     l_user_id NUMBER; BEGIN     -- Check if the user exists with the given username and password     SELECT 1 INTO l_user_id      FROM USER_ACCOUNT     WHERE USER_NAME = p_username       AND PASSWORD_HASH = p_password; -- Ensure this is the hashed password      -- If a match is found'||
', return true     RETURN TRUE; EXCEPTION     WHEN NO_DATA_FOUND THEN         -- If no match is found, return false         RETURN FALSE;     WHEN OTHERS THEN         -- Handle any other exceptions         RETURN FALSE; END custom_auth;'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Function created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405190630','YYYYMMDDHH24MI')
    ,p_start_time => 96719
    ,p_ended => to_date('202405190630','YYYYMMDDHH24MI')
    ,p_end_time => 96723
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405190630','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '64726F70207461626C6520626F6F6B73206361736361646520636F6E73747261696E74733B0D0A64726F70207461626C652072657669657773206361736361646520636F6E73747261696E74733B0D0A0D0A0D0A435245415445205441424C4520424F4F';
wwv_flow_imp.g_varchar2_table(2) := '4B53280D0A20202020424F4F4B5F4944204E554D424552283629204E4F54204E554C4C205052494D415259204B45592C0D0A202020205449544C452056415243484152322831303029204E4F54204E554C4C2C0D0A202020205052494345204E554D4245';
wwv_flow_imp.g_varchar2_table(3) := '5228342C3229204E4F54204E554C4C2C0D0A20202020415554484F525F4944204E554D424552283629204E4F54204E554C4C2C0D0A20202020415554484F525F4E414D452056415243484152322831303029204E4F54204E554C4C2C0D0A202020204745';
wwv_flow_imp.g_varchar2_table(4) := '4E524520564152434841523228353029204E4F54204E554C4C2C0D0A202020204445534352495054494F4E2056415243484152322832303029204E4F54204E554C4C2C0D0A202020204953424E204348415228313329204E4F54204E554C4C2C0D0A2020';
wwv_flow_imp.g_varchar2_table(5) := '20205055424C49534845522056415243484152322831303029204E4F54204E554C4C2C0D0A202020205055424C49434154494F4E5F444154452044415445204E4F54204E554C4C0D0A293B0D0A0D0A435245415445205441424C45205245564945575328';
wwv_flow_imp.g_varchar2_table(6) := '0D0A202020205245564945575F4944204E554D424552283629204E4F54204E554C4C205052494D415259204B45592C0D0A20202020424F4F4B5F4944204E554D424552283629204E4F54204E554C4C2C0D0A20202020555345525F4944204E554D424552';
wwv_flow_imp.g_varchar2_table(7) := '283629204E4F54204E554C4C2C0D0A20202020524154494E4720434841522835292C0D0A202020205245564945575F434F4D4D454E5420564152434841523228323030290D0A293B0D0A0D0A435245415445205441424C45204F524445525F4954454D53';
wwv_flow_imp.g_varchar2_table(8) := '280D0A202020204F524445525F4954454D5F4944204E554D424552283629204E4F54204E554C4C205052494D415259204B45592C0D0A202020204F524445525F4944204E554D424552283629204E4F54204E554C4C2C0D0A20202020424F4F4B5F494420';
wwv_flow_imp.g_varchar2_table(9) := '4E554D424552283629204E4F54204E554C4C2C0D0A202020205155414E54495459204E554D42455228313029204E4F54204E554C4C2C0D0A202020205052494345204E554D4245522831302C3229204E4F54204E554C4C200D0A293B0D0A0D0A0D0A4352';
wwv_flow_imp.g_varchar2_table(10) := '45415445205441424C452043415445474F52494553280D0A2020202047454E524520564152434841523228353029204E4F54204E554C4C205052494D415259204B45590D0A293B0D0A0D0A435245415445205441424C4520555345525F4143434F554E54';
wwv_flow_imp.g_varchar2_table(11) := '280D0A20202020555345525F4944204E554D424552283629204E4F54204E554C4C205052494D415259204B45592C0D0A20202020555345525F4E414D452056415243484152322831303029204E4F54204E554C4C2C0D0A20202020454D41494C20564152';
wwv_flow_imp.g_varchar2_table(12) := '434841523228353029204E4F54204E554C4C2C0D0A2020202050415353574F52445F4841534820564152434841523228313829204E4F54204E554C4C0D0A293B0D0A0D0A435245415445205441424C4520415554484F5253280D0A20202020415554484F';
wwv_flow_imp.g_varchar2_table(13) := '525F4944204E554D424552283629204E4F54204E554C4C205052494D415259204B45592C0D0A20202020415554484F525F4E414D452056415243484152322832303029204E4F54204E554C4C2C0D0A2020202042494F4752415048592056415243484152';
wwv_flow_imp.g_varchar2_table(14) := '322832303029204E4F54204E554C4C0D0A293B0D0A0D0A435245415445205441424C4520574953484C495354280D0A20202020574953484C4953545F4944204E554D424552283629204E4F54204E554C4C205052494D415259204B45592C0D0A20202020';
wwv_flow_imp.g_varchar2_table(15) := '555345525F4944204E554D424552283629204E4F54204E554C4C2C0D0A20202020424F4F4B5F4944204E554D424552283629204E4F54204E554C4C2C0D0A2020202041444445445F41542044415445204E4F54204E554C4C0D0A293B0D0A0D0A43524541';
wwv_flow_imp.g_varchar2_table(16) := '5445205441424C45204F5244455253280D0A202020204F524445525F4944204E554D424552283629204E4F54204E554C4C205052494D415259204B45592C0D0A20202020555345525F4944204E554D424552283629204E4F54204E554C4C2C0D0A202020';
wwv_flow_imp.g_varchar2_table(17) := '204F524445525F444154452044415445204E4F54204E554C4C2C0D0A20202020544F54414C5F414D4F554E54204E554D42455228362C3229204E4F54204E554C4C0D0A293B0D0A0D0A435245415445205441424C452043415254280D0A20202020434152';
wwv_flow_imp.g_varchar2_table(18) := '545F4944204E554D424552283629204E4F54204E554C4C205052494D415259204B45592C0D0A20202020555345525F4944204E554D424552283629204E4F54204E554C4C2C0D0A20202020424F4F4B5F4944204E554D424552283629204E4F54204E554C';
wwv_flow_imp.g_varchar2_table(19) := '4C2C0D0A202020205155414E54495459204E554D42455228323029204E4F54204E554C4C2C0D0A2020202041444445445F41542044415445204E4F54204E554C4C0D0A293B0D0A2D2D206C6174657220616464207468652062656C6F7720706172740D0A';
wwv_flow_imp.g_varchar2_table(20) := '414C544552205441424C4520434152542041444420434F4E53545241494E5420636172745F626F6F6B5F69645F666B20464F524549474E204B455928424F4F4B5F494429205245464552454E43455320424F4F4B5328424F4F4B5F4944293B0D0A414C54';
wwv_flow_imp.g_varchar2_table(21) := '4552205441424C45204F524445525F4954454D532041444420434F4E53545241494E54206F726465725F6974656D735F6F726465725F69645F666B20464F524549474E204B4559284F524445525F494429205245464552454E434553204F524445525328';
wwv_flow_imp.g_varchar2_table(22) := '4F524445525F4944293B0D0A414C544552205441424C45204F524445525F4954454D532041444420434F4E53545241494E54206F726465725F6974656D735F626F6F6B5F69645F666B20464F524549474E204B455928424F4F4B5F494429205245464552';
wwv_flow_imp.g_varchar2_table(23) := '454E43455320424F4F4B5328424F4F4B5F4944293B0D0A414C544552205441424C4520574953484C4953542041444420434F4E53545241494E5420776973686C6973745F626F6F6B5F69645F666B20464F524549474E204B455928424F4F4B5F49442920';
wwv_flow_imp.g_varchar2_table(24) := '5245464552454E43455320424F4F4B5328424F4F4B5F4944293B0D0A414C544552205441424C4520424F4F4B532041444420434F4E53545241494E5420626F6F6B735F67656E72655F666B20464F524549474E204B45592847454E524529205245464552';
wwv_flow_imp.g_varchar2_table(25) := '454E4345532043415445474F524945532847454E5245293B0D0A414C544552205441424C4520434152542041444420434F4E53545241494E5420636172745F757365725F69645F666B20464F524549474E204B455928555345525F494429205245464552';
wwv_flow_imp.g_varchar2_table(26) := '454E43455320555345525F4143434F554E5428555345525F4944293B0D0A414C544552205441424C45204F52444552532041444420434F4E53545241494E54206F72646572735F757365725F69645F666B20464F524549474E204B455928555345525F49';
wwv_flow_imp.g_varchar2_table(27) := '4429205245464552454E43455320555345525F4143434F554E5428555345525F4944293B0D0A414C544552205441424C4520424F4F4B532041444420434F4E53545241494E5420626F6F6B735F617574686F725F69645F666B20464F524549474E204B45';
wwv_flow_imp.g_varchar2_table(28) := '5928415554484F525F494429205245464552454E43455320415554484F525328415554484F525F4944293B0D0A414C544552205441424C4520524556494557532041444420434F4E53545241494E5420726576696577735F757365725F69645F666B2046';
wwv_flow_imp.g_varchar2_table(29) := '4F524549474E204B455928555345525F494429205245464552454E43455320555345525F4143434F554E5428555345525F4944293B0D0A414C544552205441424C4520524556494557532041444420434F4E53545241494E5420726576696577735F626F';
wwv_flow_imp.g_varchar2_table(30) := '6F6B5F69645F666B20464F524549474E204B455928424F4F4B5F494429205245464552454E43455320424F4F4B5328424F4F4B5F4944293B0D0A414C544552205441424C4520574953484C4953542041444420434F4E53545241494E5420776973686C69';
wwv_flow_imp.g_varchar2_table(31) := '73745F757365725F69645F666B20464F524549474E204B455928555345525F494429205245464552454E43455320555345525F4143434F554E5428555345525F4944293B0D0A0D0A0D0A494E5345525420494E544F20424F4F4B532028424F4F4B5F4944';
wwv_flow_imp.g_varchar2_table(32) := '2C205449544C452C2050524943452C20415554484F525F49442C20415554484F525F4E414D452C2047454E52452C204445534352495054494F4E2C204953424E2C205055424C49534845522C205055424C49434154494F4E5F44415445290D0A56414C55';
wwv_flow_imp.g_varchar2_table(33) := '45532028312C202754686520477265617420476174736279272C2031352E39392C203130312C2027462E2053636F7474204669747A676572616C64272C2027436C6173736963272C2027412073746F7279206F66206C6F76652C207765616C74682C2061';
wwv_flow_imp.g_varchar2_table(34) := '6E64207472616765647920696E2074686520526F6172696E67205477656E746965732E272C202739373830373433323733353635272C202753637269626E6572272C20544F5F444154452827313932352D30342D3130272C2027595959592D4D4D2D4444';
wwv_flow_imp.g_varchar2_table(35) := '2729293B0D0A0D0A0D0A0D0A0D0A';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 103329675435659445295,
    p_flow_id => 4500,
    p_name => '103329675435659445295/schema.sql',
    p_pathid => null,
    p_filename => 'schema.sql',
    p_title => 'schema.sql',
    p_mime_type => 'application/octet-stream',
    p_dad_charset => 'UTF-8',
    p_created_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_created_on => to_date('202405031448','YYYYMMDDHH24MI'),
    p_updated_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_updated_on => to_date('202405060339','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177700553283222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 2
    ,p_src_line_number => 1
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177700749431222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 4
    ,p_src_line_number => 2
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177702001252222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 8
    ,p_src_line_number => 16
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177702825899222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 11
    ,p_src_line_number => 24
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177703606783222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 14
    ,p_src_line_number => 32
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177704094046222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 18
    ,p_src_line_number => 37
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177704716730222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 21
    ,p_src_line_number => 44
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177705356310222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 24
    ,p_src_line_number => 50
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177706061476222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 27
    ,p_src_line_number => 57
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177706735928222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 30
    ,p_src_line_number => 64
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177707596112222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 33
    ,p_src_line_number => 72
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177707757619222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 36
    ,p_src_line_number => 74
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177707989619222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 38
    ,p_src_line_number => 75
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177708128723222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 40
    ,p_src_line_number => 76
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177708359073222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 42
    ,p_src_line_number => 77
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177708598534222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 44
    ,p_src_line_number => 78
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177708769908222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 46
    ,p_src_line_number => 79
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177708973405222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 48
    ,p_src_line_number => 80
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177709747364222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 56
    ,p_src_line_number => 84
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177709130481222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 50
    ,p_src_line_number => 81
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177709375085222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 52
    ,p_src_line_number => 82
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177709553149222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 54
    ,p_src_line_number => 83
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177710022093222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 60
    ,p_src_line_number => 88
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177707672885222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 35
    ,p_src_line_number => 74
    ,p_offset => 1901
    ,p_length => 94
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE CART ADD CONSTRAINT cart_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177707801965222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 37
    ,p_src_line_number => 75
    ,p_offset => 1998
    ,p_length => 112
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE ORDER_ITEMS ADD CONSTRAINT order_items_order_id_fk FOREIGN KEY(ORDER_ID) REFERENCES ORDERS(ORDER_ID)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177708035950222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 39
    ,p_src_line_number => 76
    ,p_offset => 2113
    ,p_length => 108
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE ORDER_ITEMS ADD CONSTRAINT order_items_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177708233809222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 41
    ,p_src_line_number => 77
    ,p_offset => 2224
    ,p_length => 102
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE WISHLIST ADD CONSTRAINT wishlist_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177708417568222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 43
    ,p_src_line_number => 78
    ,p_offset => 2329
    ,p_length => 95
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE BOOKS ADD CONSTRAINT books_genre_fk FOREIGN KEY(GENRE) REFERENCES CATEGORIES(GENRE)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177708666881222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 45
    ,p_src_line_number => 79
    ,p_offset => 2427
    ,p_length => 101
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE CART ADD CONSTRAINT cart_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177708874993222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 47
    ,p_src_line_number => 80
    ,p_offset => 2531
    ,p_length => 105
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE ORDERS ADD CONSTRAINT orders_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177709071492222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 49
    ,p_src_line_number => 81
    ,p_offset => 2639
    ,p_length => 104
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE BOOKS ADD CONSTRAINT books_author_id_fk FOREIGN KEY(AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177709276030222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 51
    ,p_src_line_number => 82
    ,p_offset => 2746
    ,p_length => 107
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE REVIEWS ADD CONSTRAINT reviews_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177709452281222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 53
    ,p_src_line_number => 83
    ,p_offset => 2856
    ,p_length => 100
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE REVIEWS ADD CONSTRAINT reviews_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177709620343222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 55
    ,p_src_line_number => 84
    ,p_offset => 2959
    ,p_length => 109
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE WISHLIST ADD CONSTRAINT wishlist_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177701815791222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 15
    ,p_offset => 438
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    PUBLICATION_DATE DATE NOT NULL '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177701903425222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 16
    ,p_offset => 474
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177700818565222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 5
    ,p_offset => 85
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE BOOKS( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177700900759222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 6
    ,p_offset => 106
    ,p_length => 44
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    BOOK_ID NUMBER(6) NOT NULL PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177701063166222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 7
    ,p_offset => 151
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    TITLE VARCHAR2(100) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177701111464222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 8
    ,p_offset => 186
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    PRICE NUMBER(4,2) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177701213908222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 9
    ,p_offset => 219
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    AUTHOR_ID NUMBER(6) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177701316965222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 10
    ,p_offset => 254
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    AUTHOR_NAME VARCHAR2(100) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177701469978222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 11
    ,p_offset => 295
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    GENRE VARCHAR2(50) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177701570640222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 12
    ,p_offset => 329
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    DESCRIPTION VARCHAR2(200) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177701619151222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 13
    ,p_offset => 370
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ISBN CHAR(13) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177701747164222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 7
    ,p_src_line_number => 14
    ,p_offset => 399
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    PUBLISHER VARCHAR2(100) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177702119927222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 10
    ,p_src_line_number => 18
    ,p_offset => 480
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE REVIEWS( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177702280905222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 10
    ,p_src_line_number => 19
    ,p_offset => 503
    ,p_length => 46
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    REVIEW_ID NUMBER(6) NOT NULL PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177702370073222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 10
    ,p_src_line_number => 20
    ,p_offset => 550
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    BOOK_ID NUMBER(6) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177702497862222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 10
    ,p_src_line_number => 21
    ,p_offset => 583
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    USER_ID NUMBER(6) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177702591810222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 10
    ,p_src_line_number => 22
    ,p_offset => 616
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    RATING CHAR(5), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177702672190222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 10
    ,p_src_line_number => 23
    ,p_offset => 637
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    REVIEW_COMMENT VARCHAR2(200) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177702703049222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 10
    ,p_src_line_number => 24
    ,p_offset => 671
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177702912768222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 13
    ,p_src_line_number => 26
    ,p_offset => 677
    ,p_length => 26
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE ORDER_ITEMS( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177703094204222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 13
    ,p_src_line_number => 27
    ,p_offset => 704
    ,p_length => 50
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ORDER_ITEM_ID NUMBER(6) NOT NULL PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177703175964222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 13
    ,p_src_line_number => 28
    ,p_offset => 755
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ORDER_ID NUMBER(6) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177703231382222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 13
    ,p_src_line_number => 29
    ,p_offset => 789
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    BOOK_ID NUMBER(6) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177703346106222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 13
    ,p_src_line_number => 30
    ,p_offset => 822
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    QUANTITY NUMBER(10) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177703456123222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 13
    ,p_src_line_number => 31
    ,p_offset => 857
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    PRICE NUMBER(10,2) NOT NULL  '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177703554157222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 13
    ,p_src_line_number => 32
    ,p_offset => 891
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177703798121222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 17
    ,p_src_line_number => 35
    ,p_offset => 899
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE CATEGORIES( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177703866068222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 17
    ,p_src_line_number => 36
    ,p_offset => 925
    ,p_length => 44
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    GENRE VARCHAR2(50) NOT NULL PRIMARY KEY '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177703905071222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 17
    ,p_src_line_number => 37
    ,p_offset => 970
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177704153789222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 20
    ,p_src_line_number => 39
    ,p_offset => 976
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE USER_ACCOUNT( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177704282883222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 20
    ,p_src_line_number => 40
    ,p_offset => 1004
    ,p_length => 44
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    USER_ID NUMBER(6) NOT NULL PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177704388058222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 20
    ,p_src_line_number => 41
    ,p_offset => 1049
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    USER_NAME VARCHAR2(100) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177704400830222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 20
    ,p_src_line_number => 42
    ,p_offset => 1088
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    EMAIL VARCHAR2(50) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177704509543222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 20
    ,p_src_line_number => 43
    ,p_offset => 1122
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    PASSWORD_HASH VARCHAR2(18) NOT NULL '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177704614246222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 20
    ,p_src_line_number => 44
    ,p_offset => 1163
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177704838515222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 23
    ,p_src_line_number => 46
    ,p_offset => 1169
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE AUTHORS( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177704976254222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 23
    ,p_src_line_number => 47
    ,p_offset => 1192
    ,p_length => 46
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    AUTHOR_ID NUMBER(6) NOT NULL PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177705007795222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 23
    ,p_src_line_number => 48
    ,p_offset => 1239
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    AUTHOR_NAME VARCHAR2(200) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177705188021222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 23
    ,p_src_line_number => 49
    ,p_offset => 1280
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    BIOGRAPHY VARCHAR2(200) NOT NULL '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177705288400222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 23
    ,p_src_line_number => 50
    ,p_offset => 1318
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177705420833222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 26
    ,p_src_line_number => 52
    ,p_offset => 1324
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE WISHLIST( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177705519443222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 26
    ,p_src_line_number => 53
    ,p_offset => 1348
    ,p_length => 48
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    WISHLIST_ID NUMBER(6) NOT NULL PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177705621173222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 26
    ,p_src_line_number => 54
    ,p_offset => 1397
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    USER_ID NUMBER(6) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177705732239222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 26
    ,p_src_line_number => 55
    ,p_offset => 1430
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    BOOK_ID NUMBER(6) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177705895050222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 26
    ,p_src_line_number => 56
    ,p_offset => 1463
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ADDED_AT DATE NOT NULL '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177705942612222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 26
    ,p_src_line_number => 57
    ,p_offset => 1491
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177706106426222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 29
    ,p_src_line_number => 59
    ,p_offset => 1497
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE ORDERS( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177706226522222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 29
    ,p_src_line_number => 60
    ,p_offset => 1519
    ,p_length => 45
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ORDER_ID NUMBER(6) NOT NULL PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177706329628222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 29
    ,p_src_line_number => 61
    ,p_offset => 1565
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    USER_ID NUMBER(6) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177706435514222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 29
    ,p_src_line_number => 62
    ,p_offset => 1598
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ORDER_DATE DATE NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177706512641222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 29
    ,p_src_line_number => 63
    ,p_offset => 1629
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    TOTAL_AMOUNT NUMBER(6,2) NOT NULL '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177706674403222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 29
    ,p_src_line_number => 64
    ,p_offset => 1668
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177706809682222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 32
    ,p_src_line_number => 66
    ,p_offset => 1674
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE CART( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177706928496222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 32
    ,p_src_line_number => 67
    ,p_offset => 1694
    ,p_length => 44
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    CART_ID NUMBER(6) NOT NULL PRIMARY KEY, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177707028388222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 32
    ,p_src_line_number => 68
    ,p_offset => 1739
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    USER_ID NUMBER(6) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177707124397222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 32
    ,p_src_line_number => 69
    ,p_offset => 1772
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    BOOK_ID NUMBER(6) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177707282432222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 32
    ,p_src_line_number => 70
    ,p_offset => 1805
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    QUANTITY NUMBER(20) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177707301932222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 32
    ,p_src_line_number => 71
    ,p_offset => 1840
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ADDED_AT DATE NOT NULL '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177707407764222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 32
    ,p_src_line_number => 72
    ,p_offset => 1868
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177700408752222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 35
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'drop table books cascade constraints'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177700678583222000
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 3
    ,p_src_line_number => 2
    ,p_offset => 40
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 35
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'drop table reviews cascade constraints'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177709813882222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 59
    ,p_src_line_number => 87
    ,p_offset => 3075
    ,p_length => 121
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO BOOKS (BOOK_ID, TITLE, PRICE, AUTHOR_ID, AUTHOR_NAME, GENRE, DESCRIPTION, ISBN, PUBLISHER, PUBLICATION_DATE) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 104177709903052222001
    ,p_file_id => 103329675435659445295
    ,p_stmt_number => 59
    ,p_src_line_number => 88
    ,p_offset => 3197
    ,p_length => 207
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'VALUES (1, ''The Great Gatsby'', 15.99, 101, ''F. Scott Fitzgerald'', ''Classic'', ''A story of love, wealth, and tragedy in the Roaring Twenties.'', ''9780743273565'', ''Scribner'', TO_DATE(''1925-04-10'', ''YYYY-MM-DD''))'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 103329778202147452860,
    p_file_id => 103329675435659445295,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405031449','YYYYMMDDHH24MI'),
    p_start_time => 767452861,
    p_ended => to_date('202405031449','YYYYMMDDHH24MI'),
    p_end_time => 767452932,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329778370572452862
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'drop table books cascade constraints'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/12: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452862
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452866
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329778465827452866
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 2
    ,p_stmt_num => 3
 ,p_stmt_text => 
'drop table reviews cascade constraints'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/12: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452866
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452866
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329778563632452866
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 3
    ,p_stmt_num => 7
 ,p_stmt_text => 
'CREATE TABLE BOOKS(     BOOK_ID NUMBER(6) NOT NULL PRIMARY KEY,     TITLE VARCHAR2(100) NOT NULL,     PRICE NUMBER(4,2) NOT NULL,     AUTHOR_ID NUMBER(6) NOT NULL,     AUTHOR_NAME VARCHAR2(100) NOT NULL,     GENRE VARCHAR2(50) NOT NULL,     DESCRIPTION VARCHAR2(200) NOT NULL,     ISBN CHAR(13) NOT NULL,     PUBLISHER VARCHAR2(100) NOT NULL,     PUBLICATION_DATE DATE NOT NULL )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452866
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452873
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329778683801452873
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 4
    ,p_stmt_num => 10
 ,p_stmt_text => 
'CREATE TABLE REVIEWS(     REVIEW_ID NUMBER(6) NOT NULL PRIMARY KEY,     BOOK_ID NUMBER(6) NOT NULL,     USER_ID NUMBER(6) NOT NULL,     RATING CHAR(5),     REVIEW_COMMENT VARCHAR2(200) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452874
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452877
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329778745117452877
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 5
    ,p_stmt_num => 13
 ,p_stmt_text => 
'CREATE TABLE ORDER_ITEMS(     ORDER_ITEM_ID NUMBER(6) NOT NULL PRIMARY KEY,     ORDER_ID NUMBER(6) NOT NULL,     BOOK_ID NUMBER(6) NOT NULL,     QUANTITY NUMBER(10) NOT NULL,     PRICE NUMBER(10,2) NOT NULL  )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452877
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452881
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329778855218452881
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 6
    ,p_stmt_num => 17
 ,p_stmt_text => 
'CREATE TABLE CATEGORIES(     GENRE VARCHAR2(50) NOT NULL PRIMARY KEY )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452881
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452884
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329778916844452884
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 7
    ,p_stmt_num => 20
 ,p_stmt_text => 
'CREATE TABLE USER_ACCOUNT(     USER_ID NUMBER(6) NOT NULL PRIMARY KEY,     USER_NAME VARCHAR2(100) NOT NULL,     EMAIL VARCHAR2(50) NOT NULL,     PASSWORD_HASH VARCHAR2(18) NOT NULL )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452884
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452888
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329779045657452888
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 8
    ,p_stmt_num => 23
 ,p_stmt_text => 
'CREATE TABLE AUTHORS(     AUTHOR_ID NUMBER(6) NOT NULL PRIMARY KEY,     AUTHOR_NAME VARCHAR2(200) NOT NULL,     BIOGRAPHY VARCHAR2(200) NOT NULL )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452888
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452891
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329779150168452891
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 9
    ,p_stmt_num => 26
 ,p_stmt_text => 
'CREATE TABLE WISHLIST(     WISHLIST_ID NUMBER(6) NOT NULL PRIMARY KEY,     USER_ID NUMBER(6) NOT NULL,     BOOK_ID NUMBER(6) NOT NULL,     ADDED_AT DATE NOT NULL )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452891
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452894
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329779232731452894
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 10
    ,p_stmt_num => 29
 ,p_stmt_text => 
'CREATE TABLE ORDERS(     ORDER_ID NUMBER(6) NOT NULL PRIMARY KEY,     USER_ID NUMBER(6) NOT NULL,     ORDER_DATE DATE NOT NULL,     TOTAL_AMOUNT NUMBER(6,2) NOT NULL )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452894
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452897
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329779301668452897
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 11
    ,p_stmt_num => 32
 ,p_stmt_text => 
'CREATE TABLE CART(     CART_ID NUMBER(6) NOT NULL PRIMARY KEY,     USER_ID NUMBER(6) NOT NULL,     BOOK_ID NUMBER(6) NOT NULL,     QUANTITY NUMBER(20) NOT NULL,     ADDED_AT DATE NOT NULL )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452897
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452900
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329779486896452900
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 12
    ,p_stmt_num => 35
 ,p_stmt_text => 
'ALTER TABLE CART ADD CONSTRAINT cart_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452900
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452904
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329779586343452904
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 13
    ,p_stmt_num => 37
 ,p_stmt_text => 
'ALTER TABLE ORDER_ITEMS ADD CONSTRAINT order_items_order_id_fk FOREIGN KEY(ORDER_ID) REFERENCES ORDERS(ORDER_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452904
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452906
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329779796321452909
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 15
    ,p_stmt_num => 41
 ,p_stmt_text => 
'ALTER TABLE WISHLIST ADD CONSTRAINT wishlist_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452909
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452912
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329779800885452912
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 16
    ,p_stmt_num => 43
 ,p_stmt_text => 
'ALTER TABLE BOOKS ADD CONSTRAINT books_genre_fk FOREIGN KEY(GENRE) REFERENCES CATEGORIES(GENRE)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452912
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452914
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329779984802452914
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 17
    ,p_stmt_num => 45
 ,p_stmt_text => 
'ALTER TABLE CART ADD CONSTRAINT cart_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452914
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452916
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329780086230452916
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 18
    ,p_stmt_num => 47
 ,p_stmt_text => 
'ALTER TABLE ORDERS ADD CONSTRAINT orders_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452916
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452918
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329780132040452919
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 19
    ,p_stmt_num => 49
 ,p_stmt_text => 
'ALTER TABLE BOOKS ADD CONSTRAINT books_author_id_fk FOREIGN KEY(AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452919
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452920
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329780273093452921
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 20
    ,p_stmt_num => 51
 ,p_stmt_text => 
'ALTER TABLE REVIEWS ADD CONSTRAINT reviews_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452921
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452923
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329780339972452923
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 21
    ,p_stmt_num => 53
 ,p_stmt_text => 
'ALTER TABLE REVIEWS ADD CONSTRAINT reviews_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452923
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452925
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329780492361452925
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 22
    ,p_stmt_num => 55
 ,p_stmt_text => 
'ALTER TABLE WISHLIST ADD CONSTRAINT wishlist_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452925
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452926
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329780552875452926
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 23
    ,p_stmt_num => 59
 ,p_stmt_text => 
'INSERT INTO BOOKS (BOOK_ID, TITLE, PRICE, AUTHOR_ID, AUTHOR_NAME, GENRE, DESCRIPTION, ISBN, PUBLISHER, PUBLICATION_DATE) VALUES (1, ''The Great Gatsby'', 15.99, 101, ''F. Scott Fitzgerald'', ''Classic'', ''A story of love, wealth, and tragedy in the Roaring Twenties.'', ''9780743273565'', ''Scribner'', TO_DATE(''1925-04-10'', ''YYYY-MM-DD''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_ONLINEBOOKSTORE.BOOKS_AUTHOR_ID_FK) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452926
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452932
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 103329779648040452906
    ,p_result_id => 103329778202147452860
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 14
    ,p_stmt_num => 39
 ,p_stmt_text => 
'ALTER TABLE ORDER_ITEMS ADD CONSTRAINT order_items_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_start_time => 767452907
    ,p_ended => to_date('202405031449','YYYYMMDDHH24MI')
    ,p_end_time => 767452909
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405031449','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 104177711364899222318,
    p_file_id => 103329675435659445295,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405060339','YYYYMMDDHH24MI'),
    p_start_time => 3222318,
    p_ended => to_date('202405060339','YYYYMMDDHH24MI'),
    p_end_time => 3222498,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177711573228222393
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 2
    ,p_stmt_num => 3
 ,p_stmt_text => 
'drop table reviews cascade constraints'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table dropped.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222393
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222461
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177711685074222461
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 3
    ,p_stmt_num => 7
 ,p_stmt_text => 
'CREATE TABLE BOOKS(     BOOK_ID NUMBER(6) NOT NULL PRIMARY KEY,     TITLE VARCHAR2(100) NOT NULL,     PRICE NUMBER(4,2) NOT NULL,     AUTHOR_ID NUMBER(6) NOT NULL,     AUTHOR_NAME VARCHAR2(100) NOT NULL,     GENRE VARCHAR2(50) NOT NULL,     DESCRIPTION VARCHAR2(200) NOT NULL,     ISBN CHAR(13) NOT NULL,     PUBLISHER VARCHAR2(100) NOT NULL,     PUBLICATION_DATE DATE NOT NULL )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222461
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222465
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177711705324222465
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 4
    ,p_stmt_num => 10
 ,p_stmt_text => 
'CREATE TABLE REVIEWS(     REVIEW_ID NUMBER(6) NOT NULL PRIMARY KEY,     BOOK_ID NUMBER(6) NOT NULL,     USER_ID NUMBER(6) NOT NULL,     RATING CHAR(5),     REVIEW_COMMENT VARCHAR2(200) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222465
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222468
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177711802948222468
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 5
    ,p_stmt_num => 13
 ,p_stmt_text => 
'CREATE TABLE ORDER_ITEMS(     ORDER_ITEM_ID NUMBER(6) NOT NULL PRIMARY KEY,     ORDER_ID NUMBER(6) NOT NULL,     BOOK_ID NUMBER(6) NOT NULL,     QUANTITY NUMBER(10) NOT NULL,     PRICE NUMBER(10,2) NOT NULL  )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222468
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222469
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177711943530222469
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 6
    ,p_stmt_num => 17
 ,p_stmt_text => 
'CREATE TABLE CATEGORIES(     GENRE VARCHAR2(50) NOT NULL PRIMARY KEY )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222469
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222469
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177712055791222469
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 7
    ,p_stmt_num => 20
 ,p_stmt_text => 
'CREATE TABLE USER_ACCOUNT(     USER_ID NUMBER(6) NOT NULL PRIMARY KEY,     USER_NAME VARCHAR2(100) NOT NULL,     EMAIL VARCHAR2(50) NOT NULL,     PASSWORD_HASH VARCHAR2(18) NOT NULL )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222469
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222470
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177712102797222470
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 8
    ,p_stmt_num => 23
 ,p_stmt_text => 
'CREATE TABLE AUTHORS(     AUTHOR_ID NUMBER(6) NOT NULL PRIMARY KEY,     AUTHOR_NAME VARCHAR2(200) NOT NULL,     BIOGRAPHY VARCHAR2(200) NOT NULL )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222470
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222470
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177712254842222471
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 9
    ,p_stmt_num => 26
 ,p_stmt_text => 
'CREATE TABLE WISHLIST(     WISHLIST_ID NUMBER(6) NOT NULL PRIMARY KEY,     USER_ID NUMBER(6) NOT NULL,     BOOK_ID NUMBER(6) NOT NULL,     ADDED_AT DATE NOT NULL )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222471
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222471
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177712311108222471
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 10
    ,p_stmt_num => 29
 ,p_stmt_text => 
'CREATE TABLE ORDERS(     ORDER_ID NUMBER(6) NOT NULL PRIMARY KEY,     USER_ID NUMBER(6) NOT NULL,     ORDER_DATE DATE NOT NULL,     TOTAL_AMOUNT NUMBER(6,2) NOT NULL )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222471
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222471
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177712471269222471
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 11
    ,p_stmt_num => 32
 ,p_stmt_text => 
'CREATE TABLE CART(     CART_ID NUMBER(6) NOT NULL PRIMARY KEY,     USER_ID NUMBER(6) NOT NULL,     BOOK_ID NUMBER(6) NOT NULL,     QUANTITY NUMBER(20) NOT NULL,     ADDED_AT DATE NOT NULL )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222472
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222472
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177711484032222319
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'drop table books cascade constraints'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table dropped.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222319
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222393
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177712569002222472
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 12
    ,p_stmt_num => 35
 ,p_stmt_text => 
'ALTER TABLE CART ADD CONSTRAINT cart_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222472
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222474
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177712603720222475
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 13
    ,p_stmt_num => 37
 ,p_stmt_text => 
'ALTER TABLE ORDER_ITEMS ADD CONSTRAINT order_items_order_id_fk FOREIGN KEY(ORDER_ID) REFERENCES ORDERS(ORDER_ID)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/64: ORA-02275: such a referential constraint already exists in the table'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222475
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222476
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177712746375222476
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 14
    ,p_stmt_num => 39
 ,p_stmt_text => 
'ALTER TABLE ORDER_ITEMS ADD CONSTRAINT order_items_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222476
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222478
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177713616155222493
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 23
    ,p_stmt_num => 59
 ,p_stmt_text => 
'INSERT INTO BOOKS (BOOK_ID, TITLE, PRICE, AUTHOR_ID, AUTHOR_NAME, GENRE, DESCRIPTION, ISBN, PUBLISHER, PUBLICATION_DATE) VALUES (1, ''The Great Gatsby'', 15.99, 101, ''F. Scott Fitzgerald'', ''Classic'', ''A story of love, wealth, and tragedy in the Roaring Twenties.'', ''9780743273565'', ''Scribner'', TO_DATE(''1925-04-10'', ''YYYY-MM-DD''))'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-02291: integrity constraint (WKSP_ONLINEBOOKSTORE.BOOKS_AUTHOR_ID_FK) violated - parent key not found'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222493
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222498
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177713570267222492
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 22
    ,p_stmt_num => 55
 ,p_stmt_text => 
'ALTER TABLE WISHLIST ADD CONSTRAINT wishlist_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/57: ORA-02275: such a referential constraint already exists in the table'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222492
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222493
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177713188159222484
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 18
    ,p_stmt_num => 47
 ,p_stmt_text => 
'ALTER TABLE ORDERS ADD CONSTRAINT orders_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/53: ORA-02275: such a referential constraint already exists in the table'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222484
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222485
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177712866012222479
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 15
    ,p_stmt_num => 41
 ,p_stmt_text => 
'ALTER TABLE WISHLIST ADD CONSTRAINT wishlist_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222479
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222481
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177712973651222481
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 16
    ,p_stmt_num => 43
 ,p_stmt_text => 
'ALTER TABLE BOOKS ADD CONSTRAINT books_genre_fk FOREIGN KEY(GENRE) REFERENCES CATEGORIES(GENRE)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222481
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222483
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177713037796222483
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 17
    ,p_stmt_num => 45
 ,p_stmt_text => 
'ALTER TABLE CART ADD CONSTRAINT cart_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/49: ORA-02275: such a referential constraint already exists in the table'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222483
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222484
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177713269345222485
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 19
    ,p_stmt_num => 49
 ,p_stmt_text => 
'ALTER TABLE BOOKS ADD CONSTRAINT books_author_id_fk FOREIGN KEY(AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222485
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222487
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177713330891222487
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 20
    ,p_stmt_num => 51
 ,p_stmt_text => 
'ALTER TABLE REVIEWS ADD CONSTRAINT reviews_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222487
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222489
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 104177713450378222490
    ,p_result_id => 104177711364899222318
    ,p_file_id => 103329675435659445295
    ,p_seq_id => 21
    ,p_stmt_num => 53
 ,p_stmt_text => 
'ALTER TABLE REVIEWS ADD CONSTRAINT reviews_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table altered.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_start_time => 3222490
    ,p_ended => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_end_time => 3222492
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405060339','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '4445434C4152450D0A20202020765F757365726E616D6520564152434841523228313030293B0D0A20202020637572736F7220635F75736572732049530D0A202020202020202053454C45435420757365725F6E616D652046524F4D20555345525F4143';
wwv_flow_imp.g_varchar2_table(2) := '434F554E543B0D0A424547494E0D0A20202020464F5220725F7573657220494E20635F7573657273204C4F4F500D0A2020202020202020765F757365726E616D65203A3D20725F757365722E757365725F6E616D653B0D0A202020202020202045584543';
wwv_flow_imp.g_varchar2_table(3) := '55544520494D4D4544494154452027435245415445204F52205245504C414345205649455720757365725F6163636F756E745F766965775F27207C7C20765F757365726E616D65207C7C20272041532053454C45435420757365725F69642C2075736572';
wwv_flow_imp.g_varchar2_table(4) := '5F6E616D652C20656D61696C2046524F4D20555345525F4143434F554E5420574845524520757365725F6E616D65203D20272727207C7C20765F757365726E616D65207C7C20272727273B0D0A20202020454E44204C4F4F503B0D0A454E443B0D0A';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 111823712271580472786,
    p_flow_id => 4500,
    p_name => '111823712271580472786/dynamic_view',
    p_pathid => null,
    p_filename => 'dynamic_view',
    p_title => 'dynamic_view',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_created_on => to_date('202405190649','YYYYMMDDHH24MI'),
    p_updated_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_updated_on => to_date('202405190716','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111835664769268632641
    ,p_file_id => 111823712271580472786
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 10
    ,p_length => 30
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    v_username VARCHAR2(100); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111835664823461632641
    ,p_file_id => 111823712271580472786
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 41
    ,p_length => 22
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    cursor c_users IS '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111835664971292632641
    ,p_file_id => 111823712271580472786
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 64
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        SELECT user_name FROM USER_ACCOUNT; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111835665037107632641
    ,p_file_id => 111823712271580472786
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 109
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111835665189484632641
    ,p_file_id => 111823712271580472786
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 116
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOR r_user IN c_users LOOP '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111835665279805632641
    ,p_file_id => 111823712271580472786
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 148
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        v_username := r_user.user_name; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111835665385022632641
    ,p_file_id => 111823712271580472786
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 189
    ,p_length => 188
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        EXECUTE IMMEDIATE ''CREATE OR REPLACE VIEW user_account_view_'' || v_username || '' AS SELECT user_id, user_name, email FROM USER_ACCOUNT WHERE user_name = '''''' || v_username || ''''''''; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111835665457774632641
    ,p_file_id => 111823712271580472786
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 378
    ,p_length => 14
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END LOOP; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111835665586888632641
    ,p_file_id => 111823712271580472786
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 393
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111835664693390632641
    ,p_file_id => 111823712271580472786
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'DECLARE '
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 111836783933681370483,
    p_file_id => 111823712271580472786,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405190716','YYYYMMDDHH24MI'),
    p_start_time => 370484,
    p_ended => to_date('202405190716','YYYYMMDDHH24MI'),
    p_end_time => 370489,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 111836784059885370484
    ,p_result_id => 111836783933681370483
    ,p_file_id => 111823712271580472786
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'DECLARE     v_username VARCHAR2(100);     cursor c_users IS         SELECT user_name FROM USER_ACCOUNT; BEGIN     FOR r_user IN c_users LOOP         v_username := r_user.user_name;         EXECUTE IMMEDIATE ''CREATE OR REPLACE VIEW user_account_view_'' || v_username || '' AS SELECT user_id, user_name, email FROM USER_ACCOUNT WHERE user_name = '''''' || v_username || '''''''';     END LOOP; END; '
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => 'Statement processed.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405190716','YYYYMMDDHH24MI')
    ,p_start_time => 370484
    ,p_ended => to_date('202405190716','YYYYMMDDHH24MI')
    ,p_end_time => 370489
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405190716','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 111823713979639473204,
    p_file_id => 111823712271580472786,
    p_job_id => null,
    p_run_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_run_as => 'WKSP_ONLINEBOOKSTORE',
    p_started => to_date('202405190649','YYYYMMDDHH24MI'),
    p_start_time => 473204,
    p_ended => to_date('202405190649','YYYYMMDDHH24MI'),
    p_end_time => 473210,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 111823714063854473204
    ,p_result_id => 111823713979639473204
    ,p_file_id => 111823712271580472786
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'DECLARE     v_username VARCHAR2(100);     cursor c_users IS         SELECT user_name FROM USER_ACCOUNT; BEGIN     FOR r_user IN c_users LOOP         v_username := r_user.user_name;         EXECUTE IMMEDIATE ''CREATE OR REPLACE VIEW user_account_view_'' || v_username || '' AS SELECT user_id, user_name, email FROM USER_ACCOUNT WHERE user_name = '''''' || v_username || '''''''';     END LOOP; END; '
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => 'Statement processed.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405190649','YYYYMMDDHH24MI')
    ,p_start_time => 473204
    ,p_ended => to_date('202405190649','YYYYMMDDHH24MI')
    ,p_end_time => 473210
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405190649','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '4445434C4152450D0A2020202069735F61757468656E7469636174656420424F4F4C45414E3B0D0A424547494E0D0A2020202069735F61757468656E74696361746564203A3D20637573746F6D5F6175746828277573657231272C20276861736865645F';
wwv_flow_imp.g_varchar2_table(2) := '70617373776F72645F3127293B0D0A2020202049462069735F61757468656E74696361746564205448454E0D0A202020202020202044424D535F4F55545055542E5055545F4C494E45282741757468656E7469636174696F6E207375636365737366756C';
wwv_flow_imp.g_varchar2_table(3) := '27293B0D0A20202020454C53450D0A202020202020202044424D535F4F55545055542E5055545F4C494E45282741757468656E7469636174696F6E206661696C656427293B0D0A20202020454E442049463B0D0A454E443B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 111821322746447111070,
    p_flow_id => 4500,
    p_name => '111821322746447111070/check_auth',
    p_pathid => null,
    p_filename => 'check_auth',
    p_title => 'check_auth',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => '2022-1-60-261@STD.EWUBD.EDU',
    p_created_on => to_date('202405190633','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111821322800391111072
    ,p_file_id => 111821322746447111070
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'DECLARE '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111821322969075111072
    ,p_file_id => 111821322746447111070
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 10
    ,p_length => 30
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    is_authenticated BOOLEAN; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111821323094117111072
    ,p_file_id => 111821322746447111070
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 41
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111821323149262111072
    ,p_file_id => 111821322746447111070
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 48
    ,p_length => 67
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    is_authenticated := custom_auth(''user1'', ''hashed_password_1''); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111821323231606111072
    ,p_file_id => 111821322746447111070
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 116
    ,p_length => 29
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    IF is_authenticated THEN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111821323336800111072
    ,p_file_id => 111821322746447111070
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 146
    ,p_length => 59
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        DBMS_OUTPUT.PUT_LINE(''Authentication successful''); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111821323447674111072
    ,p_file_id => 111821322746447111070
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 206
    ,p_length => 9
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    ELSE '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111821323595116111072
    ,p_file_id => 111821322746447111070
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 216
    ,p_length => 55
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        DBMS_OUTPUT.PUT_LINE(''Authentication failed''); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111821323623702111072
    ,p_file_id => 111821322746447111070
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 272
    ,p_length => 12
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END IF; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 111821323720517111072
    ,p_file_id => 111821322746447111070
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 285
    ,p_length => 4
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END;'
);
end;
/
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 104177642596020219254
 ,p_command => 
'select * from books;'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405060339','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 104178160355593261573
 ,p_command => 
'CREATE TABLE BOOKS('||wwv_flow.LF||
'    BOOK_ID NUMBER(6) NOT NULL PRIMARY KEY,'||wwv_flow.LF||
'    TITLE VARCHAR2(100) NOT NULL,'||wwv_flow.LF||
'    PRICE NUMBER(4,2) NOT NULL,'||wwv_flow.LF||
'    AUTHOR_ID NUMBER(6) NOT NULL,'||wwv_flow.LF||
'    AUTHOR_NAME VARCHAR2(100) NOT NULL,'||wwv_flow.LF||
'    GENRE VARCHAR2(50) NOT NULL,'||wwv_flow.LF||
'    DESCRIPTION VARCHAR2(200) NOT NULL,'||wwv_flow.LF||
'    ISBN CHAR(13) NOT NULL,'||wwv_flow.LF||
'    PUBLISHER VARCHAR2(100) NOT NULL,'||wwv_flow.LF||
'    PUBLICATION_DATE DATE NOT NULL'||wwv_flow.LF||
');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405060346','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 104178164971647263238
 ,p_command => 
'drop table books cascade constraints;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405060346','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 104179450917548981830
 ,p_command => 
'CREATE TABLE BOOKS('||wwv_flow.LF||
'    BOOK_ID NUMBER(6) NOT NULL PRIMARY KEY,'||wwv_flow.LF||
'    TITLE VARCHAR2(100) NOT NULL,'||wwv_flow.LF||
'    PRICE NUMBER(4,2) NOT NULL,'||wwv_flow.LF||
'    AUTHOR_ID NUMBER(6) NOT NULL,'||wwv_flow.LF||
'    AUTHOR_NAME VARCHAR2(100) NOT NULL,'||wwv_flow.LF||
'    GENRE VARCHAR2(50) NOT NULL,'||wwv_flow.LF||
'    DESCRIPTION VARCHAR2(200) NOT NULL,'||wwv_flow.LF||
'    ISBN CHAR(13) NOT NULL,'||wwv_flow.LF||
'    PUBLISHER VARCHAR2(100) NOT NULL,'||wwv_flow.LF||
'    PUBLICATION_DATE DATE NOT NULL'||wwv_flow.LF||
');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405060346','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 105655726195875322180
 ,p_command => 
'ALTER TABLE USER_ACCOUNT DROP CONSTRAINT PRIMARY KEY;'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405080556','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107408784321538003940
 ,p_command => 
'INSERT INTO REVIEWS (REVIEW_ID, BOOK_ID, USER_ID, RATING, REVIEW_COMMENT)'||wwv_flow.LF||
'VALUES (2, 1002, 1002, ''4'', ''A compelling read with deep themes.'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102056','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107409636769448731995
 ,p_command => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(1001, ''user1'', ''user1@example.com'', ''hashed_password_1''),'||wwv_flow.LF||
'(1002, ''user2'', ''user2@example.com'', ''hashed_password_2''),'||wwv_flow.LF||
'(1003, ''user3'', ''user3@example.com'', ''hashed_password_3''),'||wwv_flow.LF||
'(1004, ''user4'', ''user4@example.com'', ''hashed_password_4''),'||wwv_flow.LF||
'(1005, ''user5'', ''user5@example.com'', ''hashed_password_5''),'||wwv_flow.LF||
'(1006, ''user6'', ''user6@example'||
'.com'', ''hashed_password_6''),'||wwv_flow.LF||
'(1007, ''user7'', ''user7@example.com'', ''hashed_password_7'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102058','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107409647986018735087
 ,p_command => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(1001, ''user1'', ''user1@example.com'', ''hashed_password_1'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102059','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107409706796095736309
 ,p_command => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(1003, ''user3'', ''user3@example.com'', ''hashed_password_3'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102059','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107411307406757051289
 ,p_command => 
'INSERT INTO BOOKS VALUES '||wwv_flow.LF||
'(1005, ''The Catcher in the Rye'', 9.75, 105, ''J.D. Salinger'', ''Coming-of-age'', ''A coming-of-age novel narrated by a teenager who struggles with alienation and identity.'', ''9780316769488'', ''Back Bay Books'', TO_DATE(''1951-07-16'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102104','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107411316201483057497
 ,p_command => 
'INSERT INTO BOOKS VALUES '||wwv_flow.LF||
'(1009, ''Harry Potter and the Philosopher''''s Stone'', 16.99, 109, ''J.K. Rowling'', ''Fantasy'', ''The first book in the Harry Potter series, following the adventures of a young wizard.'', ''9780747532743'', ''Bloomsbury Publishing'', TO_DATE(''1997-06-26'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102105','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107411417152119796231
 ,p_command => 
'INSERT INTO REVIEWS VALUES'||wwv_flow.LF||
'(1, 1001, 1001, ''5'', ''Absolutely loved it! A timeless classic.'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102109','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107411826207351807555
 ,p_command => 
'INSERT INTO REVIEWS VALUES'||wwv_flow.LF||
'(3, 1003, 1003, ''5'', ''Orwells masterpiece; a must-read for everyone.'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102111','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107411837950724809437
 ,p_command => 
'INSERT INTO REVIEWS VALUES'||wwv_flow.LF||
'(4, 1004, 1004, ''4'', ''Delightful characters and witty dialogue.'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102111','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107412279597363111939
 ,p_command => 
'INSERT INTO CATEGORIES VALUES(''Romance'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102114','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107412326607071122614
 ,p_command => 
'INSERT INTO CATEGORIES VALUES(''Mystery'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102116','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107412685574573831417
 ,p_command => 
'INSERT INTO CATEGORIES VALUES(''Coming-of-age'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102115','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107413797838373901201
 ,p_command => 
''||wwv_flow.LF||
'INSERT INTO AUTHORS (AUTHOR_ID, AUTHOR_NAME, BIOGRAPHY)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(101, ''F. Scott Fitzgerald'', ''F. Scott Fitzgerald was an American novelist and short story writer, whose works are evocative of the Jazz Age, a term he coined himself.'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102126','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107416019916580187455
 ,p_command => 
'INSERT INTO AUTHORS (AUTHOR_ID, AUTHOR_NAME, BIOGRAPHY)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(103, ''George Orwell'', ''George Orwell, whose real name was Eric Arthur Blair, was an English novelist, essayist, journalist. He is best known for his dystopian novel "1984" and the allegorical novella "Animal Farm".'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102127','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 109919009384307365121
 ,p_command => 
'select * from books;'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405151550','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111096880749727942933
 ,p_command => 
'DELETE FROM Books;'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405171353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111427518971821213351
 ,p_command => 
'SELECT column_name, data_type, data_length'||wwv_flow.LF||
'FROM   user_tab_columns'||wwv_flow.LF||
'WHERE  table_name = ''WISHLIST'' AND column_name = ''BOOK_NAME'';'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405180805','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111427571642072220448
 ,p_command => 
'INSERT INTO WISHLIST (WISHLIST_ID, USER_ID, BOOK_NAME, ADDED_AT)'||wwv_flow.LF||
'VALUES (3, 123456, ''The Great Gatsby'', TO_DATE(''2024-05-22'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405180806','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111732560831639051096
 ,p_command => 
'SHOW ERRORS PACKAGE BODY WKSP_ONLINEBOOKSTORE.MANAGE_ORDERS;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405182044','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111821311420238107773
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'    is_authenticated BOOLEAN;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    is_authenticated := custom_auth(''user1'', ''hashed_password_1'');'||wwv_flow.LF||
'    IF is_authenticated THEN'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Authentication successful'');'||wwv_flow.LF||
'    ELSE'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Authentication failed'');'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
'END;'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190632','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111836850512486387744
 ,p_command => 
'CREATE OR REPLACE TRIGGER trg_create_user_view'||wwv_flow.LF||
'AFTER INSERT ON USER_ACCOUNT'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    v_username VARCHAR2(100);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Get the username of the newly registered user'||wwv_flow.LF||
'    v_username := :NEW.USER_NAME;'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Construct and execute the dynamic SQL statement to create the view'||wwv_flow.LF||
'    EXECUTE IMMEDIATE ''CREATE OR REPLACE VIEW user_account_view_'' || v_username || '' AS SELECT user_id, u'||
'ser_name, email FROM USER_ACCOUNT WHERE user_name = '''''' || v_username || '''''''';'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190719','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111837122156483660841
 ,p_command => 
'CREATE OR REPLACE PROCEDURE create_user_view ('||wwv_flow.LF||
'    p_username IN VARCHAR2'||wwv_flow.LF||
') AS'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    EXECUTE IMMEDIATE ''CREATE OR REPLACE VIEW user_account_view_'' || p_username || '' AS SELECT user_id, user_name, email FROM USER_ACCOUNT WHERE user_name = '''''' || p_username || '''''''';'||wwv_flow.LF||
'END create_user_view;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190721','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111837125005773662127
 ,p_command => 
'CREATE OR REPLACE TRIGGER trg_create_user_view'||wwv_flow.LF||
'AFTER INSERT ON USER_ACCOUNT'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Call the procedure to create the view'||wwv_flow.LF||
'    create_user_view(:NEW.USER_NAME);'||wwv_flow.LF||
'END;'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190721','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111837127712874663317
 ,p_command => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)'||wwv_flow.LF||
'VALUES (1008, ''user8'', ''user8@example.com'', ''hashed_password_8'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190721','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111838077472997668536
 ,p_command => 
'CREATE OR REPLACE PROCEDURE create_user_view_proc ('||wwv_flow.LF||
'    p_username IN VARCHAR2'||wwv_flow.LF||
') AS'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    EXECUTE IMMEDIATE ''CREATE OR REPLACE VIEW user_account_view_'' || p_username || '' AS SELECT user_id, user_name, email FROM USER_ACCOUNT WHERE user_name = '''''' || p_username || '''''''';'||wwv_flow.LF||
'END create_user_view_proc;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190722','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111838084958289671100
 ,p_command => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)'||wwv_flow.LF||
'VALUES (1008, ''user8'', ''user8@example.com'', ''hashed_password_8'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190722','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111838173938685689005
 ,p_command => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)'||wwv_flow.LF||
'VALUES (1008, ''user8'', ''user8@example.com'', ''hashed_password_8'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111839689888637708360
 ,p_command => 
'INSERT INTO USER_ACCOUNT VALUES (1008, ''user8'', ''user8@example.com'', ''hashed_password_8'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190728','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111996856571547266793
 ,p_command => 
'SELECT PUBLICATION_DATE FROM BOOKS WHERE ROWNUM <= 10;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111997941371594284716
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    BOOK_ID, TITLE, AUTHOR_NAME, GENRE, PRICE, ISBN, PUBLISHER, '||wwv_flow.LF||
'    TO_CHAR(PUBLICATION_DATE, ''YYYY-MM-DD'') AS PUBLICATION_DATE, DESCRIPTION'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    BOOKS'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'    ROWNUM <= 30;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191522','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 112005485968423357503
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    b.TITLE AS BOOK_TITLE,'||wwv_flow.LF||
'    AVG(r.RATING) AS AVERAGE_RATING'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    BOOKS b'||wwv_flow.LF||
'JOIN '||wwv_flow.LF||
'    BOOK_RATINGS r ON b.BOOK_ID = r.BOOK_ID'||wwv_flow.LF||
'GROUP BY '||wwv_flow.LF||
'    b.BOOK_ID, b.TITLE'||wwv_flow.LF||
'HAVING '||wwv_flow.LF||
'    COUNT(r.RATING) > 3'||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'    AVERAGE_RATING DESC'||wwv_flow.LF||
'FETCH FIRST 5 ROWS ONLY;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191534','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 112009322094477415029
 ,p_command => 
'SELECT TABLE_NAME '||wwv_flow.LF||
'FROM ALL_TABLES '||wwv_flow.LF||
'WHERE TABLE_NAME IN (''BOOKS'', ''BOOK_RATINGS'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191543','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 112012864410177716759
 ,p_command => 
'SELECT * FROM REVIEWS.RATING WHERE ROWNUM <= 10;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191550','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 112012915240735724307
 ,p_command => 
'SELECT * FROM REVIEWS WHERE RATING <= 5;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191551','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 112013114465481457671
 ,p_command => 
'SELECT * FROM REVIEWS;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191550','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 112013467300267464516
 ,p_command => 
'SELECT * FROM REVIEWS WHERE RATING >= 5;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191552','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 112013424569937459994
 ,p_command => 
'SELECT * FROM REVIEWS.RATING;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191551','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 105656040430696323796
 ,p_command => 
'ALTER TABLE USER_ACCOUNT.USER_ID DROP CONSTRAINT PRIMARY KEY;'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405080556','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107283311427962912524
 ,p_command => 
''||wwv_flow.LF||
'INSERT INTO BOOKS '||wwv_flow.LF||
'VALUES (1, ''The Great Gatsby'', 15.99, 101, ''F. Scott Fitzgerald'', ''Classic'', ''A story of love, wealth, and tragedy in the Roaring Twenties.'', ''9780743273565'', ''Scribner'', TO_DATE(''1925-04-10'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405101555','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107408557980152713000
 ,p_command => 
'INSERT INTO REVIEWS (REVIEW_ID, BOOK_ID, USER_ID, RATING, REVIEW_COMMENT)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(1, 1001, 1001, ''5'', ''Absolutely loved it! A timeless classic.''),'||wwv_flow.LF||
'(2, 1002, 1002, ''4'', ''A compelling read with deep themes.''),'||wwv_flow.LF||
'(3, 1003, 1003, ''5'', ''Orwell''''s masterpiece; a must-read for everyone.''),'||wwv_flow.LF||
'(4, 1004, 1004, ''4'', ''Delightful characters and witty dialogue.''),'||wwv_flow.LF||
'(5, 1005, 1005, ''3'', ''Interesting perspective on ad'||
'olescence.''),'||wwv_flow.LF||
'(6, 1006, 1006, ''5'', ''A captivating adventure with memorable characters.''),'||wwv_flow.LF||
'(7, 1007, 1007, ''4'', ''Exciting and thought-provoking.''),'||wwv_flow.LF||
'(8, 1008, 1008, ''3'', ''Fast-paced and entertaining, but lacks depth.''),'||wwv_flow.LF||
'(9, 1009, 1009, ''5'', ''Magical and enchanting; a true classic.''),'||wwv_flow.LF||
'(10, 1010, 1010, ''5'', ''An epic journey that leaves you craving for more.'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102055','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107409233436374009069
 ,p_command => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)'||wwv_flow.LF||
'VALUES('||wwv_flow.LF||
'(1001, ''user1'', ''user1@example.com'', ''hashed_password_1''),'||wwv_flow.LF||
'(1002, ''user2'', ''user2@example.com'', ''hashed_password_2''),'||wwv_flow.LF||
'(1003, ''user3'', ''user3@example.com'', ''hashed_password_3''),'||wwv_flow.LF||
'(1004, ''user4'', ''user4@example.com'', ''hashed_password_4''),'||wwv_flow.LF||
'(1005, ''user5'', ''user5@example.com'', ''hashed_password_5''),'||wwv_flow.LF||
'(1006, ''user6'', ''user6@exampl'||
'e.com'', ''hashed_password_6''),'||wwv_flow.LF||
'(1007, ''user7'', ''user7@example.com'', ''hashed_password_7'')'||wwv_flow.LF||
');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102057','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107409705675427735678
 ,p_command => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(1002, ''user2'', ''user2@example.com'', ''hashed_password_2'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102059','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107410413946753747362
 ,p_command => 
'INSERT INTO BOOKS VALUES ('||wwv_flow.LF||
'(1001, ''The Great Gatsby'', 15.99, 101, ''F. Scott Fitzgerald'', ''Classic'', ''A story of love, wealth, and tragedy in the Roaring Twenties.'', ''9780743273565'', ''Scribner'', TO_DATE(''1925-04-10'', ''YYYY-MM-DD'')),'||wwv_flow.LF||
'(1002, ''To Kill a Mockingbird'', 12.50, 102, ''Harper Lee'', ''Fiction'', ''A powerful story of racial injustice and moral growth in the Deep South.'', ''9780061120084'', ''Harpe'||
'r Perennial Modern Classics'', TO_DATE(''1960-07-11'', ''YYYY-MM-DD'')),'||wwv_flow.LF||
'(1003, ''1984'', 10.99, 103, ''George Orwell'', ''Dystopian'', ''A dystopian novel depicting a totalitarian regime and the struggle for individual freedom.'', ''9780451524935'', ''Signet Classics'', TO_DATE(''1949-06-08'', ''YYYY-MM-DD'')),'||wwv_flow.LF||
'(1004, ''Pride and Prejudice'', 8.99, 104, ''Jane Austen'', ''Romance'', ''A classic romance novel exploring theme'||
's of love, reputation, and social class in Georgian England.'', ''9780141439518'', ''Penguin Classics'', TO_DATE(''1813-01-28'', ''YYYY-MM-DD'')),'||wwv_flow.LF||
'(1005, ''The Catcher in the Rye'', 9.75, 105, ''J.D. Salinger'', ''Coming-of-age'', ''A coming-of-age novel narrated by a teenager who struggles with alienation and identity.'', ''9780316769488'', ''Back Bay Books'', TO_DATE(''1951-07-16'', ''YYYY-MM-DD'')),'||wwv_flow.LF||
'(1006, ''The Hobbit'''||
', 11.25, 106, ''J.R.R. Tolkien'', ''Fantasy'', ''An adventure novel following the journey of Bilbo Baggins as he embarks on a quest to reclaim treasure guarded by a dragon.'', ''9780547928227'', ''Mariner Books'', TO_DATE(''1937-09-21'', ''YYYY-MM-DD'')),'||wwv_flow.LF||
'(1007, ''The Hunger Games'', 14.20, 107, ''Suzanne Collins'', ''Young Adult'', ''The first book in a dystopian trilogy where teenagers fight to the death in a televi'||
'sed spectacle.'', ''9780439023481'', ''Scholastic Press'', TO_DATE(''2008-09-14'', ''YYYY-MM-DD'')),'||wwv_flow.LF||
'(1008, ''The Da Vinci Code'', 13.45, 108, ''Dan Brown'', ''Mystery'', ''A mystery thriller that follows symbologist Robert Langdon as he investigates a murder in the Louvre Museum.'', ''9780307474278'', ''Anchor Books'', TO_DATE(''2003-03-18'', ''YYYY-MM-DD'')),'||wwv_flow.LF||
'(1009, ''Harry Potter and the Philosopher''''s Stone'', 16.99, 10'||
'9, ''J.K. Rowling'', ''Fantasy'', ''The first book in the Harry Potter series, following the adventures of a young wizard.'', ''9780747532743'', ''Bloomsbury Publishing'', TO_DATE(''1997-06-26'', ''YYYY-MM-DD'')),'||wwv_flow.LF||
'(1010, ''The Lord of the Rings: The Fellowship of the Ring'', 19.75, 110, ''J.R.R. Tolkien'', ''Fantasy'', ''The first volume of the epic fantasy series set in the world of Middle-earth.'', ''9780547928210'', '''||
'Mariner Books'', TO_DATE(''1954-07-29'', ''YYYY-MM-DD''))'||wwv_flow.LF||
');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102101','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107410448805893754560
 ,p_command => 
'INSERT INTO BOOKS VALUES '||wwv_flow.LF||
'(1001, ''The Great Gatsby'', 15.99, 101, ''F. Scott Fitzgerald'', ''Classic'', ''A story of love, wealth, and tragedy in the Roaring Twenties.'', ''9780743273565'', ''Scribner'', TO_DATE(''1925-04-10'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102102','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107410877802687760712
 ,p_command => 
'INSERT INTO BOOKS VALUES '||wwv_flow.LF||
'(1002, ''To Kill a Mockingbird'', 12.50, 102, ''Harper Lee'', ''Fiction'', ''A powerful story of racial injustice and moral growth in the Deep South.'', ''9780061120084'', ''Harper Perennial Modern Classics'', TO_DATE(''1960-07-11'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102103','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107410881839777762981
 ,p_command => 
'INSERT INTO BOOKS VALUES '||wwv_flow.LF||
'(1003, ''1984'', 10.99, 103, ''George Orwell'', ''Dystopian'', ''A dystopian novel depicting a totalitarian regime and the struggle for individual freedom.'', ''9780451524935'', ''Signet Classics'', TO_DATE(''1949-06-08'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102103','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107410897618191768046
 ,p_command => 
'INSERT INTO BOOKS VALUES '||wwv_flow.LF||
'(1004, ''Pride and Prejudice'', 8.99, 104, ''Jane Austen'', ''Romance'', ''A classic romance novel exploring themes of love, reputation, and social class in Georgian England.'', ''9780141439518'', ''Penguin Classics'', TO_DATE(''1813-01-28'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102104','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107410907186658772354
 ,p_command => 
'INSERT INTO BOOKS VALUES '||wwv_flow.LF||
'(1007, ''The Hunger Games'', 14.20, 107, ''Suzanne Collins'', ''Young Adult'', ''The first book in a dystopian trilogy where teenagers fight to the death in a televised spectacle.'', ''9780439023481'', ''Scholastic Press'', TO_DATE(''2008-09-14'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102105','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107411309355609052623
 ,p_command => 
'INSERT INTO BOOKS VALUES '||wwv_flow.LF||
'(1006, ''The Hobbit'', 11.25, 106, ''J.R.R. Tolkien'', ''Fantasy'', ''An adventure novel following the journey of Bilbo Baggins as he embarks on a quest to reclaim treasure guarded by a dragon.'', ''9780547928227'', ''Mariner Books'', TO_DATE(''1937-09-21'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102105','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107411312910354055675
 ,p_command => 
'INSERT INTO BOOKS VALUES '||wwv_flow.LF||
'(1008, ''The Da Vinci Code'', 13.45, 108, ''Dan Brown'', ''Mystery'', ''A mystery thriller that follows symbologist Robert Langdon as he investigates a murder in the Louvre Museum.'', ''9780307474278'', ''Anchor Books'', TO_DATE(''2003-03-18'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102105','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107411317036289058916
 ,p_command => 
'INSERT INTO BOOKS VALUES '||wwv_flow.LF||
'(1010, ''The Lord of the Rings: The Fellowship of the Ring'', 19.75, 110, ''J.R.R. Tolkien'', ''Fantasy'', ''The first volume of the epic fantasy series set in the world of Middle-earth.'', ''9780547928210'', ''Mariner Books'', TO_DATE(''1954-07-29'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102106','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107411478474639802262
 ,p_command => 
'INSERT INTO REVIEWS VALUES'||wwv_flow.LF||
'(2, 1002, 1002, ''4'', ''A compelling read with deep themes.'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102110','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107412251077157105558
 ,p_command => 
'INSERT INTO CATEGORIES VALUES(''Classic'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102113','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107412255988497107343
 ,p_command => 
'INSERT INTO CATEGORIES VALUES(''Fiction'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102114','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107412714074672839320
 ,p_command => 
'INSERT INTO CATEGORIES VALUES(''Fantasy'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102116','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107413785332043897493
 ,p_command => 
'INSERT INTO AUTHORS (AUTHOR_ID, AUTHOR_NAME, BIOGRAPHY)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(101, ''F. Scott Fitzgerald'', ''F. Scott Fitzgerald was an American novelist and short story writer, whose works are evocative of the Jazz Age, a term he coined himself. He is widely regarded as one of the greatest American writers of the 20th century.'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102126','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107415303520779183693
 ,p_command => 
'INSERT INTO AUTHORS (AUTHOR_ID, AUTHOR_NAME, BIOGRAPHY)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(102, ''Harper Lee'', ''Harper Lee was an American novelist, widely known for her novel "To Kill a Mockingbird". She received numerous accolades for her work, including the Pulitzer Prize.'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102126','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107415778894100902893
 ,p_command => 
''||wwv_flow.LF||
'INSERT INTO AUTHORS (AUTHOR_ID, AUTHOR_NAME, BIOGRAPHY)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(103, ''George Orwell'', ''George Orwell, whose real name was Eric Arthur Blair, was an English novelist, essayist, journalist, and critic. He is best known for his dystopian novel "1984" and the allegorical novella "Animal Farm".'');'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102127','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 107416134552762188230
 ,p_command => 
'INSERT INTO BOOKS (BOOK_ID, TITLE, PRICE, AUTHOR_ID, AUTHOR_NAME, GENRE, DESCRIPTION, ISBN, PUBLISHER, PUBLICATION_DATE)'||wwv_flow.LF||
'VALUES'||wwv_flow.LF||
'(1001, ''The Great Gatsby'', 15.99, 101, ''F. Scott Fitzgerald'', ''Classic'', ''A story of love, wealth, and tragedy in the Roaring Twenties.'', ''9780743273565'', ''Scribner'', TO_DATE(''1925-04-10'', ''YYYY-MM-DD''));'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405102127','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 109935719027951554226
 ,p_command => 
'DELETE FROM stores;'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405151621','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111732658809220768705
 ,p_command => 
'ALTER PACKAGE WKSP_ONLINEBOOKSTORE.MANAGE_ORDERS COMPILE BODY;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405182044','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111836851694011389058
 ,p_command => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)'||wwv_flow.LF||
'VALUES (1008, ''user8'', ''user8@example.com'', ''hashed_password_8'');'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190719','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111837603405712391471
 ,p_command => 
'INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)'||wwv_flow.LF||
'VALUES (1008, ''user8'', ''user8@example.com'', ''hashed_password_8'');'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190719','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111838083431321670046
 ,p_command => 
'CREATE OR REPLACE TRIGGER trg_create_user_view'||wwv_flow.LF||
'AFTER INSERT ON USER_ACCOUNT'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    DBMS_SCHEDULER.create_job ('||wwv_flow.LF||
'        job_name        => ''create_view_'' || :NEW.USER_NAME,'||wwv_flow.LF||
'        job_type        => ''PLSQL_BLOCK'','||wwv_flow.LF||
'        job_action      => ''BEGIN create_user_view_proc('''''' || :NEW.USER_NAME || ''''''); END;'','||wwv_flow.LF||
'        start_date      => SYSTIMESTAMP,'||wwv_flow.LF||
'        enabled         => TRUE'||wwv_flow.LF||
'   '||
' );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190722','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111838163616373687043
 ,p_command => 
'CREATE OR REPLACE TRIGGER trg_create_user_view'||wwv_flow.LF||
'AFTER INSERT ON USER_ACCOUNT'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    DBMS_SCHEDULER.create_job ('||wwv_flow.LF||
'        job_name        => ''create_view_'' || :NEW.USER_NAME,'||wwv_flow.LF||
'        job_type        => ''PLSQL_BLOCK'','||wwv_flow.LF||
'        job_action      => ''BEGIN create_user_view_proc('''''' || :NEW.USER_NAME || ''''''); END;'','||wwv_flow.LF||
'        start_date      => SYSTIMESTAMP,'||wwv_flow.LF||
'        enabled         => TRUE'||wwv_flow.LF||
'   '||
' );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111839846497827462474
 ,p_command => 
'SELECT * FROM USER_ACCOUNT WHERE USER_NAME = ''user8''; -- Replace ''username'' with the registered username'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190731','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111839850827251464241
 ,p_command => 
'SELECT * FROM USER_ACCOUNT WHERE USER_NAME = ''user8'';'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190732','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111840893337625765892
 ,p_command => 
'CREATE OR REPLACE FUNCTION custom_auth ('||wwv_flow.LF||
'    p_username IN VARCHAR2,'||wwv_flow.LF||
'    p_password IN VARCHAR2'||wwv_flow.LF||
') RETURN NUMBER'||wwv_flow.LF||
'AS'||wwv_flow.LF||
'    l_user_id NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Check if the user exists with the given username and hashed password'||wwv_flow.LF||
'    SELECT USER_ID INTO l_user_id '||wwv_flow.LF||
'    FROM USER_ACCOUNT'||wwv_flow.LF||
'    WHERE USER_NAME = p_username'||wwv_flow.LF||
'      AND PASSWORD_HASH = HASH_FUNCTION(p_password); -- Ensure HASH_FUNCTION is replaced wi'||
'th your actual hashing function'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- If a match is found, return the user ID'||wwv_flow.LF||
'    RETURN l_user_id;'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'    WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'        -- If no match is found, return 0 or NULL (indicating authentication failure)'||wwv_flow.LF||
'        RETURN NULL;'||wwv_flow.LF||
'    WHEN OTHERS THEN'||wwv_flow.LF||
'        -- Log or handle the exception appropriately'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Error in custom_auth: '' || SQLERRM);'||wwv_flow.LF||
'        RETU'||
'RN NULL;'||wwv_flow.LF||
'END custom_auth;'||wwv_flow.LF||
'CREATE OR REPLACE FUNCTION custom_auth ('||wwv_flow.LF||
'    p_username IN VARCHAR2,'||wwv_flow.LF||
'    p_password IN VARCHAR2'||wwv_flow.LF||
') RETURN NUMBER'||wwv_flow.LF||
'AS'||wwv_flow.LF||
'    l_user_id NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Check if the user exists with the given username and hashed password'||wwv_flow.LF||
'    SELECT USER_ID INTO l_user_id '||wwv_flow.LF||
'    FROM USER_ACCOUNT'||wwv_flow.LF||
'    WHERE USER_NAME = p_username'||wwv_flow.LF||
'      AND PASSWORD_HASH = HASH_FUNCTION(p_password); -- Ensure HA'||
'SH_FUNCTION is replaced with your actual hashing function'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- If a match is found, return the user ID'||wwv_flow.LF||
'    RETURN l_user_id;'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'    WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'        -- If no match is found, return 0 or NULL (indicating authentication failure)'||wwv_flow.LF||
'        RETURN NULL;'||wwv_flow.LF||
'    WHEN OTHERS THEN'||wwv_flow.LF||
'        -- Log or handle the exception appropriately'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Error in custom_auth: '''||
' || SQLERRM);'||wwv_flow.LF||
'        RETURN NULL;'||wwv_flow.LF||
'END custom_auth;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190738','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111840907294354773864
 ,p_command => 
'CREATE OR REPLACE FUNCTION custom_auth ('||wwv_flow.LF||
'    p_username IN VARCHAR2,'||wwv_flow.LF||
'    p_password IN VARCHAR2'||wwv_flow.LF||
') RETURN NUMBER AS'||wwv_flow.LF||
'    l_user_id NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Check if the user exists with the given username and hashed password'||wwv_flow.LF||
'    SELECT USER_ID INTO l_user_id '||wwv_flow.LF||
'    FROM USER_ACCOUNT'||wwv_flow.LF||
'    WHERE USER_NAME = p_username'||wwv_flow.LF||
'      AND PASSWORD_HASH = HASH_FUNCTION(p_password); -- Ensure HASH_FUNCTION is replaced wi'||
'th your actual hashing function'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- If a match is found, return the user ID'||wwv_flow.LF||
'    RETURN l_user_id;'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'    WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'        -- If no match is found, return 0 or NULL (indicating authentication failure)'||wwv_flow.LF||
'        RETURN NULL;'||wwv_flow.LF||
'    WHEN OTHERS THEN'||wwv_flow.LF||
'        -- Log or handle the exception appropriately'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Error in custom_auth: '' || SQLERRM);'||wwv_flow.LF||
'        RETU'||
'RN NULL;'||wwv_flow.LF||
'END custom_auth;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190739','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111840965666687777720
 ,p_command => 
'CREATE OR REPLACE FUNCTION custom_auth ('||wwv_flow.LF||
'    p_username IN VARCHAR2,'||wwv_flow.LF||
'    p_password IN VARCHAR2'||wwv_flow.LF||
') RETURN NUMBER AS'||wwv_flow.LF||
'    l_user_id NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Check if the user exists with the given username and hashed password'||wwv_flow.LF||
'    SELECT USER_ID INTO l_user_id '||wwv_flow.LF||
'    FROM USER_ACCOUNT'||wwv_flow.LF||
'    WHERE USER_NAME = p_username'||wwv_flow.LF||
'      AND PASSWORD_HASH = DBMS_CRYPTO.HASH(p_password, DBMS_CRYPTO.HASH_SH1); -- Assuming S'||
'HA-1 hashing'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- If a match is found, return the user ID'||wwv_flow.LF||
'    RETURN l_user_id;'||wwv_flow.LF||
'EXCEPTION'||wwv_flow.LF||
'    WHEN NO_DATA_FOUND THEN'||wwv_flow.LF||
'        -- If no match is found, return 0 or NULL (indicating authentication failure)'||wwv_flow.LF||
'        RETURN NULL;'||wwv_flow.LF||
'    WHEN OTHERS THEN'||wwv_flow.LF||
'        -- Log or handle the exception appropriately'||wwv_flow.LF||
'        DBMS_OUTPUT.PUT_LINE(''Error in custom_auth: '' || SQLERRM);'||wwv_flow.LF||
'        RETURN NULL;'||wwv_flow.LF||
'END custom'||
'_auth;'||wwv_flow.LF||
'/'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190740','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111842359850793800525
 ,p_command => 
'SELECT * FROM user_account_view_user8;'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405190744','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111996676560807527547
 ,p_command => 
'SELECT COUNT(*) FROM BOOKS;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191518','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111996714984089531472
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    BOOK_ID, TITLE, AUTHOR_NAME, GENRE, PRICE, ISBN, PUBLISHER, '||wwv_flow.LF||
'    TO_CHAR(PUBLICATION_DATE, ''YYYY-MM-DD'') AS PUBLICATION_DATE, DESCRIPTION'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    BOOKS'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'    ROWNUM <= 10;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111996917210851272911
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    BOOK_ID, TITLE, AUTHOR_NAME, GENRE, PRICE, ISBN, PUBLISHER, '||wwv_flow.LF||
'    TO_CHAR(PUBLICATION_DATE, ''YYYY-MM-DD'') AS PUBLICATION_DATE, DESCRIPTION'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    BOOKS'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'    ROWNUM <= 10;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191520','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111997512005910533557
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    PUBLICATION_DATE'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    BOOKS'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'    PUBLICATION_DATE >= TRUNC(SYSDATE) - 30;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191519','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 111997951503723286618
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    PUBLICATION_DATE'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    BOOKS'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'    PUBLICATION_DATE >= TRUNC(SYSDATE) - 30;'
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191522','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 112012853413768716281
 ,p_command => 
'SELECT * FROM BOOKS WHERE ROWNUM <= 10;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191550','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 112012876035894718834
 ,p_command => 
'SELECT * FROM REVIEWS.RATING;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191550','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 112012923480528725930
 ,p_command => 
'SELECT * FROM REVIEWS WHERE RATING >= 3;'||wwv_flow.LF||
''
    ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
    ,p_created_on => to_date('202405191551','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_ONLINEBOOKSTORE');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300623','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300624','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-142@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300649','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-142@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300649','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-142@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300650','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300650','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300652','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 5,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300652','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300730','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300730','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300752','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300752','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300754','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300755','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300755','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300756','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404300757','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404301551','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '“RAJON”',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202404301718','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405030406','YYYYMMDDHH24MI'),
    p_ip_address => '23.44.170.10',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405031431','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405031507','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405031805','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405060302','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405060351','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405070704','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405080459','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.141',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405080623','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405090421','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 50442,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202404300630','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 166191,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202404300806','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 166191,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202404300824','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 166191,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202404301552','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405031501','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405031551','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405031552','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405031554','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405031558','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405031600','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405031600','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405031810','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405031810','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405031810','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060309','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060309','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060311','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060312','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060333','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060335','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060341','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060356','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060434','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.125',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060435','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'TEST',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060440','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.125',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405060450','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405070704','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405070704','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405070709','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405080507','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405080507','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.141',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405080635','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405080637','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'RAFI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405080637','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'DEVIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405080644','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'DEVIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405080651','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405080725','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'DEVIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405080726','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405080733','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.125',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405090423','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405090431','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405101432','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405101550','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405102042','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405120949','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405120950','YYYYMMDDHH24MI'),
    p_ip_address => '[0:0:0:0:0:0:0:1]',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405130436','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405151438','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405151456','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405151505','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405161520','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405161849','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405161946','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405170401','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405171236','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405171340','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405171433','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405171548','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405171558','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405171622','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405171845','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405180342','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405180454','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405180531','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405180532','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405180542','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405181225','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405181506','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405181530','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.141',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405181549','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405181551','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.125',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405181552','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405181934','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405182125','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405190424','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405190605','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405190630','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405190653','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405191343','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405191348','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405191806','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405200251','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405200251','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405200253','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405200937','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230200',
    p_access_date => to_date('202405220523','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405101511','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405101512','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405101556','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405101556','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405102037','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405102037','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'USER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405102112','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405102112','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405120951','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405120951','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'USER2',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405130439','YYYYMMDDHH24MI'),
    p_ip_address => '23.44.170.10',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'USER2',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405130439','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405130511','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405151508','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405151508','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.23',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405151511','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405151512','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405151513','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.23',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405151604','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405161531','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405161851','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAFI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405161905','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'USER1',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405161906','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'USER',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405161907','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405161947','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405170402','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405170606','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405170609','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171324','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171324','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171329','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171347','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171550','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171630','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171631','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171632','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171632','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171632','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171633','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171633','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171635','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171636','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171638','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171638','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171639','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171845','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171848','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171848','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405171902','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405180359','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => ' ',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405180400','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405180400','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405180407','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405180452','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405180455','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405180504','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405180543','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405181233','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405181244','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405181508','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405181545','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405181552','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.135',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405182048','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190547','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'USER2',
    p_auth_method => 'custom-auth',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190657','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'custom-auth',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190657','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'custom-auth',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190658','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'custom-auth',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190658','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'custom-auth',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190658','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190659','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190707','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'BRISTON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190714','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190746','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => ' ',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190751','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => ' ',
    p_auth_method => 'custom-auth',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190752','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => ' ',
    p_auth_method => 'custom-auth',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190752','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => ' ',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190753','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190754','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405190758','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405191348','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405191352','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405191631','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405191633','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405191634','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405191637','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405191806','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405191806','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405191807','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405191954','YYYYMMDDHH24MI'),
    p_ip_address => '184.25.237.63',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405192000','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200251','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ONLINE-BOOK-STORE',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200251','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200252','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200301','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'JUSTIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200303','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'JUSTIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200304','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'JUSTIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200305','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'JUSTIN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200306','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200314','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.7',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200316','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'ALIF',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200317','YYYYMMDDHH24MI'),
    p_ip_address => '23.47.58.18',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200318','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => '2022-1-60-261@STD.EWUBD.EDU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200321','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'RAJON',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405200939','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405201329','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.69',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'DEVIN1234',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 215031,
    p_owner => 'WKSP_ONLINEBOOKSTORE',
    p_access_date => to_date('202405201332','YYYYMMDDHH24MI'),
    p_ip_address => '23.211.108.62',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
wwv_flow_team_api.create_feedback (
  p_id => 104959431831475830632 + wwv_flow_team_api.g_id_offset
 ,p_feedback_id => 1
 ,p_feedback_type => 1
 ,p_feedback_status => 0
 ,p_application_id => 215031
 ,p_application_name => 'BookWorld'
 ,p_page_id => 2
 ,p_page_name => 'Books'
 ,p_page_last_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_page_last_updated_on => to_date('20240506035359','YYYYMMDDHH24MISS')
 ,p_session_id => '5628925357516'
 ,p_apex_user => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_user_email => '2022-1-60-261@std.ewubd.edu'
 ,p_application_version => 'Release 1.0'
 ,p_session_info => 'security_group_id=101552441239654991975'||chr(10)||
'expires_on=5/7/2024'||chr(10)||
'ip_address=23.47.58.18'||chr(10)||
'session_id='||chr(10)||
'created_on=5/7/2024'
 ,p_session_state => 'P10050_PAGE_ID="b9FjoEc3owVsh1AFHtvHUw"'||chr(10)||
''
 ,p_parsing_schema => 'WKSP_ONLINEBOOKSTORE'
 ,p_http_user_agent => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'
 ,p_remote_addr => '103.133.164.2, 23.57.76.57, 23.211.108.69'
 ,p_remote_user => 'APEX_PUBLIC_USER'
 ,p_http_host => 'apex.oracle.com'
 ,p_server_name => 'apex.oracle.com'
 ,p_server_port => '443'
 ,p_logging_security_group_id => 101552441239654991975
 ,p_logged_by_workspace_name => 'ONLINE-BOOK-STORE'
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_created_on => to_timestamp_tz('20240507070820.019447000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_timestamp_tz('20240507070820.019448000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
);
wwv_flow_team_api.create_feedback (
  p_id => 105731473311093628525 + wwv_flow_team_api.g_id_offset
 ,p_feedback_id => 2
 ,p_feedback_comment => 'Good!'
 ,p_feedback_type => 1
 ,p_feedback_status => 0
 ,p_application_id => 215031
 ,p_application_name => 'BookWorld'
 ,p_page_id => 1
 ,p_page_name => 'Home'
 ,p_page_last_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_page_last_updated_on => to_date('20240503182042','YYYYMMDDHH24MISS')
 ,p_session_id => '5549634348471'
 ,p_apex_user => 'DEVIN1234'
 ,p_user_email => 'dash@pmail.com'
 ,p_application_version => 'Release 1.0'
 ,p_session_info => 'security_group_id=101552441239654991975'||chr(10)||
'expires_on=5/8/2024'||chr(10)||
'ip_address=23.47.58.7'||chr(10)||
'session_id='||chr(10)||
'created_on=5/8/2024'
 ,p_session_state => 'P10050_PAGE_ID="W_UrSege6BbJSKL6KOt8jA"'||chr(10)||
''
 ,p_parsing_schema => 'WKSP_ONLINEBOOKSTORE'
 ,p_http_user_agent => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'
 ,p_remote_addr => '2a09:bac5:49c:1eb::31:fb, 2.16.116.210, 23.47.58.7'
 ,p_remote_user => 'APEX_PUBLIC_USER'
 ,p_http_host => 'apex.oracle.com'
 ,p_server_name => 'apex.oracle.com'
 ,p_server_port => '443'
 ,p_logging_security_group_id => 101552441239654991975
 ,p_logged_by_workspace_name => 'ONLINE-BOOK-STORE'
 ,p_created_by => 'DEVIN1234'
 ,p_created_on => to_timestamp_tz('20240508073438.949062000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
 ,p_updated_by => 'DEVIN1234'
 ,p_updated_on => to_timestamp_tz('20240508073438.949064000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
);
wwv_flow_team_api.create_feedback (
  p_id => 107968424487616304056 + wwv_flow_team_api.g_id_offset
 ,p_feedback_id => 3
 ,p_feedback_comment => 'Valo Hoy nai'
 ,p_feedback_type => 1
 ,p_feedback_status => 0
 ,p_application_id => 215031
 ,p_application_name => 'BookWorld'
 ,p_page_id => 2
 ,p_page_name => 'Books'
 ,p_page_last_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_page_last_updated_on => to_date('20240510164734','YYYYMMDDHH24MISS')
 ,p_session_id => '115503206646093'
 ,p_apex_user => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_user_email => '2022-1-60-261@std.ewubd.edu'
 ,p_application_version => 'Release 1.0'
 ,p_session_info => 'security_group_id=101552441239654991975'||chr(10)||
'expires_on=5/12/2024'||chr(10)||
'ip_address=23.211.108.62'||chr(10)||
'session_id='||chr(10)||
'created_on=5/12/2024'
 ,p_session_state => 'P10050_PAGE_ID="achQ9eesSTXtP2pR3mes-w"'||chr(10)||
''
 ,p_parsing_schema => 'WKSP_ONLINEBOOKSTORE'
 ,p_http_user_agent => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'
 ,p_remote_addr => '103.133.164.2, 104.117.183.21, 23.211.108.62'
 ,p_remote_user => 'APEX_PUBLIC_USER'
 ,p_http_host => 'apex.oracle.com'
 ,p_server_name => 'apex.oracle.com'
 ,p_server_port => '443'
 ,p_logging_security_group_id => 101552441239654991975
 ,p_logged_by_workspace_name => 'ONLINE-BOOK-STORE'
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_created_on => to_timestamp_tz('20240512095335.440548000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_timestamp_tz('20240512095335.440549000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
);
end;
/
--
prompt ...Issue Templates
--
begin
wwv_flow_team_api.create_issue_template (
  p_id => 103322640411664863149 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Template'
 ,p_template_description => 'Template used to log a bug.'
 ,p_template_text => 
'**Expected Behavior**'||chr(10)||
'- Tell us what you believe should happen.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Current Behavior**'||chr(10)||
'- Tell us what happens.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Who is affected**'||chr(10)||
'- Tell us who/what is affected. '||chr(10)||
''||chr(10)||
'**Possible Solution**'||chr(10)||
'- If you can, suggest how you would fix this bug.'||chr(10)||
''||chr(10)||
'**Steps to Reproduce**'||chr(10)||
'- Provide an unambiguous set of steps to reproduce, including screen shots and code snippets if appropriate.'||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
'- What'||
' were you trying to accomplish when the bug occurred. Does the bug only occur under certain conditions, or at certain times of day, and so forth.'||chr(10)||
''||chr(10)||
'**Environment**'||chr(10)||
''||chr(10)||
'- Version: '||chr(10)||
'- Platform: '||chr(10)||
'- Subsystem:'||chr(10)||
''||chr(10)||
'______'||chr(10)||
''||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 103322640570232863149 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Template'
 ,p_template_description => 'Template used to log a feature request.'
 ,p_template_text => 
'**Feature Summary**'||chr(10)||
' - Provide a one paragraph general overview of the feature request.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
' - Does this request relate to a specific situation or process? For example, "I am always frustrated when [...]"'||chr(10)||
''||chr(10)||
''||chr(10)||
' - Please provide any supporting information, including screenshots, use cases, and so forth.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Preferred Solution**'||chr(10)||
'- Provide a clear description of what you would like to see impl'||
'emented.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Alternative Solutions**'||chr(10)||
'- Provide a description of alternative solutions or features considered, or workarounds used.'||chr(10)||
''||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 103322640695068863149 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'How Do I ...'
 ,p_template_description => 'Template used to ask a procedural question.'
 ,p_template_text => 
'**Question**'||chr(10)||
'- State your question or request as succinctly as possible.'||chr(10)||
''||chr(10)||
'**General Context**'||chr(10)||
'- What are you trying to do? '||chr(10)||
''||chr(10)||
''||chr(10)||
'- Where else have you looked or who else have you contacted to find an answer? '||chr(10)||
''||chr(10)||
''||chr(10)||
'**Environment** '||chr(10)||
'Is this question specific to an environment, programming language or other area?'||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue,'||
' then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 103322640784700863149 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Raised'
 ,p_template_description => 'A bug has been raised.'
 ,p_template_text => 
'A **Bug** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 103322640814329863149 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Won''t Action'
 ,p_template_description => 'This issue will not be actioned'
 ,p_template_text => 
'After careful consideration, **no further action will be taken on this issue**. '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 103322640901359863149 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Filed'
 ,p_template_description => 'A feature request has been filed.'
 ,p_template_text => 
'A **Feature Request** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Feature Tracking System: '||chr(10)||
'- Feature ID: '||chr(10)||
'- URL to Feature Definition: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 103322641020193863149 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Known Issue'
 ,p_template_description => 'Reference a known issue.'
 ,p_template_text => 
'After review, it has been determined that this is a known issue, see details below.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 103322641101250863150 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Need More Information'
 ,p_template_description => 'Request for more information.'
 ,p_template_text => 
'**More information is needed for this issue:**'||chr(10)||
''||chr(10)||
'Please provide the information requested below. Without this information it will be difficult to triage and address the issue further.'||chr(10)||
''||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 103322641270287863150 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Followup Action Required'
 ,p_template_description => 'A followup action is required.'
 ,p_template_text => 
'Please perform the following actions: '||chr(10)||
''||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
'4.'||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
end;
/
--
prompt ...Issue Email Prefs
--
begin
wwv_flow_team_api.create_issue_email_prefs (
  p_id => 103322641778963863154 + wwv_flow_team_api.g_id_offset
 ,p_user_id => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_receive_emails_yn => 'Y'
 ,p_notification_types => 'ISSUE_EDIT:COMMENT_ADD:COMMENT_EDIT:STATUS:ASSIGNEE:SUBSCRIBER:MILESTONE:LABEL:DUPLICATE:ASSOCIATION:ATTACHMENT'
 ,p_frequency => 'IMMEDIATELY'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
end;
/
--
prompt ...Label Groups
--
begin
wwv_flow_team_api.create_label_group (
  p_id => 103322637044182863147 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Functional Area'
 ,p_group_color => 'label-color-19'
 ,p_group_description => 'Functional area affected by the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label_group (
  p_id => 103322637952759863148 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Category'
 ,p_group_color => 'label-color-11'
 ,p_group_description => 'Category assigned to the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label_group (
  p_id => 103322638827259863148 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Importance'
 ,p_group_color => 'label-color-16'
 ,p_group_description => 'Level of importance assigned to the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label_group (
  p_id => 103322639489810863148 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Level of Effort'
 ,p_group_color => 'label-color-13'
 ,p_group_description => 'Level of effort to address the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label_group (
  p_id => 103322639807010863148 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Progress'
 ,p_group_color => 'label-color-14'
 ,p_group_description => 'Progress against the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
end;
/
--
prompt ...Labels
--
begin
wwv_flow_team_api.create_label (
  p_id => 103322637107693863147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637044182863147
 ,p_label_name => 'UI / UX'
 ,p_label_desc => 'UI / UX'
 ,p_label_slug => 'ui-ux'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322637271607863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637044182863147
 ,p_label_name => 'Database'
 ,p_label_desc => 'Database'
 ,p_label_slug => 'database'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322637396145863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637044182863147
 ,p_label_name => 'REST Integration'
 ,p_label_desc => 'REST Integration'
 ,p_label_slug => 'rest-integration'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322637468797863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637044182863147
 ,p_label_name => 'CSS / HTML'
 ,p_label_desc => 'CSS / HTML'
 ,p_label_slug => 'css-html'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322637566773863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637044182863147
 ,p_label_name => 'Dynamic Actions / JavaScript'
 ,p_label_desc => 'Dynamic Actions / JavaScript'
 ,p_label_slug => 'dynamic-actions-javascript'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322637697477863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637044182863147
 ,p_label_name => 'Security'
 ,p_label_desc => 'Security'
 ,p_label_slug => 'security'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322637759837863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637044182863147
 ,p_label_name => 'Administration'
 ,p_label_desc => 'Administration'
 ,p_label_slug => 'administration'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322637847424863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637044182863147
 ,p_label_name => 'External System Integration'
 ,p_label_desc => 'External System Integration'
 ,p_label_slug => 'external-system-integration'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322638095740863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637952759863148
 ,p_label_name => 'Bug'
 ,p_label_desc => 'Bug'
 ,p_label_slug => 'bug'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322638142626863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637952759863148
 ,p_label_name => 'Enhancement Request'
 ,p_label_desc => 'Enhancement Request'
 ,p_label_slug => 'enhancement-request'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322638255316863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637952759863148
 ,p_label_name => 'Feature Request'
 ,p_label_desc => 'Feature Request'
 ,p_label_slug => 'feature-request'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322638301962863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637952759863148
 ,p_label_name => 'Security Issue'
 ,p_label_desc => 'Security Issue'
 ,p_label_slug => 'security-issue'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322638450044863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637952759863148
 ,p_label_name => 'Performance Issue'
 ,p_label_desc => 'Performance Issue'
 ,p_label_slug => 'performance-issue'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322638546411863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637952759863148
 ,p_label_name => 'Installation Issue'
 ,p_label_desc => 'Installation Issue'
 ,p_label_slug => 'installation-issue'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322638693649863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637952759863148
 ,p_label_name => 'Documentation Issue'
 ,p_label_desc => 'Documentation Issue'
 ,p_label_slug => 'documentation-issue'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322638719514863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322637952759863148
 ,p_label_name => 'Training Issue'
 ,p_label_desc => 'Training Issue'
 ,p_label_slug => 'training-issue'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322638918573863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322638827259863148
 ,p_label_name => 'Critical'
 ,p_label_desc => 'Critical'
 ,p_label_slug => 'critical'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322639046637863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322638827259863148
 ,p_label_name => 'Important'
 ,p_label_desc => 'Important'
 ,p_label_slug => 'important'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322639182363863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322638827259863148
 ,p_label_name => 'Normal'
 ,p_label_desc => 'Normal'
 ,p_label_slug => 'normal'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322639234031863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322638827259863148
 ,p_label_name => 'Backlog'
 ,p_label_desc => 'Backlog'
 ,p_label_slug => 'backlog'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322639392990863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322638827259863148
 ,p_label_name => 'Will Not Address'
 ,p_label_desc => 'Will Not Address'
 ,p_label_slug => 'will-not-address'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322639570566863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322639489810863148
 ,p_label_name => 'Easy Fix'
 ,p_label_desc => 'Easy Fix'
 ,p_label_slug => 'easy-fix'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322639677768863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322639489810863148
 ,p_label_name => 'Moderate Effort'
 ,p_label_desc => 'Moderate Effort'
 ,p_label_slug => 'moderate-effort'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322639791316863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322639489810863148
 ,p_label_name => 'Large Development Effort'
 ,p_label_desc => 'Large Development Effort'
 ,p_label_slug => 'large-development-effort'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143232','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322639920724863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322639807010863148
 ,p_label_name => 'Working On It'
 ,p_label_desc => 'Working On It'
 ,p_label_slug => 'working-on-it'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322640004200863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322639807010863148
 ,p_label_name => 'Requires More Info'
 ,p_label_desc => 'Requires More Info'
 ,p_label_slug => 'requires-more-info'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322640113125863148 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322639807010863148
 ,p_label_name => 'Waiting on Third Party'
 ,p_label_desc => 'Waiting on Third Party'
 ,p_label_slug => 'waiting-on-third-party'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322640203953863149 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322639807010863148
 ,p_label_name => 'Can Not Fix'
 ,p_label_desc => 'Can Not Fix'
 ,p_label_slug => 'can-not-fix'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_label (
  p_id => 103322640336418863149 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 103322639807010863148
 ,p_label_name => 'Complete'
 ,p_label_desc => 'Complete'
 ,p_label_slug => 'complete'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
end;
/
--
prompt ... Milestones
--
begin
wwv_flow_team_api.create_milestone (
  p_id => 103322641384575863150 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Code Freeze'
 ,p_milestone_date => to_date('20240518143233','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'code-freeze'
 ,p_milestone_id => 1
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_milestone (
  p_id => 103322641458197863150 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'UI Freeze'
 ,p_milestone_date => to_date('20240602143233','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'ui-freeze'
 ,p_milestone_id => 2
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
wwv_flow_team_api.create_milestone (
  p_id => 103322641518615863150 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Final Release'
 ,p_milestone_date => to_date('20240617143233','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'final-release'
 ,p_milestone_id => 3
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
end;
/
--
prompt ... Issues
--
begin
wwv_flow_team_api.create_issue (
  p_id => 103322641645822863152 + wwv_flow_team_api.g_id_offset
 ,p_title => 'Welcome to Team Development in Oracle APEX!'
 ,p_slug => 'welcome-to-team-development-in-oracle-apex'
 ,p_issue_text => 
'Hi there! '||chr(10)||
''||chr(10)||
'This is your very first issue! You can create issues to keep track of tasks, features, bugs, and feedback for all of your APEX projects!  You can add labels to issues, add assignees, set milestones, and even apply formatting using Markdown shorthand!  '||chr(10)||
''||chr(10)||
'Below is a quick sample of what you can do with Markdown:'||chr(10)||
'# Orionis bellica Stygias partes'||chr(10)||
' '||chr(10)||
'## Solibus an rutilis cornu'||chr(10)||
' '||chr(10)||
'Lorem markd'||
'ownum formosae. [Est medio](http://www.modomarte.com/cantu) et illi adunca? Miserum Phaethon, Editus, abrupta colonos; Aeeta annum; facere pruniceum '||chr(10)||
'**domat**, discussisque saevo, Tereo. _Quid noctis adhuc, nisi nemo dignos, aures sonus mentae conspecta?_ '||chr(10)||
' '||chr(10)||
'```js '||chr(10)||
'device_intranet_cloud(page_disk); '||chr(10)||
'if (81 >= scanner + realityHoneypot + intellectual_heuristic) { '||chr(10)||
'    ataDataWeb -= fileWormCamera '||
'+ hypertext; '||chr(10)||
'    hdtv(-3 - 2); '||chr(10)||
'    folder(controlHtml, model - 5); '||chr(10)||
'} '||chr(10)||
'``` '||chr(10)||
' '||chr(10)||
'## Consortia dum mea aethere Deionidenque vixque est '||chr(10)||
' '||chr(10)||
'Forma duris igne duritiem Minervaetransformabantur, moriemur manibusque nulla eripienda est rima grave tu. Illis succedat fit. Ter amo quod plurima, non ab alimentaque adest videbitur at. Avidissima agam qui superba a partem [crines precantia limen](http://totover'||
'tice.com/vertice) in **ignibus spernit ritusque** iamdudum. '||chr(10)||
' '||chr(10)||
'> Arcum aristis arsit generosior in cum laevum suae, ferebat, hoc. Manus faciat, '||chr(10)||
'> nec inpetus sua silvas ossa? Incursant Nereide diversaeque velut signumque '||chr(10)||
'> Hectora, convellere caede hostesque oppida, diu viriles. Isdem **sacra**, '||chr(10)||
'> facta, in viximus alimentaque quae patria, ut derigere vires. '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'### Inde erat dicente viribus '||chr(10)||
''||
' '||chr(10)||
'Nomina aevumque pepercit ridet, vellet stetit tibi, Alcyone a Lelex adductis flumine stetit. *Fides* caeli gloria aquis neget meritis subitis tumulumque carmina illius non satis arces. Repressit volantes egesta, `et ira poscit` lacertis ita timidi. '||chr(10)||
' '||chr(10)||
'### Causam nec plagamque Minyis '||chr(10)||
' '||chr(10)||
'Venit caput vel sublimis haud causa et audire, terraeque sed, per duce gaudete Niobe fierent quantusque villis.'||
' Non **vallibus quinque vaga** densum si meruisse ponit olim terras saepe? Saxum sidera regia; feram hastarum os vigor sponte hinnitus inter est. '||chr(10)||
' '||chr(10)||
'- Vere furta ut exegi '||chr(10)||
'- Tempora poenaeque temptanti '||chr(10)||
'- Misisset est nec vicit edita hic '||chr(10)||
' '||chr(10)||
'Si ista Abantiades pennis, nusquam tu ira ego per. Ille sit, cum aditum culmine, primaque quae mira! Vix herbae volanti caeli, [quisquis](http://bello.org/ripa'||
'e-maenalon), et capillis coepisse iacta, tibi anum, tum iam persequar. Videtur quotiensque vires. Firmo ocius coepta ipsum ignoro, Matri nec regni quod, stimulosque quam librata. '||chr(10)||
' '||chr(10)||
'1. Ille citaeque illo ille Crotonis terra '||chr(10)||
'2. Formatae lancea hac de iuvabat bicolor et '||chr(10)||
'3. Vastator consistere pondere te carmen consorti ex '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'| In ante metus dictum at tempor   | Luctus accumsan | Bibendum | Conse'||
'quat | '||chr(10)||
'|----------------------------------|----------------:|:--------:|-----------:| '||chr(10)||
'| Lectus arcu bibendum at varius   |            37.5 |   quam   |       .07 | '||chr(10)||
'| justo eget magna fermentum       |           127.2 |   lacus  |       .88 | '||chr(10)||
'| Platea dictumst quisque sagittis |            33.0 |   quam   |       .39 | '
 ,p_row_version => 1
 ,p_status => 'OPEN'
 ,p_issue_number => 1
 ,p_deleted => 'N'
 ,p_created_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_created_by => '2022-1-60-261@STD.EWUBD.EDU'
 ,p_updated_on => to_date('20240503143233','YYYYMMDDHH24MISS')
 ,p_updated_by => '2022-1-60-261@STD.EWUBD.EDU'
);
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ... Extension Links
 
 
prompt ...workspace objects
 
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(103334323058279030978)
,p_name=>'App 215031 Push Notifications Credentials'
,p_static_id=>'App_215031_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(104615753765367617252)
,p_name=>'TMDb API Key'
,p_static_id=>'tmdb_api_key'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.themoviedb.org/3/',
''))
,p_prompt_on_install=>false
);
end;
/
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(105981260552271828208)
,p_name=>'Google API Key'
,p_static_id=>'google_api_key'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_prompt_on_install=>true
);
end;
/
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(105981262606401868111)
,p_name=>'Moviedb API Key'
,p_static_id=>'Moviedb_API_Key'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_prompt_on_install=>true
);
end;
/
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(102280980604902275586)
,p_name=>'Sample Application - Github Repositories'
,p_static_id=>'Sample_Application___Github_Repositories'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('Sample_Application___Github_Repositories'),'https://api.github.com/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('Sample_Application___Github_Repositories'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('Sample_Application___Github_Repositories'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('Sample_Application___Github_Repositories'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('Sample_Application___Github_Repositories'),'')
,p_prompt_on_install=>false
);
end;
/
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(102910602132858399293)
,p_name=>'www-googleapis-com-youtube-v3'
,p_static_id=>'www_googleapis_com_youtube_v3'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('www_googleapis_com_youtube_v3'),'https://www.googleapis.com/youtube/v3/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('www_googleapis_com_youtube_v3'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('www_googleapis_com_youtube_v3'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('www_googleapis_com_youtube_v3'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('www_googleapis_com_youtube_v3'),'')
,p_prompt_on_install=>false
);
end;
/
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(103514060676860222223)
,p_name=>'api-themoviedb-org-3-list'
,p_static_id=>'api_themoviedb_org_3_list'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_themoviedb_org_3_list'),'https://api.themoviedb.org/3/list/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_themoviedb_org_3_list'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_themoviedb_org_3_list'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_themoviedb_org_3_list'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_themoviedb_org_3_list'),'')
,p_prompt_on_install=>false
);
end;
/
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(104592132553909776485)
,p_name=>'api-themoviedb-org-3'
,p_static_id=>'api_themoviedb_org_3'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_themoviedb_org_3'),'https://api.themoviedb.org/3/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_themoviedb_org_3'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_themoviedb_org_3'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_themoviedb_org_3'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_themoviedb_org_3'),'')
,p_prompt_on_install=>false
);
end;
/
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_ONLINEBOOKSTORE';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_ONLINEBOOKSTORE - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_230200
-- Exported 05:28 Wednesday May 22, 2024 by: 2022-1-60-261@STD.EWUBD.EDU
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 05:28 Wednesday May 22, 2024 by: 2022-1-60-261@STD.EWUBD.EDU
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'ONLINE-BOOK-STORE';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
