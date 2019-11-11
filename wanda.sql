set define off
set verify off
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
 
--application/set_environment
prompt  APPLICATION 121 - Wanda the fish
--
-- Application Export:
--   Application:     121
--   Name:            Wanda the fish
--   Date and Time:   18:40 Thursday September 20, 2018
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         4.1.0.00.32
--   Instance ID:     63404924119295
 
-- Import:
--   Using application builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040100 or as the owner (parsing schema) of the application.
 
-- Application Statistics:
--   Pages:                    2
--     Items:                  2
--     Computations:           0
--     Validations:            0
--     Processes:              2
--     Regions:                4
--     Buttons:                2
--     Dynamic Actions:        0
--   Shared Components
--     Breadcrumbs:            1
--        Entries              1
--     Items:                  0
--     Computations:           0
--     Processes:              0
--     Parent Tabs:            0
--     Tab Sets:               0
--        Tabs:                0
--     NavBars:                1
--     Lists:                  0
--     Shortcuts:              0
--     Themes:                 2
--     Templates:
--        Page:               14
--        List:               21
--        Report:             15
--        Label:              11
--        Region:             44
--     Messages:               0
--     Build Options:          0
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040100 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,2804216279938690));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2011.02.12');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,121);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(nvl(wwv_flow_application_install.get_application_id,121));
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(nvl(wwv_flow_application_install.get_application_id,121));
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => nvl(wwv_flow_application_install.get_application_id,121),
  p_display_id=> nvl(wwv_flow_application_install.get_application_id,121),
  p_owner => nvl(wwv_flow_application_install.get_schema,'BLOG'),
  p_name  => nvl(wwv_flow_application_install.get_application_name,'Wanda the fish'),
  p_alias => nvl(wwv_flow_application_install.get_application_alias,'WANDA'),
  p_page_view_logging => 'NO',
  p_default_page_template=> 198406262980490521 + wwv_flow_api.g_id_offset,
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt_last_reset => '20180920184030',
  p_max_session_length_sec=> 28800,
  p_compatibility_mode=> '4.0',
  p_home_link=> 'f?p=&APP_ID.:1:&SESSION.',
  p_flow_language=> 'en-us',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_allow_feedback_yn=> '',
  p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'/img/'),
  p_publish_yn=> '',
  p_documentation_banner=> '',
  p_authentication=> 'PLUGIN',
  p_authentication_id=> 7126207982474462 + wwv_flow_api.g_id_offset,
  p_login_url=> '',
  p_logout_url=> '',
  p_application_tab_set=> 0,
  p_logo_image => '#WORKSPACE_IMAGES#Wanda.jpg',
  p_logo_image_attributes => 'width="100" height="80" alt="Wanda speaks" title="Wanda speaks"',
  p_public_url_prefix => '',
  p_public_user=> '',
  p_dbauth_url_prefix => '',
  p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,''),
  p_cust_authentication_process=> '.'||to_char(7126207982474462 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version=> 'release 1.0',
  p_flow_status=> 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status=> 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_browser_cache=>'Y',
  p_browser_frame=>'A',
  p_vpd=> '',
  p_vpd_teardown_code=> '',
  p_csv_encoding=> 'Y',
  p_theme_id => 101,
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss=> '20180920184030',
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id => 7126408644474463 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 200,
  p_icon_image => '',
  p_icon_subtext=> 'Logout',
  p_icon_target=> '&LOGOUT_URL.',
  p_icon_image_alt=> 'Logout',
  p_icon_height=> 32,
  p_icon_width=> 32,
  p_icon_height2=> 24,
  p_icon_width2=> 24,
  p_nav_entry_is_feedback_yn => '',
  p_icon_bar_disp_cond=> '',
  p_icon_bar_disp_cond_type=> 'NEVER',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Shared Lists of values
--
prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00001
prompt  ...PAGE 1: Page 1
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 1
 ,p_name => 'Page 1'
 ,p_step_title => 'Wanda the fish'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Page 1'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20110118231254'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<pre>&P1_WANDA.</pre>';

wwv_flow_api.create_page_plug (
  p_id=> 7127823591474550 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Wanda says',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 109468863912376444+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 7133908279019932 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> '&nbsp;',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 7133508494010603 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 10,
  p_button_plug_id => 7133908279019932+wwv_flow_api.g_id_offset,
  p_button_name    => 'MAKE_WANDA_SPEAK',
  p_button_static_id=> 'MAKE_WANDA_SPEAK',
  p_button_action  => 'SUBMIT',
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Make Wanda Speak again',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>7133827541016091 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_branch_action=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 18-JAN-2011 23:11 by ADMIN');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>7129927204741534 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_WANDA',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 7127823591474550+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Wanda',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 109473185364383264+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||unistr('\000a')||
'i number;'||unistr('\000a')||
'begin'||unistr('\000a')||
'for i in ('||unistr('\000a')||
'  select  msg'||unistr('\000a')||
'              FROM ('||unistr('\000a')||
'  select  msg'||unistr('\000a')||
'  from xedba.wanda_fortunes'||unistr('\000a')||
'  union'||unistr('\000a')||
'  select  msg'||unistr('\000a')||
'  from xedba.wanda_literature'||unistr('\000a')||
'  union'||unistr('\000a')||
'  select  msg'||unistr('\000a')||
'  from xedba.wanda_riddles'||unistr('\000a')||
'  )'||unistr('\000a')||
'  where msg is not null '||unistr('\000a')||
'  order by dbms_random.value'||unistr('\000a')||
'  )'||unistr('\000a')||
'loop'||unistr('\000a')||
':P1_WANDA := i.msg;'||unistr('\000a')||
'exit;'||unistr('\000a')||
'end loop;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 7130325351807292 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'fetch msg',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00002
prompt  ...PAGE 2: Wanda the fish speaks in Apex
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 2
 ,p_name => 'Wanda the fish speaks in Apex'
 ,p_step_title => 'Wanda the fish speaks in Apex'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Wanda the fish speaks in Apex'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20110119133656'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'&P2_WANDA.';

wwv_flow_api.create_page_plug (
  p_id=> 7182607271155363 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Wanda says',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 109468863912376444+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 7182831587155421 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> '&nbsp;',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 7183006809155422 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 10,
  p_button_plug_id => 7182831587155421+wwv_flow_api.g_id_offset,
  p_button_name    => 'MAKE_WANDA_SPEAK',
  p_button_static_id=> 'MAKE_WANDA_SPEAK',
  p_button_action  => 'SUBMIT',
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Make Wanda Speak again',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>7183727876155443 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 18-JAN-2011 23:11 by ADMIN');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>7183207610155426 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_WANDA',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 7182607271155363+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Wanda',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 109473185364383264+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||unistr('\000a')||
'i number;'||unistr('\000a')||
'begin'||unistr('\000a')||
'for i in ('||unistr('\000a')||
'        SELECT '||unistr('\000a')||
'        EXTRACTVALUE(t, ''/string'',''xmlns="http://www.fullerdata.com/FortuneCookie/FortuneCookie.asmx"'') wanda'||unistr('\000a')||
'      FROM'||unistr('\000a')||
'        (SELECT XMLTYPE(HTTPURITYPE (''http://www.fullerdata.com/FortuneCookie/FortuneCookie.asmx/GetFortuneCookie'').getClob () ) t'||unistr('\000a')||
'        FROM dual'||unistr('\000a')||
'        ) '||unistr('\000a')||
'  )'||unistr('\000a')||
'loop'||unistr('\000a')||
':P2_WANDA := i.wanda;'||unistr('\000a')||
'exit;'||unistr('\000a')||
'end loop;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 7183430683155436 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'fetch msg',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 7127512295474519 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>7127926149474552 + wwv_flow_api.g_id_offset,
  p_menu_id=>7127512295474519 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'Page 1',
  p_long_name=>'',
  p_link=>'f?p=121:1:&SESSION.',
  p_page_id=>1,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

prompt  ...page templates for application: 121
--
--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 7118829455474357
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/bot_bar_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><br /></td>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/bot_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br />'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td valign="top" class="t1Logo">#LOGO#</td>'||unistr('\000a')||
'    <td align="right" valign="top"><br /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1topbarMiddle"><br /></td>'||unistr('\000a')||
' ';

c3:=c3||'   <td><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table class="t1PageBody" cellpadding="0" cellspacing="0" border="0" summary="" width="100%" height="70%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1PageCenter" valign="top"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" valign="top" class="t1PageBody"><div class="t1messages">';

c3:=c3||'#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_03##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'';

wwv_flow_api.create_template(
  p_id=> 7118829455474357 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0"',
  p_theme_id  => 1,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_template_comment => '18');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs
prompt  ......Page template 7118932062474367
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/bot_bar_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1user">&APP_USER.</div></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1copy"><!-- Copyright Here --><span class="t1Customize">#CUSTOMIZE#</span></div></td>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/th';

c2:=c2||'eme_1/bot_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br />'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td valign="top" class="t1Logo">#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'   <td valign="top" width="100%">#REGION_POSITION_07#</td>'||unistr('\000a')||
'    <td align="right" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><img sr';

c3:=c3||'c="#IMAGE_PREFIX#themes/theme_1/top_bar_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1topbarMiddle"><br />#REGION_POSITION_01#</td>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table class="t1PageBody" cellpadding="0" cellspacing="0" border="0" summary="" width="100%" height="70%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1PageCenter" valign="top"><table summary="" cellpa';

c3:=c3||'dding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" valign="top" class="t1PageBody"><div class="t1messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'';

wwv_flow_api.create_template(
  p_id=> 7118932062474367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t1Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t1NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t1NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 1,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_with_side_bar
prompt  ......Page template 7119002073474368
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/bot_bar_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1user">&APP_USER.</div></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1copy"><!-- Copyright Here --><span class="t1Customize">#CUSTOMIZE#</span></div></td>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/th';

c2:=c2||'eme_1/bot_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br />'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td valign="top" class="t1Logo">#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'   <td valign="top" width="100%">#REGION_POSITION_07#</td>'||unistr('\000a')||
'    <td align="right" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" height="70%">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'  ';

c3:=c3||'  <td class="t1topbarLeft" valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_far_left.png" alt="" /></td>'||unistr('\000a')||
'    <td align="right" class="t1topbarLeft" colspan="2"  valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_barleft2_1.png" alt="" /></td>'||unistr('\000a')||
'    <td align="right" class="t1topbarLeft" valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_barleft2_2.png" alt="" /></td>'||unistr('\000a')||
'    <td cla';

c3:=c3||'ss="t1topbarMiddle" valign="top"><table height="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr><td height="20"><br /></td></tr><tr><td valign="bottom" height="20">#REGION_POSITION_01#</td></tr></table></td>'||unistr('\000a')||
'    <td valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td class="t1PageLeft" colspan="3" align="left" valign="top">#R';

c3:=c3||'EGION_POSITION_02#</td>'||unistr('\000a')||
'    <td><br /></td>'||unistr('\000a')||
'    <td class="t1PageRight" colspan="2" valign="top" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" valign="top" class="t1PageBody"><div class="t1messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_04#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_';

c3:=c3||'03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 7119002073474368 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t1NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t1NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 1,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs
prompt  ......Page template 7119116525474368
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/bot_bar_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1user">&APP_USER.</div></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1copy"><!-- Copyright Here --><span class="t1Customize">#CUSTOMIZE#</span></div></td>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/th';

c2:=c2||'eme_1/bot_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br />'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td valign="top" class="t1Logo">#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'   <td valign="top" width="100%">#REGION_POSITION_07#</td>'||unistr('\000a')||
'    <td align="right" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" height="70%">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'  ';

c3:=c3||'  <td colspan="5" class="t1ParentTabHolder"><table border="0" cellpadding="0" cellspacing="0" summary="" align="right"><tr><td><br /></td>#TAB_CELLS#</tr></table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1topbarMiddle" valign="bottom"><table cellpadding="0" cellspacing="0" border="0" summary=""><tr><td height="';

c3:=c3||'50%"><br /></td></tr><tr><td height="50%">#REGION_POSITION_01#</td></tr></table></td>'||unistr('\000a')||
'    <td valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><br /></td>'||unistr('\000a')||
'<td class="t1PageCenter" colspan="2" valign="top" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" valign="top" class="t1PageBody';

c3:=c3||'"><div class="t1messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 7119116525474368 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_on_left.png" border="0" alt="" /></td>'||unistr('\000a')||
'<td class="t1ParentTabCenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_on_right.png" border="0" alt="" /></td>'||unistr('\000a')||
''||unistr('\000a')||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_off_left.png" border="0" alt="" /></td>'||unistr('\000a')||
'<td class="t1ParentTabCenterOff"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_off_right.png" border="0" alt="" /></td>'||unistr('\000a')||
'',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t1NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t1NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comment => '12');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_with_side_bar
prompt  ......Page template 7119208595474369
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/bot_bar_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1user">&APP_USER.</div></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1copy"><!-- Copyright Here --><span class="t1Customize">#CUSTOMIZE#</span></div></td>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/th';

c2:=c2||'eme_1/bot_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br />'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td valign="top" class="t1Logo">#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'   <td valign="top" width="100%">#REGION_POSITION_07#</td>'||unistr('\000a')||
'    <td align="right" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" height="70%">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'  ';

c3:=c3||'  <td colspan="5" class="t1ParentTabHolder"><table border="0" cellpadding="0" cellspacing="0" summary="" align="right"><tr><td><br /></td>#TAB_CELLS#</tr></table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td class="t1topbarLeft" valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_far_left.png" alt="" /></td>'||unistr('\000a')||
'    <td align="right" class="t1topbarLeft" colspan="2"  valign="top"><img src="#IMAGE_PREFIX#themes';

c3:=c3||'/theme_1/top_barleft2_1.png" alt="" /></td>'||unistr('\000a')||
'    <td align="right" class="t1topbarLeft" valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_barleft2_2.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1topbarMiddle" valign="top"><table height="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr><td height="20"><br /></td></tr><tr><td valign="bottom" height="20">#REGION_POSITION_01#</td></tr></tab';

c3:=c3||'le></td>'||unistr('\000a')||
'    <td valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td class="t1PageLeft" colspan="3" align="left" valign="top">#REGION_POSITION_02#</td>'||unistr('\000a')||
'    <td><br /></td>'||unistr('\000a')||
'    <td class="t1PageRight" colspan="2" valign="top" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" valign=';

c3:=c3||'"top" class="t1PageBody"><div class="t1messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_04#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 7119208595474369 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_on_left.png" border="0" alt="" /></td>'||unistr('\000a')||
'<td class="t1ParentTabCenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_on_right.png" border="0" alt="" /></td>'||unistr('\000a')||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_off_left.png" border="0" alt="" /></td>'||unistr('\000a')||
'<td class="t1ParentTabCenterOff"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_off_right.png" border="0" alt="" /></td>'||unistr('\000a')||
'',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t2notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t1NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t1NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 1,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 7119326731474369
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" valign="top"><div class="t1messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 7119326731474369 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 1,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 7119414548474369
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" valign="top">'||unistr('\000a')||
'<div style="border:1px solid black;">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'#BOX_BODY##REGION_POSITION_04#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 7119414548474369 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '',
  p_navigation_bar=> '',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 1,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs
prompt  ......Page template 7119505182474370
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/bot_bar_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1user">&APP_USER.</div></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1copy"><!-- Copyright Here --><span class="t1Customize">#CUSTOMIZE#</span></div></td>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/th';

c2:=c2||'eme_1/bot_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br />'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td valign="top" class="t1Logo">#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'   <td valign="top" width="100%">#REGION_POSITION_07#</td>'||unistr('\000a')||
'    <td align="right" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" height="70%">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'  ';

c3:=c3||'  <td colspan="5" class="t1ParentTabHolder"><table border="0" cellpadding="0" cellspacing="0" summary="" align="right"><tr><td><br /></td>#PARENT_TAB_CELLS#</tr></table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td align="right" class="t1topbarLeft"><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_left2.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1topbarMiddle" valign="top"><table border="0" cellpadding="0" cellspacing="0" ';

c3:=c3||'summary=""><tr><td height="20">#TAB_CELLS#</td></tr><tr><td height="20">#REGION_POSITION_01#</td></tr></table></td>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><br /></td>'||unistr('\000a')||
'    <td class="t1PageRight" colspan="2" valign="top" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" vali';

c3:=c3||'gn="top" class="t1PageBody"><div class="t1messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 7119505182474370 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<span class="t1ChildTab">[&nbsp;#TAB_LABEL#&nbsp;]</span>#TAB_INLINE_EDIT#',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#" class="t1ChildTab">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_on_left.png" border="0" alt="" /></td>'||unistr('\000a')||
'<td class="t1ParentTabCenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_on_right.png" border="0" alt="" /></td>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_off_left.png" border="0" alt="" /></td>'||unistr('\000a')||
'<td class="t1ParentTabCenterOff"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_off_right.png" border="0" alt="" /></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t1NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t1NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 1,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_with_side_bar
prompt  ......Page template 7119628903474370
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/theme_1/bot_bar_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1user">&APP_USER.</div></td>'||unistr('\000a')||
'    <td class="t1BotbarMiddle"><div id="t1copy"><!-- Copyright Here --><span class="t1Customize">#CUSTOMIZE#</span></div></td>'||unistr('\000a')||
'    <td><img src="#IMAGE_PREFIX#themes/th';

c2:=c2||'eme_1/bot_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br />'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td valign="top" class="t1Logo">#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'   <td valign="top" width="100%">#REGION_POSITION_07#</td>'||unistr('\000a')||
'    <td align="right" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" height="70%">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'  ';

c3:=c3||'  <td colspan="5" class="t1ParentTabHolder"><table border="0" cellpadding="0" cellspacing="0" summary="" align="right"><tr><td><br /></td>#PARENT_TAB_CELLS#</tr></table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td class="t1topbarLeft" valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_far_left.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1topbarLeft" colspan="2"  valign="top"><img src="#IMAGE_PREFIX#themes/theme_';

c3:=c3||'1/top_barleft2_1.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1topbarLeft" valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_barleft2_2.png" alt="" /></td>'||unistr('\000a')||
'    <td class="t1topbarMiddle" valign="top"><table height="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr><td height="20">#TAB_CELLS#</td></tr><tr><td valign="bottom" height="20">#REGION_POSITION_01#</td></tr></table></td>'||unistr('\000a')||
'    <td';

c3:=c3||' valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/top_bar_right.png" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td class="t1PageLeft" colspan="3" align="left" valign="top">#REGION_POSITION_02#</td>'||unistr('\000a')||
'    <td><br /></td>'||unistr('\000a')||
'    <td class="t1PageRight" colspan="2" valign="top" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" valign="top" class="t1P';

c3:=c3||'ageBody"><div class="t1messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_04#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 7119628903474370 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<span class="t1ChildTab">[&nbsp;#TAB_LABEL#&nbsp;]</span>#TAB_INLINE_EDIT#',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#" class="t1ChildTab">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_on_left.png" border="0" alt="" /></td>'||unistr('\000a')||
'<td class="t1ParentTabCenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_on_right.png" border="0" alt="" /></td>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_off_left.png" border="0" alt="" /></td>'||unistr('\000a')||
'<td class="t1ParentTabCenterOff"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_1/tab_off_right.png" border="0" alt="" /></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t1NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t1NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 1,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/funeurope_one_level_tabs
prompt  ......Page template 109210270914702928
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'||unistr('\000a')||
'<html xmlns="http://www.w3.org/1999/xhtml">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
''||unistr('\000a')||
'<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />'||unistr('\000a')||
'<meta name="keywords" content="&P_KEYWORDS." />'||unistr('\000a')||
'<meta name="description" content="&P_DESCRIPTION." />'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" h';

c1:=c1||'ref="#WORKSPACE_IMAGES#theme_3_1.css" type="text/css" />'||unistr('\000a')||
''||unistr('\000a')||
'<script type="text/javascript" src="http://www.google.com/jsapi"></script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'  google.load("jquery", "1.3.2");'||unistr('\000a')||
'  google.load("jqueryui", "1.7.2");'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'$(function(){'||unistr('\000a')||
'  $(''.ErrorPageMessage'').remove();'||unistr('\000a')||
'});'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_ns_3_1.js" type="';

c1:=c1||'text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_get_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_builder.js" type="text/javascript"></script>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#simplemodal.js"></script>'||unistr('\000a')||
'<link href="http://ajax.googleapi';

c1:=c1||'s.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'a:focus {'||unistr('\000a')||
'outline-style:none;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA th{'||unistr('\000a')||
'background:url("#WORKSPACE_IMAGES#bck-search.gif") repeat scroll 0 0 #E9E9E9;'||unistr('\000a')||
'border:1px solid #D1D1D1;'||unistr('\000a')||
'font-weight:bold;'||unistr('\000a')||
'padding:0.7em;'||unistr('\000a')||
'color:#CC0000;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA td {'||unistr('\000a')||
'	/*background: #e2e2e2;*/'||unistr('\000a')||
'	backgro';

c1:=c1||'und: #fff;'||unistr('\000a')||
'	font:normal 8pt Tahoma;'||unistr('\000a')||
'	padding:2px 5px;'||unistr('\000a')||
'	empty-cells:show!important;'||unistr('\000a')||
'        /*'||unistr('\000a')||
'	border-bottom:1px solid #b8b8b8;'||unistr('\000a')||
'	border-top:1px solid #fff;'||unistr('\000a')||
'	border-right:1px solid #b8b8b8;'||unistr('\000a')||
'	border-left:1px solid #fff;'||unistr('\000a')||
'        */'||unistr('\000a')||
'	border:1px solid #b8b8b8!important;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA th div {'||unistr('\000a')||
'	/* color:#fff; */'||unistr('\000a')||
'        color:#CC0000;'||unistr('\000a')||
'	font-size:8pt;'||unistr('\000a')||
'	letter-spacing:1px;'||unistr('\000a')||
'	text-decoration';

c1:=c1||':none;'||unistr('\000a')||
'	cursor:pointer;'||unistr('\000a')||
'	margin:3px 9px;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA th:hover {'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	background:#f6a828 url(#IMAGE_PREFIX#themes/theme_6/ir_bg_hover2.png) repeat-x scroll 50%;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA a {'||unistr('\000a')||
'	/* color:#4C7CC1; */'||unistr('\000a')||
'        color:#CC0000;'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	font-size:11px;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'table.apexir_WORKSHEET_DATA a:hover {'||unistr('\000a')||
'	color:#006699; /* color: #FFB300; */'||unistr('\000a')||
'}'||unistr('\000a')||
'/';

c1:=c1||'*********** Interactive Reports Look a Like *************/'||unistr('\000a')||
'.t6IrLookaLike a,.t6IrLookaLike a:link ,.t6IrLookaLike a:visited,.t6IrLookaLike a:active,.t6IrLookaLike a:hover{'||unistr('\000a')||
'	/* color:#FFF!important; */'||unistr('\000a')||
'        color:#CC0000;'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	font-size:8pt;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.t6IrLookaLike {padding-left:8px;}'||unistr('\000a')||
''||unistr('\000a')||
'table.apexir_WORKSHEET_DATA td.apex_report_break {'||unistr('\000a')||
'	color:#FFFFFF!important;'||unistr('\000a')||
'	background:#4C7CC1!';

c1:=c1||'important;'||unistr('\000a')||
'	padding-left: 16px!important;'||unistr('\000a')||
'	border-top:1px solid #b8b8b8!important;'||unistr('\000a')||
'	border-right:1px solid #b8b8b8!important;'||unistr('\000a')||
'	border-bottom:1px solid #FFF!important;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA td.apex_report_break a,table.apexir_WORKSHEET_DATA td.apex_report_break a:link ,table.apexir_WORKSHEET_DATA d.apex_report_break a:visited,table.apexir_WORKSHEET_DATA td.apex_report_break a:active{'||unistr('\000a')||
'	color';

c1:=c1||':#FFF!important;'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	font-size:8pt;'||unistr('\000a')||
'	font-weight:bold;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
''||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#simplemodalIR.js"></script>'||unistr('\000a')||
''||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'  $(function(){'||unistr('\000a')||
'$("#apexir_rollover").appendTo("body"); '||unistr('\000a')||
'  });'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'<!--'||unistr('\000a')||
'/*Global JS Variables*/'||unistr('\000a')||
'var htmldb_Img_Dir = "#IMAGE_PREFIX#";'||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>'||unistr('\000a')||
''||unistr('\000a')||
'<style ';

c1:=c1||'type="text/css" media="screen">'||unistr('\000a')||
'/*'||unistr('\000a')||
'LEGAL'||unistr('\000a')||
'====='||unistr('\000a')||
'Copyright: Daemon Pty Limited 2006, http://www.daemon.com.au'||unistr('\000a')||
'Community: Mollio http://www.mollio.org $'||unistr('\000a')||
'License: Released Under the "Common Public License 1.0", '||unistr('\000a')||
'http://www.opensource.org/licenses/cpl.php'||unistr('\000a')||
'License: Released Under the "Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/licenses/by/2.5/'||unistr('\000a')||
'License: Released Under the "GNU Creative Common';

c1:=c1||'s License", '||unistr('\000a')||
'http://creativecommons.org/licenses/GPL/2.0/'||unistr('\000a')||
'*/'||unistr('\000a')||
''||unistr('\000a')||
'/* THE BIG GUYS */'||unistr('\000a')||
'* {margin:0;padding:0}'||unistr('\000a')||
'body {padding: 0 0 20px;background: #fff url("#WORKSPACE_IMAGES#body_bg.gif") repeat-x 0 100%;color:#333;font:83%/1.5 arial,tahoma,verdana,sans-serif}'||unistr('\000a')||
''||unistr('\000a')||
'/* LINKS */'||unistr('\000a')||
'a,a:link,a:link,a:link,a:hover {background:transparent;text-decoration:underline;cursor:pointer} '||unistr('\000a')||
'a:link {color:#c00} '||unistr('\000a')||
'a:visited {co';

c1:=c1||'lor:#999} '||unistr('\000a')||
'a:hover,a:active {color:#069} '||unistr('\000a')||
''||unistr('\000a')||
'/* FORMS */'||unistr('\000a')||
'form {margin: 0 0 1.5em}'||unistr('\000a')||
'input {font-family: arial,tahoma,verdana,sans-serif;margin: 2px 0}'||unistr('\000a')||
'fieldset {border: none}'||unistr('\000a')||
'label {padding: 5px 0}'||unistr('\000a')||
'label br {clear:left}'||unistr('\000a')||
''||unistr('\000a')||
'	/* FORMS - general classes */'||unistr('\000a')||
'	input.f-submit {padding: 1px 3px;background:#666;color:#fff;font-weight:bold;font-size:96%}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* FORMS - f-wrap-1 - simple form, headings on left, for';

c1:=c1||'m elements on right */'||unistr('\000a')||
'	form.f-wrap-1 {width:100%;padding: .5em 0;background: #f6f6f6 url("#WORKSPACE_IMAGES#featurebox_bg.gif") no-repeat 100% 100%;border-top: 1px solid #d7d7d7;position:relative}'||unistr('\000a')||
'		form.f-wrap-1 fieldset {width:auto;margin: 0 1em}'||unistr('\000a')||
'		form.f-wrap-1 h3 {margin:0 0 .6em;font: bold 155% arial;color:#c00}'||unistr('\000a')||
'		form.f-wrap-1 label {clear:left;float:left;width:100%;border-top: 1px solid #f';

c1:=c1||'ff}'||unistr('\000a')||
'		'||unistr('\000a')||
'		/* hide from IE mac \*/'||unistr('\000a')||
'		form.f-wrap-1 label {float:none}'||unistr('\000a')||
'		/* end hiding from IE5 mac */'||unistr('\000a')||
'	'||unistr('\000a')||
'		form.f-wrap-1 label input, form.f-wrap-1 label textarea, form.f-wrap-1 label select {width:15em;float:left;margin-left:10px}'||unistr('\000a')||
'		'||unistr('\000a')||
'		form.f-wrap-1 label b {float:left;width:8em;line-height: 1.7;display:block;position:relative}'||unistr('\000a')||
'		form.f-wrap-1 label b .req {color:#c00;font-size:150%;font-weight:norm';

c1:=c1||'al;position:absolute;top:-.1em;line-height:1;left:-.4em;width:.3em;height:.3em}'||unistr('\000a')||
'		form.f-wrap-1 div.req {color:#666;font-size:96%;font-weight:normal;position:absolute;top:.4em;right:.4em;left:auto;width:13em;text-align:right}'||unistr('\000a')||
'		form.f-wrap-1 div.req b {color:#c00;font-size:140%}'||unistr('\000a')||
'		form.f-wrap-1 label select {width: 15.5em}'||unistr('\000a')||
'		form.f-wrap-1 label textarea.f-comments {width: 20em}'||unistr('\000a')||
'		form.f-wrap-1 div';

c1:=c1||'.f-submit-wrap {padding: 5px 0 5px 8em}'||unistr('\000a')||
'		form.f-wrap-1 input.f-submit {margin: 0 0 0 10px}'||unistr('\000a')||
'		'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap, form.f-wrap-1 fieldset.f-radio-wrap {clear:left;float:left;width:32em;border:none;margin:0;padding-bottom:.7em}'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap b, form.f-wrap-1 fieldset.f-radio-wrap b {float:left;width:8em;line-height: 1.7;display:block;position:relativ';

c1:=c1||'e;padding-top:.3em}'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap fieldset, form.f-wrap-1 fieldset.f-radio-wrap fieldset {float:left;width:13em;margin: 3px 0 0 10px}'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap label, form.f-wrap-1 fieldset.f-radio-wrap label {float:left;width:13em;border:none;margin:0;padding:2px 0;margin-right:-3px}'||unistr('\000a')||
'		form.f-wrap-1 label input.f-checkbox, form.f-wrap-1 label input.f-radi';

c1:=c1||'o {width:auto;float:none;margin:0;padding:0}'||unistr('\000a')||
'		'||unistr('\000a')||
'		form.f-wrap-1 label span.errormsg {position:absolute;top:0;right:-10em;left:auto;display:block;width:16em;background: transparent url(#WORKSPACE_IMAGES#errormsg_bg.gif) no-repeat 0 0}'||unistr('\000a')||
'		form.f-wrap-1 label span.errormsg b {padding: 10px 0;margin: 0 10px 0 30px;color:#B30800;font-weight:bold;display:block;width:auto;float:none;line-height:1.3}'||unistr('\000a')||
''||unistr('\000a')||
'/* T';

c1:=c1||'YPOGRAPHY */'||unistr('\000a')||
'p, ul, ol {margin: 0 0 1.5em}'||unistr('\000a')||
'h1, h2, h3, h4, h5, h6 {letter-spacing: -1px;font-family: arial,verdana,sans-serif;margin: 1.2em 0 .3em;color:#000;border-bottom: 1px solid #eee;padding-bottom: .1em}'||unistr('\000a')||
'h1 {font-size: 196%;margin-top:.6em}'||unistr('\000a')||
'h2 {font-size: 136%}'||unistr('\000a')||
'h3 {font-size: 126%}'||unistr('\000a')||
'h4 {font-size: 116%}'||unistr('\000a')||
'h5 {font-size: 106%}'||unistr('\000a')||
'h6 {font-size: 96%}'||unistr('\000a')||
'.highlight {color:#E17000}'||unistr('\000a')||
'.subdued {color:#999}'||unistr('\000a')||
'';

c1:=c1||'.error {color:#c00;font-weight:bold}'||unistr('\000a')||
'.success {color:#390;font-weight:bold}'||unistr('\000a')||
'.caption {color:#999;font-size:11px}'||unistr('\000a')||
'.date {font: bold 82% arial;color:#bbb;display:block;letter-spacing: 1px}'||unistr('\000a')||
'small {font-size:11px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LISTS */'||unistr('\000a')||
'ul {margin: .3em 0 1.5em 0;list-style-type:none}'||unistr('\000a')||
'	ul.related {margin-top: -1em}'||unistr('\000a')||
'ol {margin: .5em .5em 1.5em}'||unistr('\000a')||
'ol li {margin-left: 1.4em;padding-left: 0;background: none; list-sty';

c1:=c1||'le-type: decimal}'||unistr('\000a')||
'li {line-height: 1.4em;padding-left: 25px;background: transparent url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 0 0}'||unistr('\000a')||
'li.doc {background-position: 3px -500px}'||unistr('\000a')||
'ul.nomarker li {background:none;padding-left:0}'||unistr('\000a')||
''||unistr('\000a')||
'dl {margin: 0 0 1em 0}'||unistr('\000a')||
'dt {font-weight:bold;margin-top: 1.3em}'||unistr('\000a')||
'dl dl {margin: 0 0 1.5em 30px}'||unistr('\000a')||
''||unistr('\000a')||
'/* GENERAL */'||unistr('\000a')||
'img {border:none} '||unistr('\000a')||
'hr {margin: 1em 0;background:#f2f2f2;height:1p';

c1:=c1||'x;color:#f2f2f2;border:none;clear:both}'||unistr('\000a')||
'.clear {clear:both;position:relative;font-size:0px;height:0px;line-height:0px} '||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT - HEADER */'||unistr('\000a')||
'#header {background: #666 url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 100%;margin: 0 0 25px;padding: 0 0 8px}'||unistr('\000a')||
''||unistr('\000a')||
'	#header #site-name {font: 265% arial;letter-spacing: -.05em;margin:0 0 0 40px;padding:3px 0;color:#ccc;border:none}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* NAV - top horizonta';

c1:=c1||'l nav */'||unistr('\000a')||
'	#nav, #nav ul {padding: 0;margin: 0;list-style: none}'||unistr('\000a')||
'	#nav {font-weight:bold;height:2.09em;font: bold 96% arial;margin: 0 105px 0 40px}'||unistr('\000a')||
'	#nav li {position:relative;background: #999;float: left;width: 10em;display:block;margin: 0;border-bottom: 3px solid #666;border-right: 3px solid #252525;padding:0}'||unistr('\000a')||
'	#nav a, #nav a:link, #nav a:visited, #nav a:hover, #nav a:active {text-decoration:none';

c1:=c1||';cursor:pointer;color:#fff;display: block;padding: 4px 10px 2px}'||unistr('\000a')||
'	#nav a:hover {color:#000}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li ul {border-left: 1px solid #c00;background: #f6f6f6 url("#WORKSPACE_IMAGES#featurebox_bg.gif") no-repeat 100% 100%;width:15.8em;font-size:90%;margin-top:3px;position: absolute;font-weight:normal;left: -999em}'||unistr('\000a')||
'	#nav li:hover ul, #nav li.sfhover ul {left: 0;z-index:99999}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li li {background:';

c1:=c1||'none;float:none;border:none;border: 1px solid #999;border-top:1px solid #fff;border-right:none;border-left:none;padding-left:0}'||unistr('\000a')||
'	#nav li li.last {border-bottom:none}'||unistr('\000a')||
'	#nav li li a, #nav li li a:link, #nav li li a:visited, #nav li li a:hover {color:#000;padding: 3px 10px 2px;width:14em}'||unistr('\000a')||
'	#nav li li a:hover {color:#fff;background:#c00}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li.active {background: #c00;border-bottom: 3px solid #c0';

c1:=c1||'0}'||unistr('\000a')||
'	#nav li.active ul {border:none;background: #c00 url("#WORKSPACE_IMAGES#featurebox2_bg.gif") no-repeat 100% 100%}'||unistr('\000a')||
'	#nav li.active a:link, #nav li.active a:visited, #nav li.active a:hover, #nav li.active a:active {}'||unistr('\000a')||
'	#nav li.active a:hover {color:#000}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li.active li {border:none;border-top: 1px solid #c15c5c;border-bottom: 1px solid #870000}'||unistr('\000a')||
'	#nav li.active li.last {border-bottom: none}'||unistr('\000a')||
'	';

c1:=c1||'#nav li.active li a:link, #nav li.active li a:visited, #nav li.active li a:hover, #nav li.active li a:active {color:#fff}'||unistr('\000a')||
'	#nav li.active li a:hover {background: #666 url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 99%;color:#fff}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li.active li.active a:link, #nav li.active li.active a:visited, #nav li.active li.active a:hover, #nav li.active li.active a:active {color:#fff;font-weight:bold;';

c1:=c1||'background: #666 url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 99%}'||unistr('\000a')||
''||unistr('\000a')||
'	/* hide from IE mac \*/'||unistr('\000a')||
'	#nav li {width:auto}'||unistr('\000a')||
'	/* end hiding from IE5 mac */'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* SEARCH */'||unistr('\000a')||
'	#search {color:#fff;font-weight:bold;position:absolute;top:10px;right:110px;left:auto;width:18em}'||unistr('\000a')||
'	#search form {margin:0}'||unistr('\000a')||
'	#search input {width:8em;margin: 0 0 -1px;height:1.2em}'||unistr('\000a')||
'	#search label {padding:5px 0 0;display:inline}'||unistr('\000a')||
'	#sear';

c1:=c1||'ch input.f-submit {width:auto;font-size:81%;margin-left:10px;height:1.95em}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* POWERED BY - mollio logo in this case */'||unistr('\000a')||
'	#poweredby {width:96px;height:63px;position:absolute;top:-102px;right:0}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT - main body of page */'||unistr('\000a')||
'#wrap {min-width:770px;max-width:1200px;margin: 0 auto;position:relative}'||unistr('\000a')||
'#content-wrap {position:relative;width:100%}'||unistr('\000a')||
'	#utility {position:absolute;top:0;left:25px;width';

c1:=c1||':10%;border-top: 5px solid #999;padding-bottom: 40px}'||unistr('\000a')||
'	#sidebar {position:absolute;top:0;right:25px;width:15%;border-top: 5px solid #999;padding-top: 1px;padding-bottom: 40px}'||unistr('\000a')||
''||unistr('\000a')||
'#content {margin: 0 50px}'||unistr('\000a')||
'	#content #breadcrumb {margin-top:-5px;font-size:93%;font-weight:bold}'||unistr('\000a')||
'	#content #breadcrumb a:link, #content #breadcrumb a:visited {text-decoration:none}'||unistr('\000a')||
'	#content #breadcrumb a:hover, #content #b';

c1:=c1||'readcrumb a:active {text-decoration:underline}'||unistr('\000a')||
'	'||unistr('\000a')||
'	.featurebox {color:#333;padding: 15px 20px 20px;border-top: 1px solid #d7d7d7;margin: 0 0 1.5em;background: #f6f6f6 url("#WORKSPACE_IMAGES#featurebox_bg.gif") no-repeat 100% 100%}'||unistr('\000a')||
'	.featurebox p, .featurebox h1, .featurebox h2, .featurebox h3, .featurebox h4, .featurebox h5, .featurebox h6 {margin: 0 0 .3em;border-bottom: 1px solid #c00;color:#c00}';

c1:=c1||''||unistr('\000a')||
'	.featurebox p {border:none;margin: 0 0 1em;color:#444}'||unistr('\000a')||
'	.featurebox a {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'	.thumbnail {margin: 0 0 0 10px;position:relative;z-index:9999;border: 1px solid #eee;float:right;width:100px;padding:5px;background:#fff}'||unistr('\000a')||
'	.thumbnail img {border: 1px solid #000}'||unistr('\000a')||
'	'||unistr('\000a')||
'	.pagination1 {background: #f2f2f2;color:#666;padding: 4px 2px 4px 7px;border: 1px solid #ddd;margin: 0 0 1.5em}'||unistr('\000a')||
'	.pagination1';

c1:=c1||' p {position:relative;text-align:right}'||unistr('\000a')||
'	.pagination1 p a:link, .pagination p a:visited, .pagination p a:hover, .pagination p a:active {text-decoration:none;background:#fff;padding:2px 5px;border: 1px solid #ccc}'||unistr('\000a')||
'	.pagination1 p a:hover {background:#c00;color:#fff}'||unistr('\000a')||
'	.pagination1 p span {text-decoration:none;background:#fff;padding:2px 5px;border: 1px solid #ccc;color:#ccc}'||unistr('\000a')||
'	.pagination1 * {margin:';

c1:=c1||'0}'||unistr('\000a')||
'	.pagination1 h4 {margin-top:-1.45em;padding:0;border:none}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#resultslist-wrap {margin: 0 0 1.5em;font-size:92%}'||unistr('\000a')||
'	#resultslist-wrap dt, #resultslist-wrap dl {margin: 0}'||unistr('\000a')||
'	#resultslist-wrap dt {font: bold 85% arial;padding: 3px 0}'||unistr('\000a')||
'	#resultslist-wrap li {padding: 0 0 1em;margin:0 0 0 1.2em;font: bold 145% arial}'||unistr('\000a')||
'	#resultslist-wrap li dd {font: normal 73% arial}'||unistr('\000a')||
'	#resultslist-wrap li dl {margin:0';

c1:=c1||'}'||unistr('\000a')||
'	#resultslist-wrap dd {line-height:1.3}'||unistr('\000a')||
'	#resultslist-wrap dd.filetype, #resultslist-wrap dd.date {color:#999;display:inline;padding-right:.5em}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* TABLES */'||unistr('\000a')||
'	.table1 {border: 2px solid #900;border-collapse:collapse;width:100%}'||unistr('\000a')||
'		.table1 td {background: #fff url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1600px;padding:3px;border: 1px solid #fff}'||unistr('\000a')||
'		.table1 th {text-align:left;border: 1px so';

c1:=c1||'lid #fff}'||unistr('\000a')||
'		.table1 thead th {color:#fff;font-size:145%;background: #900 url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1300px;padding: 10px 6px}'||unistr('\000a')||
'		.table1 tbody th {color:#fff;font-size:115%;background: #88b8db url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1400px;padding: 6px}'||unistr('\000a')||
'		.table1 tbody th.sub {font-size:100%;color:#000;background: #efefef url("#WORKSPACE_IMAGES#sprites.gif") repeat-x ';

c1:=c1||'0 -1500px;padding: 6px}'||unistr('\000a')||
''||unistr('\000a')||
'	/* TABLES - calendar */'||unistr('\000a')||
'	.calendar {width:200px;font-size:92%}'||unistr('\000a')||
'		.calendar td {text-align:center;border: 1px solid #ddd}'||unistr('\000a')||
'		.calendar th {text-align:center}'||unistr('\000a')||
'		.calendar thead th {padding: 3px 2px}'||unistr('\000a')||
'		.calendar tbody th {padding: 2px}'||unistr('\000a')||
'		.calendar tbody th.sub {padding: 2px}'||unistr('\000a')||
'		'||unistr('\000a')||
'	/* ''MORE'' LINK - provides an accessible alternative to just using ''more'' as a link at the end of p';

c1:=c1||'aragraphs */'||unistr('\000a')||
'		a.morelink:link, a.morelink:visited, a.morelink:hover, a.morelink:active {background: transparent url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 5px -500px;padding-left:21px}'||unistr('\000a')||
'		a.morelink:hover {background: transparent url("#WORKSPACE_IMAGES#sprites.gif") 5px -400px}'||unistr('\000a')||
'		.morelink span {position:absolute;left:-9999px;width:900px}'||unistr('\000a')||
'		'||unistr('\000a')||
'	/* CODE - formatting for code inserted into body - ';

c1:=c1||'more here: http://dizque.lacalabaza.net/temp/lipt/ */'||unistr('\000a')||
'		ol.code {font-family: monospace;position:relative}'||unistr('\000a')||
'		ol.code li {color: #666;margin-bottom: 1px}'||unistr('\000a')||
'		ol.code code {color: #000;display: block}'||unistr('\000a')||
'		ol.code .cmt {color: #4077d2}'||unistr('\000a')||
'		li.tab0 code {padding-left: 4em}'||unistr('\000a')||
'		li.tab1 code {padding-left: 8em}'||unistr('\000a')||
'		li.tab2 code {padding-left: 12em}'||unistr('\000a')||
'		li.tab3 code {padding-left: 16em}'||unistr('\000a')||
'		li.tab4 code {padding-left:';

c1:=c1||' 20em}'||unistr('\000a')||
'		li.tab5 code {padding-left: 24em}'||unistr('\000a')||
'		ol.code li  {background: #f3f3f3 url("#WORKSPACE_IMAGES#td_bg.gif") no-repeat 100% 100%}'||unistr('\000a')||
'		p.note {margin: 1em;border: 1px solid #ddd;background: #f0f0f0;padding: 1em}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE B */'||unistr('\000a')||
'	#type-b #content-wrap {background: transparent url("#WORKSPACE_IMAGES#content_wrap_bg.gif") repeat-y 30px 0}'||unistr('\000a')||
'	#type-b #content {margin: 0 23px 0 235px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TY';

c1:=c1||'PE C */'||unistr('\000a')||
'	#type-c #content-wrap {background: transparent url("#WORKSPACE_IMAGES#content_wrap_bg.gif") repeat-y 30px 0}'||unistr('\000a')||
'	#type-c #content {margin: 0 25% 0 235px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE D */'||unistr('\000a')||
'	#type-d #content {margin: 0 25% 0 50px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE E */'||unistr('\000a')||
'	#type-e #content-wrap {background: transparent url("#WORKSPACE_IMAGES#content_wrap_e_bg.gif") repeat-y 100% 0}'||unistr('\000a')||
'	#type-e #utility {position:absolute;top:0;le';

c1:=c1||'ft:auto;right:25px;width:20%;border-top: 5px solid #999}'||unistr('\000a')||
'	#type-e #content {margin: 0 243px 0 50px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE F */'||unistr('\000a')||
'	#type-f #content-wrap {background: transparent url("#WORKSPACE_IMAGES#content_wrap_e_bg.gif") repeat-y 100% 0}'||unistr('\000a')||
'	#type-f #content {margin: 0 235px 0 25%}'||unistr('\000a')||
'		#type-f #utility {left:auto;right:25px}'||unistr('\000a')||
'		#type-f #sidebar {right:auto;left:25px}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - vertical navig';

c1:=c1||'ation */'||unistr('\000a')||
'	#nav-secondary, #nav-secondary ul {position:static}'||unistr('\000a')||
'	#nav-secondary, #nav-secondary li {list-style: none;margin:0;padding:0;background:#fff}'||unistr('\000a')||
'	#nav-secondary {padding-top:0;border-top: 1px solid #ccc;margin-top: 1px}'||unistr('\000a')||
'	#nav-secondary a {line-height:1.8;padding: 5px 0 5px 23px;background: #fff url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 10px -695px;font: bold 86% arial;display:block}'||unistr('\000a')||
'	#n';

c1:=c1||'av-secondary a, #nav-secondary a:link, #nav-secondary a:visited, #nav-secondary a:hover, #nav-secondary a:active {text-decoration:none;cursor:pointer} '||unistr('\000a')||
'	#nav-secondary a:link {color:#000} '||unistr('\000a')||
'	#nav-secondary a:visited {color:#000} '||unistr('\000a')||
'	#nav-secondary a:hover {color:#c00;background: #fee url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 10px -695px} '||unistr('\000a')||
'	#nav-secondary li.active a:link, #nav-secondary li.activ';

c1:=c1||'e a:visited, #nav-secondary li.active a:hover, #nav-secondary li.active a:active {color:#c00} '||unistr('\000a')||
'	#nav-secondary li {border-top: 1px solid #fff;border-bottom: 1px solid #ccc}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - 2nd TIER */'||unistr('\000a')||
'	#nav-secondary ul {margin: 0 0 1em 23px;padding:0}'||unistr('\000a')||
'	#nav-secondary li.active li a, #nav-secondary li.active li a:link, #nav-secondary li.active li a:visited {line-height:1.5;background: #';

c1:=c1||'fff url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 0 -798px;padding:0 0 0 12px;font-weight:normal;width:auto;color:#000;width:130px;display:block}'||unistr('\000a')||
'	#nav-secondary li.active li a:hover, #nav-secondary li.active li a:active {color: #c00}'||unistr('\000a')||
'	#nav-secondary li.active li {border: none;margin:0}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav-secondary li.active li.active a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active a:visited, '||unistr('\000a')||
'	#nav-secondary ';

c1:=c1||'li.active li.active a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active a:active {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - 3rd TIER */'||unistr('\000a')||
'	#nav-secondary ul ul {margin: 0 0 1em 13px;padding:0}'||unistr('\000a')||
'	#nav-secondary li.active li.active li a, #nav-secondary li.active li.active li a:link, #nav-secondary li.active li.active li a:visited {width:117px}'||unistr('\000a')||
'	#nav-secondary li.active li.active li a:link, '||unistr('\000a')||
'	#nav-secondar';

c1:=c1||'y li.active li.active li a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active li a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li a:active {font-weight:normal}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:active {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'/';

c1:=c1||'* SECONDARY NAVIGATION - 4th TIER */'||unistr('\000a')||
'	#nav-secondary ul ul ul {margin: 0 0 1em 13px;padding:0}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a, #nav-secondary li.active li.active li.active li a:link, #nav-secondary li.active li.active li.active li a:visited {width:104px}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a:visited, '||unistr('\000a')||
'	#nav-';

c1:=c1||'secondary li.active li.active li.active li a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a:active {font-weight:normal}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:active {fon';

c1:=c1||'t-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT - FOOTER */'||unistr('\000a')||
'#footer {clear:both;border-top: 1px solid #E3E8EE;padding: 10px 0 30px;font-size:86%;color:#999}'||unistr('\000a')||
'	#footer p {margin:0}'||unistr('\000a')||
'	#footer a:link {color:#999}'||unistr('\000a')||
''||unistr('\000a')||
'</style>'||unistr('\000a')||
'<style type="text/css" media="print">'||unistr('\000a')||
'/*'||unistr('\000a')||
'LEGAL'||unistr('\000a')||
'====='||unistr('\000a')||
'Copyright: Daemon Pty Limited 2006, http://www.daemon.com.au'||unistr('\000a')||
'Community: Mollio http://www.mollio.org $'||unistr('\000a')||
'License: Released Under the "Common Public Licen';

c1:=c1||'se 1.0", '||unistr('\000a')||
'http://www.opensource.org/licenses/cpl.php'||unistr('\000a')||
'License: Released Under the "Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/licenses/by/2.5/'||unistr('\000a')||
'License: Released Under the "GNU Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/licenses/GPL/2.0/'||unistr('\000a')||
'*/'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'body {font: 10pt arial,tahoma,verdana,sans-serif}'||unistr('\000a')||
'h1, h2, h3, h4, h5, h6 {margin: 1em 0 .2em;font-family: arial,tahoma,verdana,sans-ser';

c1:=c1||'if}'||unistr('\000a')||
''||unistr('\000a')||
'* {float:none;position:static;width:auto;background:#fff}'||unistr('\000a')||
'p {margin: 0 0 1em}'||unistr('\000a')||
'img {border:none;display:block;margin: .5em 0}'||unistr('\000a')||
'dt {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'#nav, #search, #nav-secondary, #breadcrumb, #poweredby {display:none}'||unistr('\000a')||
''||unistr('\000a')||
'/* =LINKS */'||unistr('\000a')||
'a {border:none}'||unistr('\000a')||
'a,a:link,a:link,a:link,a:hover {background:transparent;text-decoration:underline;cursor:pointer} '||unistr('\000a')||
'a:link {color:#5291c4} '||unistr('\000a')||
'a:visited {color:#666}'||unistr('\000a')||
'a:';

c1:=c1||'hover {color:#ff9900;border:none} '||unistr('\000a')||
'a:active {color:#0066cc} '||unistr('\000a')||
''||unistr('\000a')||
'.teaserBox {clear:both;margin: 0 0 1em}'||unistr('\000a')||
''||unistr('\000a')||
'.sponsors img {margin: .5em 0}'||unistr('\000a')||
''||unistr('\000a')||
'#footer {margin: 1em 0}'||unistr('\000a')||
''||unistr('\000a')||
'#header {border-bottom: 3px solid #c00}'||unistr('\000a')||
''||unistr('\000a')||
'/* TABLES */'||unistr('\000a')||
'table {font-size: 9pt;margin: 0 0 1em;border-collapse:collapse}'||unistr('\000a')||
'	table th {border-bottom: 3px solid #000;vertical-align:top;padding: 1.5em 3px 3px;line-height:1.1;font: bold 145% arial;l';

c1:=c1||'etter-spacing:0;text-align:left}'||unistr('\000a')||
'	.table1 th.time {border-bottom: none;font: bold 89% verdana;color:#ff9c00;vertical-align:top;padding: 3px}'||unistr('\000a')||
'	.table1 td {border: 1px solid #ddd;font-size: 9pt;padding: 3px;vertical-align:top}'||unistr('\000a')||
'	.table1 td a {display:block;width:auto;font-weight:bold}'||unistr('\000a')||
'	.table1 td a:link, .table1 td a:visited, .table1 td a:hover, .table1 td a:active {border:none;text-decoration:none}'||unistr('\000a')||
'';

c1:=c1||'	.table1 th.sub {background: #aaa}'||unistr('\000a')||
'	.table1 th.sub2 {background: #bbb;color:#000}'||unistr('\000a')||
'	.table1 td ul li {background: #fff}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<!--[if lte IE 6]>'||unistr('\000a')||
'<link rel="stylesheet" type="text/css" href="#WORKSPACE_IMAGES#ie6_or_less.css" />'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'<link rel="stylesheet" href="#WORKSPACE_IMAGES#apex_3_1.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="/i/css/apex_ie_3_1.css" type="text/c';

c1:=c1||'ss" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#  id="type-f" >'||unistr('\000a')||
'';

c2:=c2||'		<div id="poweredby">#REGION_POSITION_05#</div>		'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'#FORM_CLOSE#	'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<div id="wrap">'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'	<div id="header">'||unistr('\000a')||
'		<div id="site-name">&SITENAME.</div>'||unistr('\000a')||
'		<div id="search">#REGION_POSITION_03#'||unistr('\000a')||
'<div class="t3NavBar">#NAVIGATION_BAR#</div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'#REGION_POSITION_07#'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div id="content-wrap">'||unistr('\000a')||
'		<div id="utility">'||unistr('\000a')||
'#REGION_POSITION_08#'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'		<div id="content">'||unistr('\000a')||
'			<div id="breadcrumb">'||unistr('\000a')||
'			#REGION_POSITION_01#'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'<div class="t3Messages" align="cent';

c3:=c3||'er">#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE# #SUCCESS_MESSAGE#</div>#BOX_BODY#'||unistr('\000a')||
'#REGION_POSITION_02#'||unistr('\000a')||
'			<div id="footer">'||unistr('\000a')||
'			<p>A note here to go in the footer</p>'||unistr('\000a')||
'			<p><a href="javascript:openForm(''0'');">&T_CONTACT_US.</a> | <a href="#">Privacy</a> | <a href="#">Links</a></p>'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'		<div id="sidebar"><div class="featurebox">#REGION_POSITION_06#</div>			'||unistr('\000a')||
'			<div class="featurebox"';

c3:=c3||'>#REGION_POSITION_04#</div>'||unistr('\000a')||
'		</div>';

wwv_flow_api.create_template(
  p_id=> 109210270914702928 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'FunEurope One Level Tabs',
  p_body_title=> '#BODY_TITLE#',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'||unistr('\000a')||
'',
  p_current_tab=> '<td class="t3LeftTabForeSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'<td valign="middle" nowrap="nowrap" class="t3TabForegroundText" style="padding:0px 5px;">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td align="right" class="t3RightTabForeCurve" width="8" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td class="t3LeftTabBgSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'<td valign="middle" nowrap="nowrap" class="t3TabBackgroundText" style="padding:0px 5px;"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td align="right" class="t3RightTabBgCurve" width="8" height="19" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t3NavBarItem">#TEXT#<img src="#IMAGE#" width="#WIDTH#" height="#HEIGHT#" #ALT# /></a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" summary=""',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comment => '//<script src="#WORKSPACE_IMAGES#jquery-1.3.2.min.js" type="text/javascript"></script>');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/copy_of_login
prompt  ......Page template 198405190213485772
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'||unistr('\000a')||
'';

c3:=c3||'#NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#'||unistr('\000a')||
'<table border="0" summary="" align="center" style="margin:100px auto;">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>#BOX_BODY#'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''||unistr('\000a')||
'';

wwv_flow_api.create_template(
  p_id=> 198405190213485772 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Copy of Login',
  p_body_title=> '#BODY_TITLE#',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'||unistr('\000a')||
'',
  p_navigation_bar=> '',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_theme_id  => 101,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/copy_of_no_tabs
prompt  ......Page template 198406262980490521
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>'||unistr('\000a')||
'<div class="t3customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'<br />'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><div class="t3logo" style="margin:10px 0px 10px 200px;">#LOGO#</div><br />#REGION_POSITION_06#</td>'||unistr('\000a')||
'<td width="100%" valign="top">#REGION_POSITION_07#</td>'||unistr('\000a')||
'<td><div class="t3NavBar">#NAVIGATION_BAR#</div><br />#REGION_POSITION_08#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br style="clear:both;"/>'||unistr('\000a')||
'<table summary="" cellpadding="0" borde';

c3:=c3||'r="0" cellspacing="0" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3UserPrompt" width="100%" style="padding-left:10px;">Nice to see you!</td>'||unistr('\000a')||
'<td class="t3TabHolder" style="text-align:right;" align="right"><br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>'||unistr('\000a')||
'<div class="t3RegionPosition1">#REGION_POSITION_01#</div>'||unistr('\000a')||
'<table width="';

c3:=c3||'100%" summary="" height="70%" cellspacing="0" cellpadding="0" border="0">'||unistr('\000a')||
''||unistr('\000a')||
'<tr>'||unistr('\000a')||
'   <td class="t3PageBody"><div class="t3Messages" align="center">#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#</div>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||unistr('\000a')||
'   <td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>'||unistr('\000a')||
'   <td align="right" val';

c3:=c3||'ign="top">#REGION_POSITION_03#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 198406262980490521 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Copy of No Tabs',
  p_body_title=> '#BODY_TITLE#',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'||unistr('\000a')||
'',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'||unistr('\000a')||
'',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" summary=""',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 101,
  p_theme_class_id => 3,
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/admin_funeurope_one_level_tabs
prompt  ......Page template 200485273844527953
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'||unistr('\000a')||
'<html xmlns="http://www.w3.org/1999/xhtml">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />'||unistr('\000a')||
'<meta name="keywords" content="&P_KEYWORDS." />'||unistr('\000a')||
'<meta name="description" content="&P_DESCRIPTION." />'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" hr';

c1:=c1||'ef="#WORKSPACE_IMAGES#theme_3_1.css" type="text/css" />'||unistr('\000a')||
'<script src="#WORKSPACE_IMAGES#jquery-1.3.2.min.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_ns_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_get_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'';

c1:=c1||'<script src="#IMAGE_PREFIX#javascript/apex_builder.js" type="text/javascript"></script>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#simplemodal.js"></script>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA th{'||unistr('\000a')||
'background:url("#WORKSPACE_IMAGES#bck-search.gif") repeat scroll 0 0 #E9E9E9;'||unistr('\000a')||
'border:1px solid #D1D1D1;'||unistr('\000a')||
'font-weight:bold;'||unistr('\000a')||
'padding:0.7em;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA td {'||unistr('\000a')||
'	/*b';

c1:=c1||'ackground: #e2e2e2;*/'||unistr('\000a')||
'	background: #fff;'||unistr('\000a')||
'	font:normal 8pt Tahoma;'||unistr('\000a')||
'	padding:2px 5px;'||unistr('\000a')||
'	empty-cells:show!important;'||unistr('\000a')||
'        /*'||unistr('\000a')||
'	border-bottom:1px solid #b8b8b8;'||unistr('\000a')||
'	border-top:1px solid #fff;'||unistr('\000a')||
'	border-right:1px solid #b8b8b8;'||unistr('\000a')||
'	border-left:1px solid #fff;'||unistr('\000a')||
'        */'||unistr('\000a')||
'	border:1px solid #b8b8b8!important;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA th div {'||unistr('\000a')||
'	/* color:#fff; */'||unistr('\000a')||
'        color:#CC0000;'||unistr('\000a')||
'	font-size:8pt;'||unistr('\000a')||
'	letter';

c1:=c1||'-spacing:1px;'||unistr('\000a')||
'	text-decoration:none;'||unistr('\000a')||
'	cursor:pointer;'||unistr('\000a')||
'	margin:3px 9px;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA th:hover {'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	background:#f6a828 url(#IMAGE_PREFIX#themes/theme_6/ir_bg_hover2.png) repeat-x scroll 50%;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA a {'||unistr('\000a')||
'	/* color:#4C7CC1; */'||unistr('\000a')||
'        color:#CC0000;'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	font-size:11px;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'table.apexir_WORKSHEET_DATA a:hover {'||unistr('\000a')||
'	color:#006';

c1:=c1||'699; /* color: #FFB300; */'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'</style>'||unistr('\000a')||
''||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#simplemodalIR.js"></script>'||unistr('\000a')||
''||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'  $(function(){'||unistr('\000a')||
'$("#apexir_rollover").appendTo("body"); '||unistr('\000a')||
'  });'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'<!--'||unistr('\000a')||
'/*Global JS Variables*/'||unistr('\000a')||
'var htmldb_Img_Dir = "#IMAGE_PREFIX#";'||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>'||unistr('\000a')||
''||unistr('\000a')||
'<style type="text/css" media="screen">'||unistr('\000a')||
'/*'||unistr('\000a')||
'LEGAL'||unistr('\000a')||
'====='||unistr('\000a')||
'';

c1:=c1||'Copyright: Daemon Pty Limited 2006, http://www.daemon.com.au'||unistr('\000a')||
'Community: Mollio http://www.mollio.org $'||unistr('\000a')||
'License: Released Under the "Common Public License 1.0", '||unistr('\000a')||
'http://www.opensource.org/licenses/cpl.php'||unistr('\000a')||
'License: Released Under the "Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/licenses/by/2.5/'||unistr('\000a')||
'License: Released Under the "GNU Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/license';

c1:=c1||'s/GPL/2.0/'||unistr('\000a')||
'*/'||unistr('\000a')||
''||unistr('\000a')||
'/* THE BIG GUYS */'||unistr('\000a')||
'* {margin:0;padding:0}'||unistr('\000a')||
'body {padding: 0 0 20px;background: #fff url("#WORKSPACE_IMAGES#body_bg.gif") repeat-x 0 100%;color:#333;font:83%/1.5 arial,tahoma,verdana,sans-serif}'||unistr('\000a')||
''||unistr('\000a')||
'/* LINKS */'||unistr('\000a')||
'a,a:link,a:link,a:link,a:hover {background:transparent;text-decoration:underline;cursor:pointer} '||unistr('\000a')||
'a:link {color:#c00} '||unistr('\000a')||
'a:visited {color:#999} '||unistr('\000a')||
'a:hover,a:active {color:#069} '||unistr('\000a')||
''||unistr('\000a')||
'/* F';

c1:=c1||'ORMS */'||unistr('\000a')||
'form {margin: 0 0 1.5em}'||unistr('\000a')||
'input {font-family: arial,tahoma,verdana,sans-serif;margin: 2px 0}'||unistr('\000a')||
'fieldset {border: none}'||unistr('\000a')||
'label {padding: 5px 0}'||unistr('\000a')||
'label br {clear:left}'||unistr('\000a')||
''||unistr('\000a')||
'	/* FORMS - general classes */'||unistr('\000a')||
'	input.f-submit {padding: 1px 3px;background:#666;color:#fff;font-weight:bold;font-size:96%}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* FORMS - f-wrap-1 - simple form, headings on left, form elements on right */'||unistr('\000a')||
'	form.f-wrap-1 {width:10';

c1:=c1||'0%;padding: .5em 0;background: #f6f6f6 url("#WORKSPACE_IMAGES#featurebox_bg.gif") no-repeat 100% 100%;border-top: 1px solid #d7d7d7;position:relative}'||unistr('\000a')||
'		form.f-wrap-1 fieldset {width:auto;margin: 0 1em}'||unistr('\000a')||
'		form.f-wrap-1 h3 {margin:0 0 .6em;font: bold 155% arial;color:#c00}'||unistr('\000a')||
'		form.f-wrap-1 label {clear:left;float:left;width:100%;border-top: 1px solid #fff}'||unistr('\000a')||
'		'||unistr('\000a')||
'		/* hide from IE mac \*/'||unistr('\000a')||
'		form.f-wrap-';

c1:=c1||'1 label {float:none}'||unistr('\000a')||
'		/* end hiding from IE5 mac */'||unistr('\000a')||
'	'||unistr('\000a')||
'		form.f-wrap-1 label input, form.f-wrap-1 label textarea, form.f-wrap-1 label select {width:15em;float:left;margin-left:10px}'||unistr('\000a')||
'		'||unistr('\000a')||
'		form.f-wrap-1 label b {float:left;width:8em;line-height: 1.7;display:block;position:relative}'||unistr('\000a')||
'		form.f-wrap-1 label b .req {color:#c00;font-size:150%;font-weight:normal;position:absolute;top:-.1em;line-height:1;le';

c1:=c1||'ft:-.4em;width:.3em;height:.3em}'||unistr('\000a')||
'		form.f-wrap-1 div.req {color:#666;font-size:96%;font-weight:normal;position:absolute;top:.4em;right:.4em;left:auto;width:13em;text-align:right}'||unistr('\000a')||
'		form.f-wrap-1 div.req b {color:#c00;font-size:140%}'||unistr('\000a')||
'		form.f-wrap-1 label select {width: 15.5em}'||unistr('\000a')||
'		form.f-wrap-1 label textarea.f-comments {width: 20em}'||unistr('\000a')||
'		form.f-wrap-1 div.f-submit-wrap {padding: 5px 0 5px 8em}'||unistr('\000a')||
'		form.';

c1:=c1||'f-wrap-1 input.f-submit {margin: 0 0 0 10px}'||unistr('\000a')||
'		'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap, form.f-wrap-1 fieldset.f-radio-wrap {clear:left;float:left;width:32em;border:none;margin:0;padding-bottom:.7em}'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap b, form.f-wrap-1 fieldset.f-radio-wrap b {float:left;width:8em;line-height: 1.7;display:block;position:relative;padding-top:.3em}'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-';

c1:=c1||'checkbox-wrap fieldset, form.f-wrap-1 fieldset.f-radio-wrap fieldset {float:left;width:13em;margin: 3px 0 0 10px}'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap label, form.f-wrap-1 fieldset.f-radio-wrap label {float:left;width:13em;border:none;margin:0;padding:2px 0;margin-right:-3px}'||unistr('\000a')||
'		form.f-wrap-1 label input.f-checkbox, form.f-wrap-1 label input.f-radio {width:auto;float:none;margin:0;padding:0}'||unistr('\000a')||
'		';

c1:=c1||''||unistr('\000a')||
'		form.f-wrap-1 label span.errormsg {position:absolute;top:0;right:-10em;left:auto;display:block;width:16em;background: transparent url(#WORKSPACE_IMAGES#errormsg_bg.gif) no-repeat 0 0}'||unistr('\000a')||
'		form.f-wrap-1 label span.errormsg b {padding: 10px 0;margin: 0 10px 0 30px;color:#B30800;font-weight:bold;display:block;width:auto;float:none;line-height:1.3}'||unistr('\000a')||
''||unistr('\000a')||
'/* TYPOGRAPHY */'||unistr('\000a')||
'p, ul, ol {margin: 0 0 1.5em}'||unistr('\000a')||
'h1, ';

c1:=c1||'h2, h3, h4, h5, h6 {letter-spacing: -1px;font-family: arial,verdana,sans-serif;margin: 1.2em 0 .3em;color:#000;border-bottom: 1px solid #eee;padding-bottom: .1em}'||unistr('\000a')||
'h1 {font-size: 196%;margin-top:.6em}'||unistr('\000a')||
'h2 {font-size: 136%}'||unistr('\000a')||
'h3 {font-size: 126%}'||unistr('\000a')||
'h4 {font-size: 116%}'||unistr('\000a')||
'h5 {font-size: 106%}'||unistr('\000a')||
'h6 {font-size: 96%}'||unistr('\000a')||
'.highlight {color:#E17000}'||unistr('\000a')||
'.subdued {color:#999}'||unistr('\000a')||
'.error {color:#c00;font-weight:bold}'||unistr('\000a')||
'.success {';

c1:=c1||'color:#390;font-weight:bold}'||unistr('\000a')||
'.caption {color:#999;font-size:11px}'||unistr('\000a')||
'.date {font: bold 82% arial;color:#bbb;display:block;letter-spacing: 1px}'||unistr('\000a')||
'small {font-size:11px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LISTS */'||unistr('\000a')||
'ul {margin: .3em 0 1.5em 0;list-style-type:none}'||unistr('\000a')||
'	ul.related {margin-top: -1em}'||unistr('\000a')||
'ol {margin: .5em .5em 1.5em}'||unistr('\000a')||
'ol li {margin-left: 1.4em;padding-left: 0;background: none; list-style-type: decimal}'||unistr('\000a')||
'li {line-height: 1.4em;paddin';

c1:=c1||'g-left: 25px;background: transparent url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 0 0}'||unistr('\000a')||
'li.doc {background-position: 3px -500px}'||unistr('\000a')||
'ul.nomarker li {background:none;padding-left:0}'||unistr('\000a')||
''||unistr('\000a')||
'dl {margin: 0 0 1em 0}'||unistr('\000a')||
'dt {font-weight:bold;margin-top: 1.3em}'||unistr('\000a')||
'dl dl {margin: 0 0 1.5em 30px}'||unistr('\000a')||
''||unistr('\000a')||
'/* GENERAL */'||unistr('\000a')||
'img {border:none} '||unistr('\000a')||
'hr {margin: 1em 0;background:#f2f2f2;height:1px;color:#f2f2f2;border:none;clear:both}'||unistr('\000a')||
'.clear ';

c1:=c1||'{clear:both;position:relative;font-size:0px;height:0px;line-height:0px} '||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT - HEADER */'||unistr('\000a')||
'#header {background: #666 url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 100%;margin: 0 0 25px;padding: 0 0 8px}'||unistr('\000a')||
''||unistr('\000a')||
'	#header #site-name {font: 265% arial;letter-spacing: -.05em;margin:0 0 0 40px;padding:3px 0;color:#ccc;border:none}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* NAV - top horizontal nav */'||unistr('\000a')||
'	#nav, #nav ul {padding: 0;margin: 0;l';

c1:=c1||'ist-style: none}'||unistr('\000a')||
'	#nav {font-weight:bold;height:2.09em;font: bold 96% arial;margin: 0 105px 0 40px}'||unistr('\000a')||
'	#nav li {position:relative;background: #999;float: left;width: 10em;display:block;margin: 0;border-bottom: 3px solid #666;border-right: 3px solid #252525;padding:0}'||unistr('\000a')||
'	#nav a, #nav a:link, #nav a:visited, #nav a:hover, #nav a:active {text-decoration:none;cursor:pointer;color:#fff;display: block;paddi';

c1:=c1||'ng: 4px 10px 2px}'||unistr('\000a')||
'	#nav a:hover {color:#000}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li ul {border-left: 1px solid #c00;background: #f6f6f6 url("#WORKSPACE_IMAGES#featurebox_bg.gif") no-repeat 100% 100%;width:15.8em;font-size:90%;margin-top:3px;position: absolute;font-weight:normal;left: -999em}'||unistr('\000a')||
'	#nav li:hover ul, #nav li.sfhover ul {left: 0;z-index:99999}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li li {background:none;float:none;border:none;border: 1px solid #';

c1:=c1||'999;border-top:1px solid #fff;border-right:none;border-left:none;padding-left:0}'||unistr('\000a')||
'	#nav li li.last {border-bottom:none}'||unistr('\000a')||
'	#nav li li a, #nav li li a:link, #nav li li a:visited, #nav li li a:hover {color:#000;padding: 3px 10px 2px;width:14em}'||unistr('\000a')||
'	#nav li li a:hover {color:#fff;background:#c00}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li.active {background: #c00;border-bottom: 3px solid #c00}'||unistr('\000a')||
'	#nav li.active ul {border:none;background: ';

c1:=c1||'#c00 url("#WORKSPACE_IMAGES#featurebox2_bg.gif") no-repeat 100% 100%}'||unistr('\000a')||
'	#nav li.active a:link, #nav li.active a:visited, #nav li.active a:hover, #nav li.active a:active {}'||unistr('\000a')||
'	#nav li.active a:hover {color:#000}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li.active li {border:none;border-top: 1px solid #c15c5c;border-bottom: 1px solid #870000}'||unistr('\000a')||
'	#nav li.active li.last {border-bottom: none}'||unistr('\000a')||
'	#nav li.active li a:link, #nav li.active li a:v';

c1:=c1||'isited, #nav li.active li a:hover, #nav li.active li a:active {color:#fff}'||unistr('\000a')||
'	#nav li.active li a:hover {background: #666 url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 99%;color:#fff}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li.active li.active a:link, #nav li.active li.active a:visited, #nav li.active li.active a:hover, #nav li.active li.active a:active {color:#fff;font-weight:bold;background: #666 url("#WORKSPACE_IMAGES#sprites';

c1:=c1||'.gif") repeat-x 0 99%}'||unistr('\000a')||
''||unistr('\000a')||
'	/* hide from IE mac \*/'||unistr('\000a')||
'	#nav li {width:auto}'||unistr('\000a')||
'	/* end hiding from IE5 mac */'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* SEARCH */'||unistr('\000a')||
'	#search {color:#fff;font-weight:bold;position:absolute;top:10px;right:110px;left:auto;width:18em}'||unistr('\000a')||
'	#search form {margin:0}'||unistr('\000a')||
'	#search input {width:8em;margin: 0 0 -1px;height:1.2em}'||unistr('\000a')||
'	#search label {padding:5px 0 0;display:inline}'||unistr('\000a')||
'	#search input.f-submit {width:auto;font-size:81%;mar';

c1:=c1||'gin-left:10px;height:1.95em}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* POWERED BY - mollio logo in this case */'||unistr('\000a')||
'	#poweredby {width:96px;height:63px;position:absolute;top:-102px;right:0}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT - main body of page */'||unistr('\000a')||
'#wrap {min-width:770px;max-width:1200px;margin: 0 auto;position:relative}'||unistr('\000a')||
'#content-wrap {position:relative;width:100%}'||unistr('\000a')||
'	#utility {position:absolute;top:0;left:25px;width:165px;border-top: 5px solid #999;padding-botto';

c1:=c1||'m: 40px}'||unistr('\000a')||
'	#sidebar {position:absolute;top:0;right:25px;width:20%;border-top: 5px solid #999;padding-top: 1px;padding-bottom: 40px}'||unistr('\000a')||
''||unistr('\000a')||
'#content {margin: 0 50px}'||unistr('\000a')||
'	#content #breadcrumb {margin-top:-5px;font-size:93%;font-weight:bold}'||unistr('\000a')||
'	#content #breadcrumb a:link, #content #breadcrumb a:visited {text-decoration:none}'||unistr('\000a')||
'	#content #breadcrumb a:hover, #content #breadcrumb a:active {text-decoration:underline';

c1:=c1||'}'||unistr('\000a')||
'	'||unistr('\000a')||
'	.featurebox {color:#333;padding: 15px 20px 20px;border-top: 1px solid #d7d7d7;margin: 0 0 1.5em;background: #f6f6f6 url("#WORKSPACE_IMAGES#featurebox_bg.gif") no-repeat 100% 100%}'||unistr('\000a')||
'	.featurebox p, .featurebox h1, .featurebox h2, .featurebox h3, .featurebox h4, .featurebox h5, .featurebox h6 {margin: 0 0 .3em;border-bottom: 1px solid #c00;color:#c00}'||unistr('\000a')||
'	.featurebox p {border:none;margin: 0 0 1em;';

c1:=c1||'color:#444}'||unistr('\000a')||
'	.featurebox a {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'	.thumbnail {margin: 0 0 0 10px;position:relative;z-index:9999;border: 1px solid #eee;float:right;width:100px;padding:5px;background:#fff}'||unistr('\000a')||
'	.thumbnail img {border: 1px solid #000}'||unistr('\000a')||
'	'||unistr('\000a')||
'	.pagination1 {background: #f2f2f2;color:#666;padding: 4px 2px 4px 7px;border: 1px solid #ddd;margin: 0 0 1.5em}'||unistr('\000a')||
'	.pagination1 p {position:relative;text-align:right}'||unistr('\000a')||
'	.pag';

c1:=c1||'ination1 p a:link, .pagination p a:visited, .pagination p a:hover, .pagination p a:active {text-decoration:none;background:#fff;padding:2px 5px;border: 1px solid #ccc}'||unistr('\000a')||
'	.pagination1 p a:hover {background:#c00;color:#fff}'||unistr('\000a')||
'	.pagination1 p span {text-decoration:none;background:#fff;padding:2px 5px;border: 1px solid #ccc;color:#ccc}'||unistr('\000a')||
'	.pagination1 * {margin:0}'||unistr('\000a')||
'	.pagination1 h4 {margin-top:-1.45em;paddi';

c1:=c1||'ng:0;border:none}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#resultslist-wrap {margin: 0 0 1.5em;font-size:92%}'||unistr('\000a')||
'	#resultslist-wrap dt, #resultslist-wrap dl {margin: 0}'||unistr('\000a')||
'	#resultslist-wrap dt {font: bold 85% arial;padding: 3px 0}'||unistr('\000a')||
'	#resultslist-wrap li {padding: 0 0 1em;margin:0 0 0 1.2em;font: bold 145% arial}'||unistr('\000a')||
'	#resultslist-wrap li dd {font: normal 73% arial}'||unistr('\000a')||
'	#resultslist-wrap li dl {margin:0}'||unistr('\000a')||
'	#resultslist-wrap dd {line-height:1.3}'||unistr('\000a')||
'	#r';

c1:=c1||'esultslist-wrap dd.filetype, #resultslist-wrap dd.date {color:#999;display:inline;padding-right:.5em}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* TABLES */'||unistr('\000a')||
'	.table1 {border: 2px solid #900;border-collapse:collapse;width:100%}'||unistr('\000a')||
'		.table1 td {background: #fff url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1600px;padding:3px;border: 1px solid #fff}'||unistr('\000a')||
'		.table1 th {text-align:left;border: 1px solid #fff}'||unistr('\000a')||
'		.table1 thead th {color:#fff;font';

c1:=c1||'-size:145%;background: #900 url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1300px;padding: 10px 6px}'||unistr('\000a')||
'		.table1 tbody th {color:#fff;font-size:115%;background: #88b8db url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1400px;padding: 6px}'||unistr('\000a')||
'		.table1 tbody th.sub {font-size:100%;color:#000;background: #efefef url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1500px;padding: 6px}'||unistr('\000a')||
''||unistr('\000a')||
'	/* TABLES - calenda';

c1:=c1||'r */'||unistr('\000a')||
'	.calendar {width:200px;font-size:92%}'||unistr('\000a')||
'		.calendar td {text-align:center;border: 1px solid #ddd}'||unistr('\000a')||
'		.calendar th {text-align:center}'||unistr('\000a')||
'		.calendar thead th {padding: 3px 2px}'||unistr('\000a')||
'		.calendar tbody th {padding: 2px}'||unistr('\000a')||
'		.calendar tbody th.sub {padding: 2px}'||unistr('\000a')||
'		'||unistr('\000a')||
'	/* ''MORE'' LINK - provides an accessible alternative to just using ''more'' as a link at the end of paragraphs */'||unistr('\000a')||
'		a.morelink:link, a.morelink:vi';

c1:=c1||'sited, a.morelink:hover, a.morelink:active {background: transparent url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 5px -500px;padding-left:21px}'||unistr('\000a')||
'		a.morelink:hover {background: transparent url("#WORKSPACE_IMAGES#sprites.gif") 5px -400px}'||unistr('\000a')||
'		.morelink span {position:absolute;left:-9999px;width:900px}'||unistr('\000a')||
'		'||unistr('\000a')||
'	/* CODE - formatting for code inserted into body - more here: http://dizque.lacalabaza.net/temp/';

c1:=c1||'lipt/ */'||unistr('\000a')||
'		ol.code {font-family: monospace;position:relative}'||unistr('\000a')||
'		ol.code li {color: #666;margin-bottom: 1px}'||unistr('\000a')||
'		ol.code code {color: #000;display: block}'||unistr('\000a')||
'		ol.code .cmt {color: #4077d2}'||unistr('\000a')||
'		li.tab0 code {padding-left: 4em}'||unistr('\000a')||
'		li.tab1 code {padding-left: 8em}'||unistr('\000a')||
'		li.tab2 code {padding-left: 12em}'||unistr('\000a')||
'		li.tab3 code {padding-left: 16em}'||unistr('\000a')||
'		li.tab4 code {padding-left: 20em}'||unistr('\000a')||
'		li.tab5 code {padding-left: 24em}'||unistr('\000a')||
'		';

c1:=c1||'ol.code li  {background: #f3f3f3 url("#WORKSPACE_IMAGES#td_bg.gif") no-repeat 100% 100%}'||unistr('\000a')||
'		p.note {margin: 1em;border: 1px solid #ddd;background: #f0f0f0;padding: 1em}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE B */'||unistr('\000a')||
'	#type-b #content-wrap {background: transparent url("#WORKSPACE_IMAGES#content_wrap_bg.gif") repeat-y 30px 0}'||unistr('\000a')||
'	#type-b #content {margin: 0 23px 0 235px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE C */'||unistr('\000a')||
'	#type-c #content-wrap {background: t';

c1:=c1||'ransparent url("#WORKSPACE_IMAGES#content_wrap_bg.gif") repeat-y 30px 0}'||unistr('\000a')||
'	#type-c #content {margin: 0 25% 0 235px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE D */'||unistr('\000a')||
'	#type-d #content {margin: 0 25% 0 50px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE E */'||unistr('\000a')||
'	#type-e #content-wrap {background: transparent url("#WORKSPACE_IMAGES#content_wrap_e_bg.gif") repeat-y 100% 0}'||unistr('\000a')||
'	#type-e #utility {position:absolute;top:0;left:auto;right:25px;width:165px;border-top: 5p';

c1:=c1||'x solid #999}'||unistr('\000a')||
'	#type-e #content {margin: 0 243px 0 50px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE F */'||unistr('\000a')||
'	#type-f #content-wrap {background: transparent url("#WORKSPACE_IMAGES#content_wrap_e_bg.gif") repeat-y 100% 0}'||unistr('\000a')||
'	#type-f #content {margin: 0 235px 0 25%}'||unistr('\000a')||
'		#type-f #utility {left:auto;right:25px}'||unistr('\000a')||
'		#type-f #sidebar {right:auto;left:25px}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - vertical navigation */'||unistr('\000a')||
'	#nav-secondary, #nav-secondary ul';

c1:=c1||' {position:static}'||unistr('\000a')||
'	#nav-secondary, #nav-secondary li {list-style: none;margin:0;padding:0;background:#fff}'||unistr('\000a')||
'	#nav-secondary {padding-top:0;border-top: 1px solid #ccc;margin-top: 1px}'||unistr('\000a')||
'	#nav-secondary a {line-height:1.8;padding: 5px 0 5px 23px;background: #fff url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 10px -695px;font: bold 86% arial;display:block}'||unistr('\000a')||
'	#nav-secondary a, #nav-secondary a:link, #nav';

c1:=c1||'-secondary a:visited, #nav-secondary a:hover, #nav-secondary a:active {text-decoration:none;cursor:pointer} '||unistr('\000a')||
'	#nav-secondary a:link {color:#000} '||unistr('\000a')||
'	#nav-secondary a:visited {color:#000} '||unistr('\000a')||
'	#nav-secondary a:hover {color:#c00;background: #fee url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 10px -695px} '||unistr('\000a')||
'	#nav-secondary li.active a:link, #nav-secondary li.active a:visited, #nav-secondary li.active a:hov';

c1:=c1||'er, #nav-secondary li.active a:active {color:#c00} '||unistr('\000a')||
'	#nav-secondary li {border-top: 1px solid #fff;border-bottom: 1px solid #ccc}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - 2nd TIER */'||unistr('\000a')||
'	#nav-secondary ul {margin: 0 0 1em 23px;padding:0}'||unistr('\000a')||
'	#nav-secondary li.active li a, #nav-secondary li.active li a:link, #nav-secondary li.active li a:visited {line-height:1.5;background: #fff url("#WORKSPACE_IMAGES#sprites.gif") no';

c1:=c1||'-repeat 0 -798px;padding:0 0 0 12px;font-weight:normal;width:auto;color:#000;width:130px;display:block}'||unistr('\000a')||
'	#nav-secondary li.active li a:hover, #nav-secondary li.active li a:active {color: #c00}'||unistr('\000a')||
'	#nav-secondary li.active li {border: none;margin:0}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav-secondary li.active li.active a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active a:hover, '||unistr('\000a')||
'	#nav-seconda';

c1:=c1||'ry li.active li.active a:active {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - 3rd TIER */'||unistr('\000a')||
'	#nav-secondary ul ul {margin: 0 0 1em 13px;padding:0}'||unistr('\000a')||
'	#nav-secondary li.active li.active li a, #nav-secondary li.active li.active li a:link, #nav-secondary li.active li.active li a:visited {width:117px}'||unistr('\000a')||
'	#nav-secondary li.active li.active li a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li a:visited, '||unistr('\000a')||
'	#nav-';

c1:=c1||'secondary li.active li.active li a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li a:active {font-weight:normal}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:active {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - 4th TIER */'||unistr('\000a')||
'	#nav-';

c1:=c1||'secondary ul ul ul {margin: 0 0 1em 13px;padding:0}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a, #nav-secondary li.active li.active li.active li a:link, #nav-secondary li.active li.active li.active li a:visited {width:104px}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li ';

c1:=c1||'a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a:active {font-weight:normal}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:active {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT - FOOTER */'||unistr('\000a')||
'#foot';

c1:=c1||'er {clear:both;border-top: 1px solid #E3E8EE;padding: 10px 0 30px;font-size:86%;color:#999}'||unistr('\000a')||
'	#footer p {margin:0}'||unistr('\000a')||
'	#footer a:link {color:#999}'||unistr('\000a')||
''||unistr('\000a')||
'</style>'||unistr('\000a')||
'<style type="text/css" media="print">'||unistr('\000a')||
'/*'||unistr('\000a')||
'LEGAL'||unistr('\000a')||
'====='||unistr('\000a')||
'Copyright: Daemon Pty Limited 2006, http://www.daemon.com.au'||unistr('\000a')||
'Community: Mollio http://www.mollio.org $'||unistr('\000a')||
'License: Released Under the "Common Public License 1.0", '||unistr('\000a')||
'http://www.opensource.org/license';

c1:=c1||'s/cpl.php'||unistr('\000a')||
'License: Released Under the "Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/licenses/by/2.5/'||unistr('\000a')||
'License: Released Under the "GNU Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/licenses/GPL/2.0/'||unistr('\000a')||
'*/'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'body {font: 10pt arial,tahoma,verdana,sans-serif}'||unistr('\000a')||
'h1, h2, h3, h4, h5, h6 {margin: 1em 0 .2em;font-family: arial,tahoma,verdana,sans-serif}'||unistr('\000a')||
''||unistr('\000a')||
'* {float:none;position:static;width:au';

c1:=c1||'to;background:#fff}'||unistr('\000a')||
'p {margin: 0 0 1em}'||unistr('\000a')||
'img {border:none;display:block;margin: .5em 0}'||unistr('\000a')||
'dt {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'#nav, #search, #nav-secondary, #breadcrumb, #poweredby {display:none}'||unistr('\000a')||
''||unistr('\000a')||
'/* =LINKS */'||unistr('\000a')||
'a {border:none}'||unistr('\000a')||
'a,a:link,a:link,a:link,a:hover {background:transparent;text-decoration:underline;cursor:pointer} '||unistr('\000a')||
'a:link {color:#5291c4} '||unistr('\000a')||
'a:visited {color:#666}'||unistr('\000a')||
'a:hover {color:#ff9900;border:none} '||unistr('\000a')||
'a:active';

c1:=c1||' {color:#0066cc} '||unistr('\000a')||
''||unistr('\000a')||
'.teaserBox {clear:both;margin: 0 0 1em}'||unistr('\000a')||
''||unistr('\000a')||
'.sponsors img {margin: .5em 0}'||unistr('\000a')||
''||unistr('\000a')||
'#footer {margin: 1em 0}'||unistr('\000a')||
''||unistr('\000a')||
'#header {border-bottom: 3px solid #c00}'||unistr('\000a')||
''||unistr('\000a')||
'/* TABLES */'||unistr('\000a')||
'table {font-size: 9pt;margin: 0 0 1em;border-collapse:collapse}'||unistr('\000a')||
'	table th {border-bottom: 3px solid #000;vertical-align:top;padding: 1.5em 3px 3px;line-height:1.1;font: bold 145% arial;letter-spacing:0;text-align:left}'||unistr('\000a')||
'	.table1 t';

c1:=c1||'h.time {border-bottom: none;font: bold 89% verdana;color:#ff9c00;vertical-align:top;padding: 3px}'||unistr('\000a')||
'	.table1 td {border: 1px solid #ddd;font-size: 9pt;padding: 3px;vertical-align:top}'||unistr('\000a')||
'	.table1 td a {display:block;width:auto;font-weight:bold}'||unistr('\000a')||
'	.table1 td a:link, .table1 td a:visited, .table1 td a:hover, .table1 td a:active {border:none;text-decoration:none}'||unistr('\000a')||
'	.table1 th.sub {background: #aaa}'||unistr('\000a')||
'	.table1';

c1:=c1||' th.sub2 {background: #bbb;color:#000}'||unistr('\000a')||
'	.table1 td ul li {background: #fff}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<!--[if lte IE 6]>'||unistr('\000a')||
'<link rel="stylesheet" type="text/css" href="#WORKSPACE_IMAGES#ie6_or_less.css" />'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#common.js"></script>'||unistr('\000a')||
'<script language="JavaScript" type="text/javascript">'||unistr('\000a')||
'<!--'||unistr('\000a')||
''||unistr('\000a')||
' htmldb_delete_message=''"&DELETE_CONFIRM_MSG."'';'||unistr('\000a')||
''||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>';

c1:=c1||''||unistr('\000a')||
'<link rel="stylesheet" href="#WORKSPACE_IMAGES#apex_3_1.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="/i/css/apex_ie_3_1.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#  id="type-f" >'||unistr('\000a')||
'';

c2:=c2||'		<div id="poweredby">#REGION_POSITION_05#</div>		'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'#FORM_CLOSE#	'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<div id="wrap">'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'	<div id="header">'||unistr('\000a')||
'		<div id="site-name">&SITENAME.</div>'||unistr('\000a')||
'		<div id="search">&APP_USER. #NAVIGATION_BAR#'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'#REGION_POSITION_07#'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div id="content-wrap">'||unistr('\000a')||
'		<div id="utility">'||unistr('\000a')||
'#REGION_POSITION_08#'||unistr('\000a')||
'		</div>		'||unistr('\000a')||
'		<div id="content">'||unistr('\000a')||
'			<div id="breadcrumb">'||unistr('\000a')||
'			#REGION_POSITION_01#'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'<div class="t3Messages" align="center">#GLOBAL_NOTIFICATION##NOTIFICATI';

c3:=c3||'ON_MESSAGE# #SUCCESS_MESSAGE#</div>#BOX_BODY#'||unistr('\000a')||
'#REGION_POSITION_02#'||unistr('\000a')||
'			<div id="footer">'||unistr('\000a')||
'			<p>A note here to go in the footer</p>'||unistr('\000a')||
'			<p><a href="#">Contact Us</a> | <a href="#">Privacy</a> | <a href="#">Links</a></p>'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'';

wwv_flow_api.create_template(
  p_id=> 200485273844527953 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Admin FunEurope One Level Tabs',
  p_body_title=> '#BODY_TITLE#',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'||unistr('\000a')||
'',
  p_current_tab=> '<td class="t3LeftTabForeSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'<td valign="middle" nowrap="nowrap" class="t3TabForegroundText" style="padding:0px 5px;">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td align="right" class="t3RightTabForeCurve" width="8" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td class="t3LeftTabBgSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'<td valign="middle" nowrap="nowrap" class="t3TabBackgroundText" style="padding:0px 5px;"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td align="right" class="t3RightTabBgCurve" width="8" height="19" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" summary=""',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/jquery_tabs_funeurope_one_level_tabs
prompt  ......Page template 290290061261354375
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'||unistr('\000a')||
'<html xmlns="http://www.w3.org/1999/xhtml">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />'||unistr('\000a')||
'<meta name="keywords" content="&P_KEYWORDS." />'||unistr('\000a')||
'<meta name="description" content="&P_DESCRIPTION." />'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" hr';

c1:=c1||'ef="#WORKSPACE_IMAGES#theme_3_1.css" type="text/css" />'||unistr('\000a')||
'<script src="#WORKSPACE_IMAGES#jquery-1.3.2.min.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_ns_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_get_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'';

c1:=c1||'<script src="#IMAGE_PREFIX#javascript/apex_builder.js" type="text/javascript"></script>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#simplemodal.js"></script>'||unistr('\000a')||
'<script src="#WORKSPACE_IMAGES#jquery.rating.pack.js" type="text/javascript" language="javascript"></script>'||unistr('\000a')||
'<script src="http://maps.google.com/maps?file=api&v=2&key=&API_KEY." type="text/javascript"></script>'||unistr('\000a')||
'<script type="text/ja';

c1:=c1||'vascript">'||unistr('\000a')||
'//<![CDATA['||unistr('\000a')||
'//globals'||unistr('\000a')||
'var bounds = new GLatLngBounds();'||unistr('\000a')||
'function initMap() {'||unistr('\000a')||
'if (GBrowserIsCompatible()) {'||unistr('\000a')||
'var map = new GMap2(document.getElementById("map"));'||unistr('\000a')||
'var title = "&ACTIVITY.<br/>&STREET., &CITY., &COUNTRY.";'||unistr('\000a')||
'map.addControl(new GSmallMapControl());'||unistr('\000a')||
'map.addControl(new GMapTypeControl());'||unistr('\000a')||
'var point = new GLatLng(&LOCATION.);'||unistr('\000a')||
'bounds.extend(point);'||unistr('\000a')||
'map.setCenter(point);'||unistr('\000a')||
'map.setZoom';

c1:=c1||'(map.getBoundsZoomLevel(bounds)-4);'||unistr('\000a')||
'var marker = new GMarker(point);'||unistr('\000a')||
'map.addOverlay(marker);'||unistr('\000a')||
'marker.openInfoWindowHtml(''<div class="tiny">'' + title.replace(/~/g,"<br />") + ''</div>'');'||unistr('\000a')||
'}'||unistr('\000a')||
'}'||unistr('\000a')||
'//]]>'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script language="JavaScript" type="text/javascript">'||unistr('\000a')||
''||unistr('\000a')||
' function fetchservice(pcust){ '||unistr('\000a')||
''||unistr('\000a')||
'   var ajaxRequest = new htmldb_Get(null, $v(''pFlowId''), ''APPLICATION_PROCESS=FETCHSERVICE'', 0);'||unistr('\000a')||
'   ajaxRequ';

c1:=c1||'est.addParam(''x01'', pcust);'||unistr('\000a')||
'   var gReturn = ajaxRequest.get(); '||unistr('\000a')||
'//alert(escape(gReturn).toUpperCase()); alert($("#service").html().toUpperCase());'||unistr('\000a')||
'//   if(gReturn && escape(gReturn).toUpperCase() == //escape($("#service").html()).toUpperCase()){'||unistr('\000a')||
'//     $("#service").empty();'||unistr('\000a')||
'//   }'||unistr('\000a')||
'//   else {'||unistr('\000a')||
'   if(gReturn){'||unistr('\000a')||
'    // $("#service").empty();'||unistr('\000a')||
'     $("#service").html(gReturn);'||unistr('\000a')||
'   }//}'||unistr('\000a')||
'   ajaxRequest =';

c1:=c1||' null;'||unistr('\000a')||
' }'||unistr('\000a')||
''||unistr('\000a')||
'</script>'||unistr('\000a')||
'  <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>'||unistr('\000a')||
'  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>'||unistr('\000a')||
'  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>'||unistr('\000a')||
' '||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#simplemodalIR.js';

c1:=c1||'"></script>'||unistr('\000a')||
'<style rel="stylesheet" type="text/css">'||unistr('\000a')||
'div.content {'||unistr('\000a')||
'	/* The display of content is enabled by a javascript generated style on the page.'||unistr('\000a')||
'	   This is so that the slideshow content won''t display unless javascript is enabled. */'||unistr('\000a')||
'	display: none;'||unistr('\000a')||
'	float:right;'||unistr('\000a')||
'	width:550px; '||unistr('\000a')||
'}'||unistr('\000a')||
'div.content a, div.navigation a {'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	color: #777;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.content  a:focus, div.content  a:hov';

c1:=c1||'er, div.content  a:active {'||unistr('\000a')||
'	text-decoration: underline;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.controls {'||unistr('\000a')||
'	margin-top: 5px;'||unistr('\000a')||
'	height: 23px;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.controls a {'||unistr('\000a')||
'	padding: 5px;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.ss-controls {'||unistr('\000a')||
'	float: left;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.nav-controls {'||unistr('\000a')||
'	float: right;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'div.loader {'||unistr('\000a')||
'	background-image: url(''#WORKSPACE_IMAGES#loader.gif'');'||unistr('\000a')||
'	background-repeat: no-repeat;'||unistr('\000a')||
'	background-position: center;'||unistr('\000a')||
'	width: 550px;'||unistr('\000a')||
'	height: 350px'||unistr('\000a')||
'}'||unistr('\000a')||
'div.slideshow {'||unistr('\000a')||
'	clear: ';

c1:=c1||'both;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.slideshow span.image-wrapper {'||unistr('\000a')||
'	float: left;'||unistr('\000a')||
'	padding-bottom: 12px;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.slideshow a.advance-link {'||unistr('\000a')||
'	padding: 2px;'||unistr('\000a')||
'	display: block;'||unistr('\000a')||
'	border: 1px solid #ccc;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.slideshow img {'||unistr('\000a')||
'	border: none;'||unistr('\000a')||
'	display: block;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.download {'||unistr('\000a')||
'	float: right;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.embox {'||unistr('\000a')||
'	clear: both;'||unistr('\000a')||
'	border: 1px solid #ccc;'||unistr('\000a')||
'	background-color: #eee;'||unistr('\000a')||
'	padding: 12px;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.image-title {'||unistr('\000a')||
'	font-weight: bold;'||unistr('\000a')||
'	font-size';

c1:=c1||': 1.4em;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'div.image-desc {'||unistr('\000a')||
'	line-height: 1.3em;'||unistr('\000a')||
'	padding-top: 12px;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.navigation {'||unistr('\000a')||
'	/* The navigation style is set by a javascript generated style on the page.'||unistr('\000a')||
'	   This is so that the javascript specific styles won''t be applied unless javascript is enabled. */'||unistr('\000a')||
'}'||unistr('\000a')||
'ul.thumbs {'||unistr('\000a')||
'	clear: both;'||unistr('\000a')||
'	margin: 0;'||unistr('\000a')||
'	padding: 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'ul.thumbs li {'||unistr('\000a')||
'	float: left;'||unistr('\000a')||
'	padding: 0;'||unistr('\000a')||
'	margin: 5px 10px 5px 0;'||unistr('\000a')||
'	list-style';

c1:=c1||': none;'||unistr('\000a')||
'}'||unistr('\000a')||
'a.thumb {'||unistr('\000a')||
'	padding: 2px;'||unistr('\000a')||
'	display: block;'||unistr('\000a')||
'	border: 1px solid #ccc;'||unistr('\000a')||
'}'||unistr('\000a')||
'ul.thumbs li.selected a.thumb {'||unistr('\000a')||
'	background: #000;'||unistr('\000a')||
'}'||unistr('\000a')||
'a.thumb:focus {'||unistr('\000a')||
'	outline: none;'||unistr('\000a')||
'}'||unistr('\000a')||
'ul.thumbs img {'||unistr('\000a')||
'	border: none;'||unistr('\000a')||
'	display: block;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.pagination {'||unistr('\000a')||
'	clear: both;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.navigation div.top {'||unistr('\000a')||
'	margin-bottom: 12px;'||unistr('\000a')||
'	height: 11px;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.navigation div.bottom {'||unistr('\000a')||
'	margin-top: 12px;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.pagination a, div.pagination span.';

c1:=c1||'current {'||unistr('\000a')||
'	display: block;'||unistr('\000a')||
'	float: left;'||unistr('\000a')||
'	margin-right: 2px;'||unistr('\000a')||
'	padding: 4px 7px 2px 7px;'||unistr('\000a')||
'	border: 1px solid #ccc;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.pagination a:hover {'||unistr('\000a')||
'	background-color: #eee;'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'}'||unistr('\000a')||
'div.pagination span.current {'||unistr('\000a')||
'	font-weight: bold;'||unistr('\000a')||
'	background-color: #000;'||unistr('\000a')||
'	border-color: #000;'||unistr('\000a')||
'	color: #fff;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'/* Minimal Gallery Styles */'||unistr('\000a')||
'#thumbs-min ul.thumbs li {'||unistr('\000a')||
'	float: none;'||unistr('\000a')||
'	padding: 0;'||unistr('\000a')||
'	margin: 0;'||unistr('\000a')||
'	';

c1:=c1||'list-style: none;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'#thumbs-min a.thumb {'||unistr('\000a')||
'	padding: 0px;'||unistr('\000a')||
'	display: inline;'||unistr('\000a')||
'	border: none;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'#thumbs-min ul.thumbs li.selected a.thumb {'||unistr('\000a')||
'	background: inherit;'||unistr('\000a')||
'	color: #000;'||unistr('\000a')||
'	font-weight: bold;'||unistr('\000a')||
'}'||unistr('\000a')||
'a:link, a:visited, a:active {'||unistr('\000a')||
'    color: #000000;'||unistr('\000a')||
'    text-decoration: none;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'a:hover {'||unistr('\000a')||
'    color: #eeeeee;'||unistr('\000a')||
'    text-decoration: underline;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAG';

c1:=c1||'ES#jquery.galleriffic.js"></script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'  $(function(){'||unistr('\000a')||
'$("#apexir_rollover").appendTo("body"); '||unistr('\000a')||
'  });'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'<!--'||unistr('\000a')||
'/*Global JS Variables*/'||unistr('\000a')||
'var htmldb_Img_Dir = "#IMAGE_PREFIX#";'||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'/* jQuery.Rating Plugin CSS - http://www.fyneworks.com/jquery/star-rating/ */'||unistr('\000a')||
'div.rating-cancel,div.star-rating{float:l';

c1:=c1||'eft;width:17px;height:15px;text-indent:-999em;cursor:pointer;display:block;background:transparent;overflow:hidden}'||unistr('\000a')||
'div.rating-cancel,div.rating-cancel a{background:url(#WORKSPACE_IMAGES#delete.gif) no-repeat 0 -16px}'||unistr('\000a')||
'div.star-rating,div.star-rating a{background:url(#WORKSPACE_IMAGES#star.gif) no-repeat 0 0px}'||unistr('\000a')||
'div.rating-cancel a,div.star-rating a{display:block;width:16px;height:100%;background-pos';

c1:=c1||'ition:0 0px;border:0}'||unistr('\000a')||
'div.star-rating-on a{background-position:0 -16px!important}'||unistr('\000a')||
'div.star-rating-hover a{background-position:0 -32px}'||unistr('\000a')||
'/* Read Only CSS */'||unistr('\000a')||
'div.star-rating-readonly a{cursor:default !important}'||unistr('\000a')||
'/* Partial Star CSS */'||unistr('\000a')||
'div.star-rating{background:transparent!important;overflow:hidden!important}'||unistr('\000a')||
'/* END jQuery.Rating Plugin CSS */'||unistr('\000a')||
'a:focus {'||unistr('\000a')||
'outline-style:none;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DA';

c1:=c1||'TA th{'||unistr('\000a')||
'background:url("#WORKSPACE_IMAGES#bck-search.gif") repeat scroll 0 0 #E9E9E9;'||unistr('\000a')||
'border:1px solid #D1D1D1;'||unistr('\000a')||
'font-weight:bold;'||unistr('\000a')||
'padding:0.7em;'||unistr('\000a')||
'color:#CC0000;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA td {'||unistr('\000a')||
'	/*background: #e2e2e2;*/'||unistr('\000a')||
'	background: #fff;'||unistr('\000a')||
'	font:normal 8pt Tahoma;'||unistr('\000a')||
'	padding:2px 5px;'||unistr('\000a')||
'	empty-cells:show!important;'||unistr('\000a')||
'        /*'||unistr('\000a')||
'	border-bottom:1px solid #b8b8b8;'||unistr('\000a')||
'	border-top:1px solid #fff;'||unistr('\000a')||
'	border-right:1p';

c1:=c1||'x solid #b8b8b8;'||unistr('\000a')||
'	border-left:1px solid #fff;'||unistr('\000a')||
'        */'||unistr('\000a')||
'	border:1px solid #b8b8b8!important;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA th div {'||unistr('\000a')||
'	/* color:#fff; */'||unistr('\000a')||
'        color:#CC0000;'||unistr('\000a')||
'	font-size:8pt;'||unistr('\000a')||
'	letter-spacing:1px;'||unistr('\000a')||
'	text-decoration:none;'||unistr('\000a')||
'	cursor:pointer;'||unistr('\000a')||
'	margin:3px 9px;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA th:hover {'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	background:#f6a828 url(#IMAGE_PREFIX#themes/theme_6/ir_bg_hover2.';

c1:=c1||'png) repeat-x scroll 50%;'||unistr('\000a')||
'}'||unistr('\000a')||
'table.apexir_WORKSHEET_DATA a {'||unistr('\000a')||
'	/* color:#4C7CC1; */'||unistr('\000a')||
'        color:#CC0000;'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	font-size:11px;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'table.apexir_WORKSHEET_DATA a:hover {'||unistr('\000a')||
'	color:#006699; /* color: #FFB300; */'||unistr('\000a')||
'}'||unistr('\000a')||
'/*********** Interactive Reports Look a Like *************/'||unistr('\000a')||
'.t6IrLookaLike a,.t6IrLookaLike a:link ,.t6IrLookaLike a:visited,.t6IrLookaLike a:active,.t6IrLookaLike a:hover{'||unistr('\000a')||
'';

c1:=c1||'	/* color:#FFF!important; */'||unistr('\000a')||
'        color:#CC0000;'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	font-size:8pt;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.t6IrLookaLike {padding-left:8px;}'||unistr('\000a')||
''||unistr('\000a')||
'table.apexir_WORKSHEET_DATA td.apex_report_break {'||unistr('\000a')||
'	color:#FFFFFF!important;'||unistr('\000a')||
'	background:#4C7CC1!important;'||unistr('\000a')||
'	padding-left: 16px!important;'||unistr('\000a')||
'	border-top:1px solid #b8b8b8!important;'||unistr('\000a')||
'	border-right:1px solid #b8b8b8!important;'||unistr('\000a')||
'	border-bottom:1px solid #FFF!important;'||unistr('\000a')||
'}'||unistr('\000a')||
'tab';

c1:=c1||'le.apexir_WORKSHEET_DATA td.apex_report_break a,table.apexir_WORKSHEET_DATA td.apex_report_break a:link ,table.apexir_WORKSHEET_DATA d.apex_report_break a:visited,table.apexir_WORKSHEET_DATA td.apex_report_break a:active{'||unistr('\000a')||
'	color:#FFF!important;'||unistr('\000a')||
'	text-decoration: none;'||unistr('\000a')||
'	font-size:8pt;'||unistr('\000a')||
'	font-weight:bold;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<style type="text/css" media="screen">'||unistr('\000a')||
'/*'||unistr('\000a')||
'LEGAL'||unistr('\000a')||
'====='||unistr('\000a')||
'Copyright: Daemon Pty Limited 2';

c1:=c1||'006, http://www.daemon.com.au'||unistr('\000a')||
'Community: Mollio http://www.mollio.org $'||unistr('\000a')||
'License: Released Under the "Common Public License 1.0", '||unistr('\000a')||
'http://www.opensource.org/licenses/cpl.php'||unistr('\000a')||
'License: Released Under the "Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/licenses/by/2.5/'||unistr('\000a')||
'License: Released Under the "GNU Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/licenses/GPL/2.0/'||unistr('\000a')||
'*/'||unistr('\000a')||
''||unistr('\000a')||
'/* THE BIG GUYS ';

c1:=c1||'*/'||unistr('\000a')||
'* {margin:0;padding:0}'||unistr('\000a')||
'body {padding: 0 0 20px;background: #fff url("#WORKSPACE_IMAGES#body_bg.gif") repeat-x 0 100%;color:#333;font:83%/1.5 arial,tahoma,verdana,sans-serif}'||unistr('\000a')||
''||unistr('\000a')||
'/* LINKS */'||unistr('\000a')||
'a,a:link,a:link,a:link,a:hover {background:transparent;text-decoration:underline;cursor:pointer} '||unistr('\000a')||
'a:link {color:#c00} '||unistr('\000a')||
'a:visited {color:#999} '||unistr('\000a')||
'a:hover,a:active {color:#069} '||unistr('\000a')||
''||unistr('\000a')||
'/* FORMS */'||unistr('\000a')||
'form {margin: 0 0 1.5em';

c1:=c1||'}'||unistr('\000a')||
'input {font-family: arial,tahoma,verdana,sans-serif;margin: 2px 0}'||unistr('\000a')||
'fieldset {border: none}'||unistr('\000a')||
'label {padding: 5px 0}'||unistr('\000a')||
'label br {clear:left}'||unistr('\000a')||
''||unistr('\000a')||
'	/* FORMS - general classes */'||unistr('\000a')||
'	input.f-submit {padding: 1px 3px;background:#666;color:#fff;font-weight:bold;font-size:96%}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* FORMS - f-wrap-1 - simple form, headings on left, form elements on right */'||unistr('\000a')||
'	form.f-wrap-1 {width:100%;padding: .5em 0;background: ';

c1:=c1||'#f6f6f6 url("#WORKSPACE_IMAGES#featurebox_bg.gif") no-repeat 100% 100%;border-top: 1px solid #d7d7d7;position:relative}'||unistr('\000a')||
'		form.f-wrap-1 fieldset {width:auto;margin: 0 1em}'||unistr('\000a')||
'		form.f-wrap-1 h3 {margin:0 0 .6em;font: bold 155% arial;color:#c00}'||unistr('\000a')||
'		form.f-wrap-1 label {clear:left;float:left;width:100%;border-top: 1px solid #fff}'||unistr('\000a')||
'		'||unistr('\000a')||
'		/* hide from IE mac \*/'||unistr('\000a')||
'		form.f-wrap-1 label {float:none}'||unistr('\000a')||
'		/* end h';

c1:=c1||'iding from IE5 mac */'||unistr('\000a')||
'	'||unistr('\000a')||
'		form.f-wrap-1 label input, form.f-wrap-1 label textarea, form.f-wrap-1 label select {width:15em;float:left;margin-left:10px}'||unistr('\000a')||
'		'||unistr('\000a')||
'		form.f-wrap-1 label b {float:left;width:8em;line-height: 1.7;display:block;position:relative}'||unistr('\000a')||
'		form.f-wrap-1 label b .req {color:#c00;font-size:150%;font-weight:normal;position:absolute;top:-.1em;line-height:1;left:-.4em;width:.3em;height:.3em';

c1:=c1||'}'||unistr('\000a')||
'		form.f-wrap-1 div.req {color:#666;font-size:96%;font-weight:normal;position:absolute;top:.4em;right:.4em;left:auto;width:13em;text-align:right}'||unistr('\000a')||
'		form.f-wrap-1 div.req b {color:#c00;font-size:140%}'||unistr('\000a')||
'		form.f-wrap-1 label select {width: 15.5em}'||unistr('\000a')||
'		form.f-wrap-1 label textarea.f-comments {width: 20em}'||unistr('\000a')||
'		form.f-wrap-1 div.f-submit-wrap {padding: 5px 0 5px 8em}'||unistr('\000a')||
'		form.f-wrap-1 input.f-submit {margin';

c1:=c1||': 0 0 0 10px}'||unistr('\000a')||
'		'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap, form.f-wrap-1 fieldset.f-radio-wrap {clear:left;float:left;width:32em;border:none;margin:0;padding-bottom:.7em}'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap b, form.f-wrap-1 fieldset.f-radio-wrap b {float:left;width:8em;line-height: 1.7;display:block;position:relative;padding-top:.3em}'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap fieldset, form.f-';

c1:=c1||'wrap-1 fieldset.f-radio-wrap fieldset {float:left;width:13em;margin: 3px 0 0 10px}'||unistr('\000a')||
'		form.f-wrap-1 fieldset.f-checkbox-wrap label, form.f-wrap-1 fieldset.f-radio-wrap label {float:left;width:13em;border:none;margin:0;padding:2px 0;margin-right:-3px}'||unistr('\000a')||
'		form.f-wrap-1 label input.f-checkbox, form.f-wrap-1 label input.f-radio {width:auto;float:none;margin:0;padding:0}'||unistr('\000a')||
'		'||unistr('\000a')||
'		form.f-wrap-1 label span.err';

c1:=c1||'ormsg {position:absolute;top:0;right:-10em;left:auto;display:block;width:16em;background: transparent url(#WORKSPACE_IMAGES#errormsg_bg.gif) no-repeat 0 0}'||unistr('\000a')||
'		form.f-wrap-1 label span.errormsg b {padding: 10px 0;margin: 0 10px 0 30px;color:#B30800;font-weight:bold;display:block;width:auto;float:none;line-height:1.3}'||unistr('\000a')||
''||unistr('\000a')||
'/* TYPOGRAPHY */'||unistr('\000a')||
'p, ul, ol {margin: 0 0 1.5em}'||unistr('\000a')||
'h1, h2, h3, h4, h5, h6 {letter-spac';

c1:=c1||'ing: -1px;font-family: arial,verdana,sans-serif;margin: 1.2em 0 .3em;color:#000;border-bottom: 1px solid #eee;padding-bottom: .1em}'||unistr('\000a')||
'h1 {font-size: 196%;margin-top:.6em}'||unistr('\000a')||
'h2 {font-size: 136%}'||unistr('\000a')||
'h3 {font-size: 126%}'||unistr('\000a')||
'h4 {font-size: 116%}'||unistr('\000a')||
'h5 {font-size: 106%}'||unistr('\000a')||
'h6 {font-size: 96%}'||unistr('\000a')||
'.highlight {color:#E17000}'||unistr('\000a')||
'.subdued {color:#999}'||unistr('\000a')||
'.error {color:#c00;font-weight:bold}'||unistr('\000a')||
'.success {color:#390;font-weight:bold}'||unistr('\000a')||
'.c';

c1:=c1||'aption {color:#999;font-size:11px}'||unistr('\000a')||
'.date {font: bold 82% arial;color:#bbb;display:block;letter-spacing: 1px}'||unistr('\000a')||
'small {font-size:11px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LISTS */'||unistr('\000a')||
'ul {margin: .3em 0 1.5em 0;list-style-type:none}'||unistr('\000a')||
'	ul.related {margin-top: -1em}'||unistr('\000a')||
'ol {margin: .5em .5em 1.5em}'||unistr('\000a')||
'ol li {margin-left: 1.4em;padding-left: 0;background: none; list-style-type: decimal}'||unistr('\000a')||
'li {line-height: 1.4em;padding-left: 25px;background: transp';

c1:=c1||'arent url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 0 0}'||unistr('\000a')||
'li.doc {background-position: 3px -500px}'||unistr('\000a')||
'ul.nomarker li {background:none;padding-left:0}'||unistr('\000a')||
''||unistr('\000a')||
'dl {margin: 0 0 1em 0}'||unistr('\000a')||
'dt {font-weight:bold;margin-top: 1.3em}'||unistr('\000a')||
'dl dl {margin: 0 0 1.5em 30px}'||unistr('\000a')||
''||unistr('\000a')||
'/* GENERAL */'||unistr('\000a')||
'img {border:none} '||unistr('\000a')||
'hr {margin: 1em 0;background:#f2f2f2;height:1px;color:#f2f2f2;border:none;clear:both}'||unistr('\000a')||
'.clear {clear:both;position:relative;f';

c1:=c1||'ont-size:0px;height:0px;line-height:0px} '||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT - HEADER */'||unistr('\000a')||
'#header {background: #666 url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 100%;margin: 0 0 25px;padding: 0 0 8px}'||unistr('\000a')||
''||unistr('\000a')||
'	#header #site-name {font: 265% arial;letter-spacing: -.05em;margin:0 0 0 40px;padding:3px 0;color:#ccc;border:none}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* NAV - top horizontal nav */'||unistr('\000a')||
'	#nav, #nav ul {padding: 0;margin: 0;list-style: none}'||unistr('\000a')||
'	#nav {font-we';

c1:=c1||'ight:bold;height:2.09em;font: bold 96% arial;margin: 0 105px 0 40px}'||unistr('\000a')||
'	#nav li {position:relative;background: #999;float: left;width: 10em;display:block;margin: 0;border-bottom: 3px solid #666;border-right: 3px solid #252525;padding:0}'||unistr('\000a')||
'	#nav a, #nav a:link, #nav a:visited, #nav a:hover, #nav a:active {text-decoration:none;cursor:pointer;color:#fff;display: block;padding: 4px 10px 2px}'||unistr('\000a')||
'	#nav a:hover';

c1:=c1||' {color:#000}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li ul {border-left: 1px solid #c00;background: #f6f6f6 url("#WORKSPACE_IMAGES#featurebox_bg.gif") no-repeat 100% 100%;width:15.8em;font-size:90%;margin-top:3px;position: absolute;font-weight:normal;left: -999em}'||unistr('\000a')||
'	#nav li:hover ul, #nav li.sfhover ul {left: 0;z-index:99999}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li li {background:none;float:none;border:none;border: 1px solid #999;border-top:1px solid #fff;b';

c1:=c1||'order-right:none;border-left:none;padding-left:0}'||unistr('\000a')||
'	#nav li li.last {border-bottom:none}'||unistr('\000a')||
'	#nav li li a, #nav li li a:link, #nav li li a:visited, #nav li li a:hover {color:#000;padding: 3px 10px 2px;width:14em}'||unistr('\000a')||
'	#nav li li a:hover {color:#fff;background:#c00}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li.active {background: #c00;border-bottom: 3px solid #c00}'||unistr('\000a')||
'	#nav li.active ul {border:none;background: #c00 url("#WORKSPACE_IMAGES#fea';

c1:=c1||'turebox2_bg.gif") no-repeat 100% 100%}'||unistr('\000a')||
'	#nav li.active a:link, #nav li.active a:visited, #nav li.active a:hover, #nav li.active a:active {}'||unistr('\000a')||
'	#nav li.active a:hover {color:#000}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li.active li {border:none;border-top: 1px solid #c15c5c;border-bottom: 1px solid #870000}'||unistr('\000a')||
'	#nav li.active li.last {border-bottom: none}'||unistr('\000a')||
'	#nav li.active li a:link, #nav li.active li a:visited, #nav li.active li a:hov';

c1:=c1||'er, #nav li.active li a:active {color:#fff}'||unistr('\000a')||
'	#nav li.active li a:hover {background: #666 url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 99%;color:#fff}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav li.active li.active a:link, #nav li.active li.active a:visited, #nav li.active li.active a:hover, #nav li.active li.active a:active {color:#fff;font-weight:bold;background: #666 url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 99%}'||unistr('\000a')||
''||unistr('\000a')||
'	/* hid';

c1:=c1||'e from IE mac \*/'||unistr('\000a')||
'	#nav li {width:auto}'||unistr('\000a')||
'	/* end hiding from IE5 mac */'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* SEARCH */'||unistr('\000a')||
'	#search {color:#fff;font-weight:bold;position:absolute;top:10px;right:110px;left:auto;width:18em}'||unistr('\000a')||
'	#search form {margin:0}'||unistr('\000a')||
'	#search input {width:8em;margin: 0 0 -1px;height:1.2em}'||unistr('\000a')||
'	#search label {padding:5px 0 0;display:inline}'||unistr('\000a')||
'	#search input.f-submit {width:auto;font-size:81%;margin-left:10px;height:1.95em}'||unistr('\000a')||
'	'||unistr('\000a')||
'';

c1:=c1||'	/* POWERED BY - mollio logo in this case */'||unistr('\000a')||
'	#poweredby {width:96px;height:63px;position:absolute;top:-102px;right:0}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT - main body of page */'||unistr('\000a')||
'#wrap {min-width:770px;max-width:1200px;margin: 0 auto;position:relative}'||unistr('\000a')||
'#content-wrap {position:relative;width:100%}'||unistr('\000a')||
'	#utility {position:absolute;top:0;left:25px;width:165px;border-top: 5px solid #999;padding-bottom: 40px}'||unistr('\000a')||
'	#sidebar {position:ab';

c1:=c1||'solute;top:0;right:25px;width:20%;border-top: 5px solid #999;padding-top: 1px;padding-bottom: 40px}'||unistr('\000a')||
''||unistr('\000a')||
'#content {margin: 0 50px}'||unistr('\000a')||
'	#content #breadcrumb {margin-top:-5px;font-size:93%;font-weight:bold}'||unistr('\000a')||
'	#content #breadcrumb a:link, #content #breadcrumb a:visited {text-decoration:none}'||unistr('\000a')||
'	#content #breadcrumb a:hover, #content #breadcrumb a:active {text-decoration:underline}'||unistr('\000a')||
'	'||unistr('\000a')||
'	.featurebox {color:#333;pa';

c1:=c1||'dding: 15px 20px 20px;border-top: 1px solid #d7d7d7;margin: 0 0 1.5em;background: #f6f6f6 url("#WORKSPACE_IMAGES#featurebox_bg.gif") no-repeat 100% 100%}'||unistr('\000a')||
'	.featurebox p, .featurebox h1, .featurebox h2, .featurebox h3, .featurebox h4, .featurebox h5, .featurebox h6 {margin: 0 0 .3em;border-bottom: 1px solid #c00;color:#c00}'||unistr('\000a')||
'	.featurebox p {border:none;margin: 0 0 1em;color:#444}'||unistr('\000a')||
'	.featurebox a {fon';

c1:=c1||'t-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'	.thumbnail {margin: 0 0 0 10px;position:relative;z-index:9999;border: 1px solid #eee;float:right;width:100px;padding:5px;background:#fff}'||unistr('\000a')||
'	.thumbnail img {border: 1px solid #000}'||unistr('\000a')||
'	'||unistr('\000a')||
'	.pagination1 {background: #f2f2f2;color:#666;padding: 4px 2px 4px 7px;border: 1px solid #ddd;margin: 0 0 1.5em}'||unistr('\000a')||
'	.pagination1 p {position:relative;text-align:right}'||unistr('\000a')||
'	.pagination1 p a:link, .pagination ';

c1:=c1||'p a:visited, .pagination p a:hover, .pagination p a:active {text-decoration:none;background:#fff;padding:2px 5px;border: 1px solid #ccc}'||unistr('\000a')||
'	.pagination1 p a:hover {background:#c00;color:#fff}'||unistr('\000a')||
'	.pagination1 p span {text-decoration:none;background:#fff;padding:2px 5px;border: 1px solid #ccc;color:#ccc}'||unistr('\000a')||
'	.pagination1 * {margin:0}'||unistr('\000a')||
'	.pagination1 h4 {margin-top:-1.45em;padding:0;border:none}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#resultsli';

c1:=c1||'st-wrap {margin: 0 0 1.5em;font-size:92%}'||unistr('\000a')||
'	#resultslist-wrap dt, #resultslist-wrap dl {margin: 0}'||unistr('\000a')||
'	#resultslist-wrap dt {font: bold 85% arial;padding: 3px 0}'||unistr('\000a')||
'	#resultslist-wrap li {padding: 0 0 1em;margin:0 0 0 1.2em;font: bold 145% arial}'||unistr('\000a')||
'	#resultslist-wrap li dd {font: normal 73% arial}'||unistr('\000a')||
'	#resultslist-wrap li dl {margin:0}'||unistr('\000a')||
'	#resultslist-wrap dd {line-height:1.3}'||unistr('\000a')||
'	#resultslist-wrap dd.filetype, #r';

c1:=c1||'esultslist-wrap dd.date {color:#999;display:inline;padding-right:.5em}'||unistr('\000a')||
'	'||unistr('\000a')||
'	/* TABLES */'||unistr('\000a')||
'	.table1 {border: 2px solid #900;border-collapse:collapse;width:100%}'||unistr('\000a')||
'		.table1 td {background: #fff url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1600px;padding:3px;border: 1px solid #fff}'||unistr('\000a')||
'		.table1 th {text-align:left;border: 1px solid #fff}'||unistr('\000a')||
'		.table1 thead th {color:#fff;font-size:145%;background: #900 url';

c1:=c1||'("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1300px;padding: 10px 6px}'||unistr('\000a')||
'		.table1 tbody th {color:#fff;font-size:115%;background: #88b8db url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1400px;padding: 6px}'||unistr('\000a')||
'		.table1 tbody th.sub {font-size:100%;color:#000;background: #efefef url("#WORKSPACE_IMAGES#sprites.gif") repeat-x 0 -1500px;padding: 6px}'||unistr('\000a')||
''||unistr('\000a')||
'	/* TABLES - calendar */'||unistr('\000a')||
'	.calendar {width:200px;fo';

c1:=c1||'nt-size:92%}'||unistr('\000a')||
'		.calendar td {text-align:center;border: 1px solid #ddd}'||unistr('\000a')||
'		.calendar th {text-align:center}'||unistr('\000a')||
'		.calendar thead th {padding: 3px 2px}'||unistr('\000a')||
'		.calendar tbody th {padding: 2px}'||unistr('\000a')||
'		.calendar tbody th.sub {padding: 2px}'||unistr('\000a')||
'		'||unistr('\000a')||
'	/* ''MORE'' LINK - provides an accessible alternative to just using ''more'' as a link at the end of paragraphs */'||unistr('\000a')||
'		a.morelink:link, a.morelink:visited, a.morelink:hover, a.more';

c1:=c1||'link:active {background: transparent url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 5px -500px;padding-left:21px}'||unistr('\000a')||
'		a.morelink:hover {background: transparent url("#WORKSPACE_IMAGES#sprites.gif") 5px -400px}'||unistr('\000a')||
'		.morelink span {position:absolute;left:-9999px;width:900px}'||unistr('\000a')||
'		'||unistr('\000a')||
'	/* CODE - formatting for code inserted into body - more here: http://dizque.lacalabaza.net/temp/lipt/ */'||unistr('\000a')||
'		ol.code {font-family';

c1:=c1||': monospace;position:relative}'||unistr('\000a')||
'		ol.code li {color: #666;margin-bottom: 1px}'||unistr('\000a')||
'		ol.code code {color: #000;display: block}'||unistr('\000a')||
'		ol.code .cmt {color: #4077d2}'||unistr('\000a')||
'		li.tab0 code {padding-left: 4em}'||unistr('\000a')||
'		li.tab1 code {padding-left: 8em}'||unistr('\000a')||
'		li.tab2 code {padding-left: 12em}'||unistr('\000a')||
'		li.tab3 code {padding-left: 16em}'||unistr('\000a')||
'		li.tab4 code {padding-left: 20em}'||unistr('\000a')||
'		li.tab5 code {padding-left: 24em}'||unistr('\000a')||
'		ol.code li  {background: #f3f3f';

c1:=c1||'3 url("#WORKSPACE_IMAGES#td_bg.gif") no-repeat 100% 100%}'||unistr('\000a')||
'		p.note {margin: 1em;border: 1px solid #ddd;background: #f0f0f0;padding: 1em}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE B */'||unistr('\000a')||
'	#type-b #content-wrap {background: transparent url("#WORKSPACE_IMAGES#content_wrap_bg.gif") repeat-y 30px 0}'||unistr('\000a')||
'	#type-b #content {margin: 0 23px 0 235px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE C */'||unistr('\000a')||
'	#type-c #content-wrap {background: transparent url("#WORKSPACE_IMAG';

c1:=c1||'ES#content_wrap_bg.gif") repeat-y 30px 0}'||unistr('\000a')||
'	#type-c #content {margin: 0 25% 0 235px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE D */'||unistr('\000a')||
'	#type-d #content {margin: 0 25% 0 50px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE E */'||unistr('\000a')||
'	#type-e #content-wrap {background: transparent url("#WORKSPACE_IMAGES#content_wrap_e_bg.gif") repeat-y 100% 0}'||unistr('\000a')||
'	#type-e #utility {position:absolute;top:0;left:auto;right:25px;width:165px;border-top: 5px solid #999}'||unistr('\000a')||
'	#type-e #content';

c1:=c1||' {margin: 0 243px 0 50px}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT TYPE F */'||unistr('\000a')||
'	#type-f #content-wrap {background: transparent url("#WORKSPACE_IMAGES#content_wrap_e_bg.gif") repeat-y 100% 0}'||unistr('\000a')||
'	#type-f #content {margin: 0 235px 0 25%}'||unistr('\000a')||
'		#type-f #utility {left:auto;right:25px}'||unistr('\000a')||
'		#type-f #sidebar {right:auto;left:25px}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - vertical navigation */'||unistr('\000a')||
'	#nav-secondary, #nav-secondary ul {position:static}'||unistr('\000a')||
'	#nav-second';

c1:=c1||'ary, #nav-secondary li {list-style: none;margin:0;padding:0;background:#fff}'||unistr('\000a')||
'	#nav-secondary {padding-top:0;border-top: 1px solid #ccc;margin-top: 1px}'||unistr('\000a')||
'	#nav-secondary a {line-height:1.8;padding: 5px 0 5px 23px;background: #fff url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 10px -695px;font: bold 86% arial;display:block}'||unistr('\000a')||
'	#nav-secondary a, #nav-secondary a:link, #nav-secondary a:visited, #nav-seco';

c1:=c1||'ndary a:hover, #nav-secondary a:active {text-decoration:none;cursor:pointer} '||unistr('\000a')||
'	#nav-secondary a:link {color:#000} '||unistr('\000a')||
'	#nav-secondary a:visited {color:#000} '||unistr('\000a')||
'	#nav-secondary a:hover {color:#c00;background: #fee url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 10px -695px} '||unistr('\000a')||
'	#nav-secondary li.active a:link, #nav-secondary li.active a:visited, #nav-secondary li.active a:hover, #nav-secondary li.active a:';

c1:=c1||'active {color:#c00} '||unistr('\000a')||
'	#nav-secondary li {border-top: 1px solid #fff;border-bottom: 1px solid #ccc}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - 2nd TIER */'||unistr('\000a')||
'	#nav-secondary ul {margin: 0 0 1em 23px;padding:0}'||unistr('\000a')||
'	#nav-secondary li.active li a, #nav-secondary li.active li a:link, #nav-secondary li.active li a:visited {line-height:1.5;background: #fff url("#WORKSPACE_IMAGES#sprites.gif") no-repeat 0 -798px;padding:0 0 0 ';

c1:=c1||'12px;font-weight:normal;width:auto;color:#000;width:130px;display:block}'||unistr('\000a')||
'	#nav-secondary li.active li a:hover, #nav-secondary li.active li a:active {color: #c00}'||unistr('\000a')||
'	#nav-secondary li.active li {border: none;margin:0}'||unistr('\000a')||
'	'||unistr('\000a')||
'	#nav-secondary li.active li.active a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active a:active';

c1:=c1||' {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - 3rd TIER */'||unistr('\000a')||
'	#nav-secondary ul ul {margin: 0 0 1em 13px;padding:0}'||unistr('\000a')||
'	#nav-secondary li.active li.active li a, #nav-secondary li.active li.active li a:link, #nav-secondary li.active li.active li a:visited {width:117px}'||unistr('\000a')||
'	#nav-secondary li.active li.active li a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active l';

c1:=c1||'i a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li a:active {font-weight:normal}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active a:active {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'/* SECONDARY NAVIGATION - 4th TIER */'||unistr('\000a')||
'	#nav-secondary ul ul ul {margin: 0 0';

c1:=c1||' 1em 13px;padding:0}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a, #nav-secondary li.active li.active li.active li a:link, #nav-secondary li.active li.active li.active li a:visited {width:104px}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li a:hover, '||unistr('\000a')||
'	#nav-secondary li.ac';

c1:=c1||'tive li.active li.active li a:active {font-weight:normal}'||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:link, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:visited, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:hover, '||unistr('\000a')||
'	#nav-secondary li.active li.active li.active li.active a:active {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'/* LAYOUT - FOOTER */'||unistr('\000a')||
'#footer {clear:both;border-top: 1px ';

c1:=c1||'solid #E3E8EE;padding: 10px 0 30px;font-size:86%;color:#999}'||unistr('\000a')||
'	#footer p {margin:0}'||unistr('\000a')||
'	#footer a:link {color:#999}'||unistr('\000a')||
''||unistr('\000a')||
'</style>'||unistr('\000a')||
'<style type="text/css" media="print">'||unistr('\000a')||
'/*'||unistr('\000a')||
'LEGAL'||unistr('\000a')||
'====='||unistr('\000a')||
'Copyright: Daemon Pty Limited 2006, http://www.daemon.com.au'||unistr('\000a')||
'Community: Mollio http://www.mollio.org $'||unistr('\000a')||
'License: Released Under the "Common Public License 1.0", '||unistr('\000a')||
'http://www.opensource.org/licenses/cpl.php'||unistr('\000a')||
'License: Released Und';

c1:=c1||'er the "Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/licenses/by/2.5/'||unistr('\000a')||
'License: Released Under the "GNU Creative Commons License", '||unistr('\000a')||
'http://creativecommons.org/licenses/GPL/2.0/'||unistr('\000a')||
'*/'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'body {font: 10pt arial,tahoma,verdana,sans-serif}'||unistr('\000a')||
'h1, h2, h3, h4, h5, h6 {margin: 1em 0 .2em;font-family: arial,tahoma,verdana,sans-serif}'||unistr('\000a')||
''||unistr('\000a')||
'* {float:none;position:static;width:auto;background:#fff}'||unistr('\000a')||
'p {margin: ';

c1:=c1||'0 0 1em}'||unistr('\000a')||
'img {border:none;display:block;margin: .5em 0}'||unistr('\000a')||
'dt {font-weight:bold}'||unistr('\000a')||
''||unistr('\000a')||
'#nav, #search, #nav-secondary, #breadcrumb, #poweredby {display:none}'||unistr('\000a')||
''||unistr('\000a')||
'/* =LINKS */'||unistr('\000a')||
'a {border:none}'||unistr('\000a')||
'a,a:link,a:link,a:link,a:hover {background:transparent;text-decoration:underline;cursor:pointer} '||unistr('\000a')||
'a:link {color:#5291c4} '||unistr('\000a')||
'a:visited {color:#666}'||unistr('\000a')||
'a:hover {color:#ff9900;border:none} '||unistr('\000a')||
'a:active {color:#0066cc} '||unistr('\000a')||
''||unistr('\000a')||
'.teaserBox {';

c1:=c1||'clear:both;margin: 0 0 1em}'||unistr('\000a')||
''||unistr('\000a')||
'.sponsors img {margin: .5em 0}'||unistr('\000a')||
''||unistr('\000a')||
'#footer {margin: 1em 0}'||unistr('\000a')||
''||unistr('\000a')||
'#header {border-bottom: 3px solid #c00}'||unistr('\000a')||
''||unistr('\000a')||
'/* TABLES */'||unistr('\000a')||
'table {font-size: 9pt;margin: 0 0 1em;border-collapse:collapse}'||unistr('\000a')||
'	table th {border-bottom: 3px solid #000;vertical-align:top;padding: 1.5em 3px 3px;line-height:1.1;font: bold 145% arial;letter-spacing:0;text-align:left}'||unistr('\000a')||
'	.table1 th.time {border-bottom: none;fon';

c1:=c1||'t: bold 89% verdana;color:#ff9c00;vertical-align:top;padding: 3px}'||unistr('\000a')||
'	.table1 td {border: 1px solid #ddd;font-size: 9pt;padding: 3px;vertical-align:top}'||unistr('\000a')||
'	.table1 td a {display:block;width:auto;font-weight:bold}'||unistr('\000a')||
'	.table1 td a:link, .table1 td a:visited, .table1 td a:hover, .table1 td a:active {border:none;text-decoration:none}'||unistr('\000a')||
'	.table1 th.sub {background: #aaa}'||unistr('\000a')||
'	.table1 th.sub2 {background: #bbb;colo';

c1:=c1||'r:#000}'||unistr('\000a')||
'	.table1 td ul li {background: #fff}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<!--[if lte IE 6]>'||unistr('\000a')||
'<link rel="stylesheet" type="text/css" href="#WORKSPACE_IMAGES#ie6_or_less.css" />'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'<link rel="stylesheet" href="#WORKSPACE_IMAGES#apex_3_1.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="/i/css/apex_ie_3_1.css" type="text/css" /><![endif]-->'||unistr('\000a')||
''||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#  id="type-f" >'||unistr('\000a')||
'';

c2:=c2||'		<div id="poweredby">#REGION_POSITION_05#</div>		'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'#FORM_CLOSE#	'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<div id="wrap">'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'	<div id="header">'||unistr('\000a')||
'		<div id="site-name">&SITENAME.</div>'||unistr('\000a')||
'		<div id="search">#REGION_POSITION_03#<div class="t3NavBar">#NAVIGATION_BAR#</div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'#REGION_POSITION_07#'||unistr('\000a')||
'	</div>'||unistr('\000a')||
'	<div id="content-wrap">'||unistr('\000a')||
'		<div id="utility">'||unistr('\000a')||
'#REGION_POSITION_08#'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'		'||unistr('\000a')||
'		<div id="content">'||unistr('\000a')||
'			<div id="breadcrumb">'||unistr('\000a')||
'			#REGION_POSITION_01#'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'<div class="t3Messages" align="ce';

c3:=c3||'nter">#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE# #SUCCESS_MESSAGE#</div>#BOX_BODY#'||unistr('\000a')||
'#REGION_POSITION_02#'||unistr('\000a')||
'			<div id="footer">'||unistr('\000a')||
'			<p>A note here to go in the footer</p>'||unistr('\000a')||
'			<p><a href="javascript:openForm(''0'');">&T_CONTACT_US.</a> | <a href="#">Privacy</a> | <a href="#">Links</a></p>'||unistr('\000a')||
'			</div>'||unistr('\000a')||
'		</div>'||unistr('\000a')||
'		<div id="sidebar"><div class="featurebox">#REGION_POSITION_06#</div>			'||unistr('\000a')||
'			<div class="featurebo';

c3:=c3||'x">#REGION_POSITION_04#</div>'||unistr('\000a')||
'		</div>';

wwv_flow_api.create_template(
  p_id=> 290290061261354375 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Jquery tabs FunEurope One Level Tabs',
  p_body_title=> '#BODY_TITLE#',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'||unistr('\000a')||
'',
  p_current_tab=> '<td class="t3LeftTabForeSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'<td valign="middle" nowrap="nowrap" class="t3TabForegroundText" style="padding:0px 5px;">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td align="right" class="t3RightTabForeCurve" width="8" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td class="t3LeftTabBgSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'<td valign="middle" nowrap="nowrap" class="t3TabBackgroundText" style="padding:0px 5px;"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td align="right" class="t3RightTabBgCurve" width="8" height="19" nowrap="nowrap"><br /></td>'||unistr('\000a')||
'',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" summary=""',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 7119700868474371
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 7119700868474371 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button'
 ,p_template => 
'<table class="t1Button" cellspacing="0" cellpadding="0" border="0"  summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_1/button_left.gif" alt="" width="4" height="24" /></a></td>'||unistr('\000a')||
'<td class="t1C"><a href="#LINK#">#LABEL#</a></td>'||unistr('\000a')||
'<td class="t1R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_1/button_right.gif" width="4" height="24" alt="" /></a></td>'||unistr('\000a')||
'</tr'||
'>'||unistr('\000a')||
'</table>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 1
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_alternative_1
prompt  ......Button Template 7119815575474376
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 7119815575474376 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button, Alternative 1'
 ,p_template => 
'<table class="t1ButtonAlternative1" cellspacing="0" cellpadding="0" border="0"  summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_1/button_alt1_left.gif" alt="" width="11" height="20" /></a></td>'||unistr('\000a')||
'<td class="t1C"><a href="#LINK#">#LABEL#</a></td>'||unistr('\000a')||
'<td class="t1R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_1/button_alt1_right.gif" width="11" height="20"'||
' alt="" /></a></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 4
 ,p_theme_id => 1
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_alternative_2
prompt  ......Button Template 7119906650474377
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 7119906650474377 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button, Alternative 2'
 ,p_template => 
'<table class="t1ButtonAlternative2" cellspacing="0" cellpadding="0" border="0"  summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_1/button_alt2_left.gif" alt="" width="11" height="20" /></a></td>'||unistr('\000a')||
'<td class="t1C"><a href="#LINK#">#LABEL#</a></td>'||unistr('\000a')||
'<td class="t1R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_1/button_alt2_right.gif" width="11" height="20"'||
' alt="" /></a></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 5
 ,p_template_comment => 'XP Square FFFFFF'
 ,p_theme_id => 1
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_alternative_3
prompt  ......Button Template 7120030882474377
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 7120030882474377 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button, Alternative 3'
 ,p_template => 
'<table class="t1ButtonAlternative3" cellspacing="0" cellpadding="0" border="0"  summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_1/button_alt3_left.gif" alt="" width="6" height="25" /></a></td>'||unistr('\000a')||
'<td class="t1C"><a href="#LINK#">#LABEL#</a></td>'||unistr('\000a')||
'<td class="t1R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_1/button_alt3_right.gif" width="6" height="25" a'||
'lt="" /></a></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 2
 ,p_template_comment => 'Standard Button'
 ,p_theme_id => 1
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/copy_of_button
prompt  ......Button Template 109473488053385499
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 109473488053385499 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Copy of Button'
 ,p_template => 
'<table style="display:inline;margin-left:6px;" cellpadding="0" cellspacing="0" border="0" summary=""><tr>'||unistr('\000a')||
'<td style="width:9px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_3/button_left2.gif" border="0" height="25" width="11" alt=""/></a></td>'||unistr('\000a')||
'<td class="t3ButtonHtmlMiddle" nowrap="nowrap"><a href="#LINK#" class="t3ButtonHtmlMiddle">#LABEL#</a></td>'||unistr('\000a')||
'<td style="width:9px;"><a href="#LINK'||
'#"><img src="#IMAGE_PREFIX#themes/theme_3/button_right2.gif" border="0" height="25" width="11" alt=""/></a></td>'||unistr('\000a')||
'</tr></table>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_template_comment => 'BLAF style, rounded on both sides.'||unistr('\000a')||
''
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/copy_of_button_alternative_1
prompt  ......Button Template 109473565767385511
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 109473565767385511 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Copy of Button, Alternative 1'
 ,p_template => 
'<div style="margin-right:4px;"><table cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td style="width:11px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#button_left.gif" border="0" alt="" /></a></td>'||unistr('\000a')||
'<td class="t3ButtonHtmlLeft" nowrap="nowrap"><a href="#LINK#" class="t3ButtonHtml">#LABEL#</a></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></div>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 4
 ,p_template_comment => 'BLAF style, rounded on left side only. Uses classes in platform2.css or /css/einstein.css'
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/copy_of_button_alternative_2
prompt  ......Button Template 109473772813385522
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 109473772813385522 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Copy of Button, Alternative 2'
 ,p_template => 
'<div style="margin-right:4px;float:right;">'||unistr('\000a')||
'   <table cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'           <tr>'||unistr('\000a')||
'               <td class="t3ButtonHtmlRight" nowrap="nowrap"><a href="#LINK#" class="t3ButtonHtml">#LABEL#</a></td>'||unistr('\000a')||
'               <td style="width:11px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#button_right.gif" border="0" alt="" /></a></td>'||unistr('\000a')||
'           </tr>'||unistr('\000a')||
'   </table>'||unistr('\000a')||
'</'||
'div>'||unistr('\000a')||
''
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 5
 ,p_template_comment => 'BLAF style, rounded on right side only. Uses classes in platform2.css or /css/einstein.css'
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/copy_of_button_alternative_3
prompt  ......Button Template 109473965450385522
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 109473965450385522 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Copy of Button, Alternative 3'
 ,p_template => 
'<table class="t3ButtonAlternative3" cellspacing="0" cellpadding="0" border="0"  summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3L"><img src="#IMAGE_PREFIX#themes/theme_3/button_xp_left_FFFFFF.gif" alt="" width="4" height="24" /></td>'||unistr('\000a')||
'<td class="t3C"><a href="#LINK#">#LABEL#</a></td>'||unistr('\000a')||
'<td class="t3R"><img src="#IMAGE_PREFIX#themes/theme_3/button_xp_right_FFFFFF.gif" width="4" height="24" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 2
 ,p_template_comment => 'Standard Button'
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/html_button
prompt  ......Button Template 198972972775743711
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 198972972775743711 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'html Button'
 ,p_template => 
'<input type="button" onclick="#LINK#" value="#LABEL#" class="f-submit">'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 7120112032474377
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7120112032474377 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1BorderlessRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##COPY##CREATE##CREATE2##EXPAND##HELP#</td>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body" colspan="2">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Borderless Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 7
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||unistr('\000a')||
''||unistr('\000a')||
'TITLE=YES'||unistr('\000a')||
'BUTTONS=YES'||unistr('\000a')||
'100% WIDTH=NO'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7120112032474377 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 7120205824474383
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7120205824474383 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1BracketedRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##COPY##CREATE##CREATE2##EXPAND##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td colspan="2"><table cellpadding="0" cellspacing="0" border="0" summary="" wi'||
'dth="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1bracket"><img src="" height="5" width="1" alt="#IMAGE_PREFIX#themes/theme_1/1px_trans.gif" /></td>'||unistr('\000a')||
'<td rowspan="3" class="t1Body">#BODY#</td>'||unistr('\000a')||
'<td class="t1bracket"><img src="" height="5" width="1" alt="#IMAGE_PREFIX#themes/theme_1/1px_trans.gif" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_1/1px_trans.gif" height="1" width="1" alt="" /></td>'||unistr('\000a')||
'<td><img sr'||
'c="#IMAGE_PREFIX#themes/theme_1/1px_trans.gif" height="1" width="1" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1bracket"><img src="" height="5" width="1" alt="#IMAGE_PREFIX#themes/theme_1/1px_trans.gif" /></td>'||unistr('\000a')||
'<td class="t1bracket"><img src="" height="5" width="1" alt="#IMAGE_PREFIX#themes/theme_1/1px_trans.gif" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Bracketed Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 18
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content with a bracket UI.'||unistr('\000a')||
''||unistr('\000a')||
'TITLE=YES'||unistr('\000a')||
'BUTTONS=YES'||unistr('\000a')||
'100% WIDTH=NO'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7120205824474383 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 7120315392474383
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7120315392474383 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="t1BreadcrumbRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Breadcrumb Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 6
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7120315392474383 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 7120415492474384
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7120415492474384 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1ButtonRegionwithTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr><td class="t1RegionHeader">#TITLE#</td></tr>'||unistr('\000a')||
'<tr><td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##COPY##EXPAND##HELP#<img src="#IMAGE_PREFIX#/themes/theme_1/1px_trans.gif" height="1" width="600" styl'||
'e="display:block;" alt="" /></td></tr>'||unistr('\000a')||
'</table>#BODY#'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Button Region with Title'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 4
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7120415492474384 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 7120511456474384
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7120511456474384 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1ButtonRegionwithoutTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr><td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#<img src="#IMAGE_PREFIX#/themes/theme_1/1px_trans.gif" height="1" width="600" style="display:block;" alt="" /></td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'#BODY#'
 ,p_page_plug_template_name => 'Button Region without Title'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 17
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7120511456474384 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_list
prompt  ......region template 7120623991474384
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7120623991474384 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1ListRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body" colspan="2"><table cellpadding="0" cellspacing="0" border="0" summary="" ><tr><t'||
'd valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/chart.gif" alt=""/></td>'||unistr('\000a')||
'<td>#BODY#</td></tr></table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Chart List'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7120623991474384 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 7120717712474384
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7120717712474384 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1ChartRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<t'||
'd class="t1Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Chart Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
 ,p_theme_class_id => 30
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7120717712474384 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 7120811335474384
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7120811335474384 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1FormRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_1/1px_trans.gif" height="1" width="400" alt="" /><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVI'||
'OUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body">#BODY#<img src="#IMAGE_PREFIX#/themes/theme_1/1px_trans.gif" height="1" width="600" style="display:block;" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Form Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 1
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7120811335474384 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 7120915371474384
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7120915371474384 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1HideandShowRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#<a style="margin-left:5px;" href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_1/ro'||
'llup_plus_dgray.gif'',''#IMAGE_PREFIX#themes/theme_1/rollup_minus_dgray.gif'');" class="t1HideandShowRegionLink"><img src="#IMAGE_PREFIX#themes/theme_1/rollup_plus_dgray.gif" '||unistr('\000a')||
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a></td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body"><div class="t1H'||
'ide" id="region#REGION_SEQUENCE_ID#">#BODY#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Hide and Show Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 1
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Gray Head, white body'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7120915371474384 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 7121004828474385
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7121004828474385 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="t1NavigationRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Navigation Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 5
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7121004828474385 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 7121130501474385
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7121130501474385 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1NavigationRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Navigation Region, Alternative 1'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 16
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7121130501474385 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
prompt  ......region template 7121200426474385
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7121200426474385 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table summary="" cellpadding="0" cellspacing="0" border="0" class="t1RegionwithoutButtonsandTitles" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Region without Buttons and Titles'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 19
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7121200426474385 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 7121315014474386
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7121315014474386 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1RegionwithoutTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Region without Title'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 11
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7121315014474386 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_filter_single_row
prompt  ......region template 7121408941474386
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7121408941474386 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tbody>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>'||unistr('\000a')||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_f'||
'ind.png" /></td>'||unistr('\000a')||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>'||unistr('\000a')||
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>'||unistr('\000a')||
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="'||
'apex_finderbar_left_middle"><br /></td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Report Filter - Single Row'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 31
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7121408941474386 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_list
prompt  ......region template 7121519474474386
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7121519474474386 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1ListRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body" colspan="2"><table cellpadding="0" cellspacing="0" border="0" summary="" ><tr>'||unistr('\000a')||
'<'||
'td valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/report.gif" alt=""/></td>'||unistr('\000a')||
'<td>#BODY#</td></tr></table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Report List'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7121519474474386 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 7121610428474386
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7121610428474386 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1ReportsRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body" colspan="2">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Reports Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7121610428474386 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 7121725719474387
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7121725719474387 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1ReportsRegion100Width" width="100%" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body" colspan="2">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Reports Region 100% Width'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
 ,p_theme_class_id => 13
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7121725719474387 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 7121824636474387
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7121824636474387 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1ReportsRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body" colspan="2">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Reports Region, Alternative 1'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
 ,p_theme_class_id => 10
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7121824636474387 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 7121907163474387
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7121907163474387 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellspacing="0" cellpadding="0" border="0" class="t1SidebarRegion" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# align="right">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1EndCaps" valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/left_curve.gif" width="10" height="20" alt="" /></td>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1EndCaps" valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/right_cur'||
've.gif" width="10" height="20" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td colspan="3" class="t1Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table><br />'
 ,p_page_plug_template_name => 'Sidebar Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 1
 ,p_theme_class_id => 2
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => '<table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#FF0000" height="16">'||unistr('\000a')||
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">'||unistr('\000a')||
'              <tr>'||unistr('\000a')||
'                <td align=middle valign="top">'||unistr('\000a')||
'                  <div align="center">'||unistr('\000a')||
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">'||unistr('\000a')||
'                      <b>#TITLE# </b></font></div>'||unistr('\000a')||
'                </td>'||unistr('\000a')||
'              </tr>'||unistr('\000a')||
'            </table>'||unistr('\000a')||
'          </td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'   <tr>'||unistr('\000a')||
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />'||unistr('\000a')||
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">'||unistr('\000a')||
'              <tr>'||unistr('\000a')||
'                <td colspan="2">'||unistr('\000a')||
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">'||unistr('\000a')||
'                    <tr>'||unistr('\000a')||
'                      <td>&nbsp;</td>'||unistr('\000a')||
'                      <td valign="top" width="106">'||unistr('\000a')||
'                        <P><FONT face="arial, helvetica" size="1">'||unistr('\000a')||
'                            #BODY#'||unistr('\000a')||
'                           </font>'||unistr('\000a')||
'                        </P>'||unistr('\000a')||
'                      </td>'||unistr('\000a')||
'                    </tr>'||unistr('\000a')||
'                  </table>'||unistr('\000a')||
'            </table>'||unistr('\000a')||
'          </td>'||unistr('\000a')||
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'      </table>'||unistr('\000a')||
'      <table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7121907163474387 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 7122007782474388
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7122007782474388 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellspacing="0" cellpadding="0" border="0" class="t1SidebarRegionAlternative1" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# align="right">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1EndCaps" valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/left_curve.gif" width="10" height="20" alt="" /></td>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1EndCaps" valign="top"><img src="#IMAGE_PREFIX#themes/theme'||
'_1/right_curve.gif" width="10" height="20" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td colspan="3" class="t1Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table><br />'
 ,p_page_plug_template_name => 'Sidebar Region, Alternative 1'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 1
 ,p_theme_class_id => 3
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7122007782474388 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 7122103706474388
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7122103706474388 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1WizardRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body" colspan="2">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Wizard Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 12
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7122103706474388 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 7122200208474388
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 7122200208474388 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t1WizardRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t1ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1Body" colspan="2"><table summary="" cellpadding="0" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||
''||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_1/wizard_icon.gif" alt=""/></td>'||unistr('\000a')||
'<td width="100%" valign="top">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Wizard Region with Icon'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 1
 ,p_theme_class_id => 20
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 7122200208474388 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_borderless_region
prompt  ......region template 109464488961376360
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109464488961376360 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3BorderlessRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3Body" colspan="2">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Borderless Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 7
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109464488961376360 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_bracketed_region
prompt  ......region template 109464685608376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109464685608376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3BracketedRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'    <td class="t3RegionHeader">#TITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'    <td class="t3Bracket">'||unistr('\000a')||
'        <table summary=""><tr><td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'        </tr></tab'||
'le>'||unistr('\000a')||
'        </td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'    <td class="t3Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Bracketed Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 18
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109464685608376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 109464990249376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109464990249376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => ' Breadcrumb Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 6
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109464990249376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_button_region_with_title
prompt  ......region template 109465290756376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109465290756376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ButtonRegionwithTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr><td class="t3RegionHeader">#TITLE#</td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'</table>#BODY#'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Copy of Button Region with Title'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 4
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109465290756376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_button_region_without_title
prompt  ......region template 109465590100376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109465590100376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellspacing="0" border="0" summary="" class="t3ButtonRegionwithoutTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'#BODY#'
 ,p_page_plug_template_name => 'Copy of Button Region without Title'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 17
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109465590100376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_chart_region
prompt  ......region template 109465891224376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109465891224376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ChartRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</ta'||
'ble></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Chart Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 101
 ,p_theme_class_id => 30
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109465891224376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_form_region
prompt  ......region template 109466170396376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109466170396376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t3FormRegion" cellspacing="0"  border="0" summary="layout" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td align="right" class="t3ButtonHolder">'||unistr('\000a')||
'<table cellspacing="0" border="0" cellpadding="0" align="right" summary="Buttons">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</t'||
'd>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td></tr>'||unistr('\000a')||
'<tr class="t3Body">'||unistr('\000a')||
'<td colspan="2" class="t3Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Form Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 8
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109466170396376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_hide_and_show_region
prompt  ......region template 109466461308376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109466461308376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3HideandShowRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3RegionHeader"><a style="margin-left:5px;" href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_3/rollup_pl'||
'us_dgray.gif'',''#IMAGE_PREFIX#themes/theme_3/rollup_minus_dgray.gif'');" class="t3HideandShowRegionLink"><img src="#IMAGE_PREFIX#themes/theme_3/rollup_plus_dgray.gif" '||unistr('\000a')||
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a>#TITLE#</td>'||unistr('\000a')||
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="'||
't3Body"><div class="t3Hide" id="region#REGION_SEQUENCE_ID#">#BODY#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Hide and Show Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 1
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Gray Head, white body'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109466461308376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_list_region_with_icon_chart_list
prompt  ......region template 109466775058376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109466775058376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ListRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3Body" colspan="2"><table cellpadding="0" cellspacing="0" border'||
'="0" summary="" ><tr><td valign="top"><img src="#IMAGE_PREFIX#themes/theme_3/chart.gif" alt=""/></td>'||unistr('\000a')||
'<td>#BODY#</td></tr></table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of List Region with Icon - Chart List'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 101
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109466775058376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_list_region_with_icon_report_list
prompt  ......region template 109467080121376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109467080121376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ListRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3Body" colspan="2"><table cellpadding="0" cellspacing="0" border'||
'="0" summary="" ><tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_3/report.gif" alt=""/></td>'||unistr('\000a')||
'<td>#BODY#</td></tr></table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of List Region with Icon - Report List'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 101
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109467080121376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_navigation_region
prompt  ......region template 109467364047376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109467364047376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="t3NavigationRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Copy of Navigation Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 5
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109467364047376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_navigation_region_alternative_1
prompt  ......region template 109467664013376443
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109467664013376443 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="t3NavigationRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<span class="t3RegionHeader">#TITLE#</span>'||unistr('\000a')||
'#BODY#</div>'
 ,p_page_plug_template_name => 'Copy of Navigation Region, Alternative 1'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 16
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109467664013376443 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_region_without_buttons_and_titles
prompt  ......region template 109467979456376444
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109467979456376444 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table summary="" cellpadding="0" cellspacing="0" border="0" class="t3RegionwithoutButtonsandTitles" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Copy of Region without Buttons and Titles'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 19
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109467979456376444 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_region_without_title
prompt  ......region template 109468271158376444
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109468271158376444 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td align="right">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td align="left" class="t3instructiontext">#BODY#</td></tr></table>'
 ,p_page_plug_template_name => 'Copy of Region without Title'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 11
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109468271158376444 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_report_filter_single_row
prompt  ......region template 109468585258376444
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109468585258376444 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tbody>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>'||unistr('\000a')||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_f'||
'ind.png" /></td>'||unistr('\000a')||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>'||unistr('\000a')||
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>'||unistr('\000a')||
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="'||
'apex_finderbar_left_middle"><br /></td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Report Filter - Single Row'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 31
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109468585258376444 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 109468863912376444
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109468863912376444 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table width="100%" border="0" cellspacing="0" cellpadding="0" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t3ReportsRegion" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="bottom" class="t3RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t3ButtonHolder" align="right">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr class="t3instructiontext">'||unistr('\000a')||
'<td colspan='||
'"2" valign="top" class="t3Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Reports Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 9
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109468863912376444 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_reports_region_100_width
prompt  ......region template 109469193403376444
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109469193403376444 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" width="100%" class="t3ReportsRegion100Width" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3Body" colspan="2">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Reports Region 100% Width'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 101
 ,p_theme_class_id => 13
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109469193403376444 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_reports_region_alternative_1
prompt  ......region template 109469466755376444
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109469466755376444 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ReportsRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3RegionHeader">#TITLE#</td>'||unistr('\000a')||
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3Body" colspan="2">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Reports Region, Alternative 1'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 101
 ,p_theme_class_id => 10
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109469466755376444 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_sidebar_region
prompt  ......region template 109469782329376444
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109469782329376444 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table cellspacing="0" cellpadding="0" border="0" class="t3SidebarRegion" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<th class="L" width="10"><br /></th>'||unistr('\000a')||
'<th class="C">#TITLE#</th>'||unistr('\000a')||
'<th class="R" width="10"><br /></th>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td colspan="3" class="B">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Sidebar Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 101
 ,p_theme_class_id => 2
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109469782329376444 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_sidebar_region_alternative_1
prompt  ......region template 109470088355376444
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109470088355376444 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table border="0" cellpadding="0" cellspacing="0" width="218" bgcolor="#f7f7e7" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'  <tr><td colspan="3"><img src="#IMAGE_PREFIX#upperbox.gif" width="218" height="14" border="0" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td width="1" bgcolor="#cccc99"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="1" alt="" /></td>'||unistr('\000a')||
'    <td width="216" valign="t'||
'op">'||unistr('\000a')||
'      <table border="0" cellpadding="0" cellspacing="2" width="216" summary="">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'           <td width="2"><br /></td>'||unistr('\000a')||
'          <td width="212"><img src="#IMAGE_PREFIX#info_icon.gif" alt="" /><span class="tab3heading">#TITLE#</span><br />'||unistr('\000a')||
'            <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#cccc99" summary="">'||unistr('\000a')||
'              <tr>'||unistr('\000a')||
'                <td '||
'width="100%" height="1"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="1" alt="" /></td>'||unistr('\000a')||
'              </tr>'||unistr('\000a')||
'            </table>'||unistr('\000a')||
'          </td>'||unistr('\000a')||
'         <td width="2"><br /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'           <td width="2"><br /></td>'||unistr('\000a')||
'          <td width="212">'||unistr('\000a')||
'            <div class="infobox">#BODY#</div>'||unistr('\000a')||
'          </td>'||unistr('\000a')||
'         <td width="2"><br /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'      </'||
'table>'||unistr('\000a')||
'    </td>'||unistr('\000a')||
'    <td width="1" bgcolor="#cccc99"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="1" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td colspan="3"><img src="#IMAGE_PREFIX#lowerbox.gif" width="218" height="13" border="0" alt="" /></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br />'
 ,p_page_plug_template_name => 'Copy of Sidebar Region, Alternative 1'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 3
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109470088355376444 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_wizard_region
prompt  ......region template 109470362682376445
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109470362682376445 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t3WizardRegion" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# bgcolor="#cccc99">'||unistr('\000a')||
'    <tr class="t3RegionHeader" bgcolor="#cccc99">'||unistr('\000a')||
'        <td class="t3RegionTitle">#TITLE#</td>'||unistr('\000a')||
'        <td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'    </tr>'||unistr('\000a')||
'    <tr>'||unistr('\000a')||
'        <td colspan="99" class="t3Body"'||
'>#BODY#</td>'||unistr('\000a')||
'    </tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Wizard Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 12
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109470362682376445 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/copy_of_wizard_region_with_icon
prompt  ......region template 109470684706376445
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 109470684706376445 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t3WizardRegion" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# bgcolor="#cccc99">'||unistr('\000a')||
'    <tr class="t3RegionHeader" bgcolor="#cccc99">'||unistr('\000a')||
'        <td class="t3RegionTitle">#TITLE#</td>'||unistr('\000a')||
'        <td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'    </tr>'||unistr('\000a')||
'    <tr>'||unistr('\000a')||
'        <td colspan="99" class="t3Body"'||
'>'||unistr('\000a')||
'            <table summary="">'||unistr('\000a')||
'                <tr><td><img src="#IMAGE_PREFIX#htmldb/builder/confirmicon_pagetitle.gif" alt="Confirm" /></td>'||unistr('\000a')||
'                <td>#BODY#</td>'||unistr('\000a')||
'            </tr></table>'||unistr('\000a')||
'        </td>'||unistr('\000a')||
'    </tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Copy of Wizard Region with Icon'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 101
 ,p_theme_class_id => 20
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 109470684706376445 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 7122309206474388
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<table class="t1ButtonList" cellspacing="0" cellpadding="0" border="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1L"><img src="#IMAGE_PREFIX#/themes/theme_1/list_button_left_hl.gif" alt="" /></td>'||unistr('\000a')||
'<td class="t1C"><a href="#LINK#" style="color:#FFFFFF;">#TEXT#</a></td>'||unistr('\000a')||
'<td class="t1R"><img src="#IMAGE_PREFIX#/themes/theme_1/list_button_right_hl.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>';

t2:=t2||'<table class="t1ButtonList" cellspacing="0" cellpadding="0" border="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1L"><img src="#IMAGE_PREFIX#/themes/theme_1/list_button_left.gif" alt="" /></td>'||unistr('\000a')||
'<td class="t1NC"><a href="#LINK#">#TEXT#</a></td>'||unistr('\000a')||
'<td class="t1R"><img src="#IMAGE_PREFIX#/themes/theme_1/list_button_right.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7122309206474388 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 1,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="t1ButtonList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanded
prompt  ......list template 7122428988474392
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>7122428988474392 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanded',
  p_theme_id  => 1,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanding
prompt  ......list template 7122530980474393
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>7122530980474393 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanding',
  p_theme_id  => 1,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 7122627867474394
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t1current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ><br />#TEXT#</td>';

t2:=t2||'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a><br /><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7122627867474394 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 1,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<table cellspacing="0" cellpadding="0" border="0" class="t1HorizontalImageswithLabelList" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 7122710883474394
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t1current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7122710883474394 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 1,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<div class="t1HorizontalLinksList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu
prompt  ......list template 7122820613474394
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>';

wwv_flow_api.create_list_template (
  p_id=>7122820613474394 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu',
  p_theme_id  => 1,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image
prompt  ......list template 7122905432474395
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>7122905432474395 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image',
  p_theme_id  => 1,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image_custom_1
prompt  ......list template 7123026972474396
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>7123026972474396 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image (Custom 1)',
  p_theme_id  => 1,
  p_theme_class_id => 9,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 7123115656474397
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a class="t1current" href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7123115656474397 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 1,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<ul class="t1TabbedNavigationList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 7123221896474397
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td class="t1current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / >#TEXT#</td></tr>';

t2:=t2||'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / >#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7123221896474397 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 1,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary="0" class="t1VerticalImagesList">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list_custom_2
prompt  ......list template 7123322983474398
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>'||unistr('\000a')||
'';

t2:=t2||'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>'||unistr('\000a')||
'';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7123322983474398 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List (Custom 2)',
  p_theme_id  => 1,
  p_theme_class_id => 10,
  p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >',
  p_list_template_after_rows=>'</table>'||unistr('\000a')||
'',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 7123427413474398
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t1current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7123427413474398 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 1,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="t1VerticalOrderedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 7123517233474398
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t1navcurrent">#TEXT#</a>';

t2:=t2||'<a href="#LINK#" class="t1nav">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7123517233474398 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 1,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<div class="t1VerticalSidebarList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 7123629466474399
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t1current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7123629466474399 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="t1VerticalUnorderedListwithBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullet
prompt  ......list template 7123700748474399
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t1current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7123700748474399 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullet',
  p_theme_id  => 1,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="t1VerticalUnorderedListwithoutBullet">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list
prompt  ......list template 7123807599474399
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td><div class="t1current">#TEXT#</div><img src="#IMAGE_PREFIX#themes/theme_1/arrow_down.gif" alt="Down" /></td></tr>';

t2:=t2||'<tr><td><div>#TEXT#</div><img src="#IMAGE_PREFIX#themes/theme_1/arrow_down.gif" alt="Down" /></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>7123807599474399 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 1,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t1WizardProgressList">',
  p_list_template_after_rows=>'<tr><td>&DONE.</td></tr>'||unistr('\000a')||
'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/funeurope_menu_with_sublist
prompt  ......list template 109212183168805929
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li class="active"><a href="#LINK#">#TEXT#</a>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a>';

t7:=t7||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>109212183168805929 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'FunEurope Menu with Sublist',
  p_theme_id  => 101,
  p_theme_class_id => 9,
  p_list_template_before_rows=>'<ul id="nav">',
  p_list_template_after_rows=>'</ul>',
  p_before_sub_list=>'<ul>',
  p_after_sub_list=>'</li></ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/copy_of_dhtml_menu_with_sublist
prompt  ......list template 109474986446397161
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>109474986446397161 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Copy of DHTML Menu with Sublist',
  p_theme_id  => 101,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/copy_of_pull_down_menu_with_image
prompt  ......list template 109475487119397175
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>109475487119397175 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Copy of Pull Down Menu with Image',
  p_theme_id  => 101,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/copy_of_vertical_unordered_list_with_bullets
prompt  ......list template 109476490188397176
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>109476490188397176 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Copy of Vertical Unordered List with Bullets',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="t3noIndent">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/copy_of_vertical_unordered_list_without_bullet
prompt  ......list template 109476772258397176
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t3current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>109476772258397176 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Copy of Vertical Unordered List without Bullet',
  p_theme_id  => 101,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="t3VerticalUnorderedListwithoutBullet">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/borderless
prompt  ......report template 7123925190474400
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t1data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 7123925190474400 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>'||unistr('\000a')||
'<td><table class="t1borderless" cellpadding="0" border="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t1header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 7123925190474400 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 7124014181474407
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t1data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 7124014181474407 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table cellpadding="0" cellspacing="0" border="0" class="t1HorizontalBorder" summary="">',
  p_row_template_after_rows =>'</table><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t1header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>'||unistr('\000a')||
'',
  p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 1,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 7124014181474407 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 7124122951474408
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 7124122951474408 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><ul class="t1OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'NOT_CONDITIONAL',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'NOT_CONDITIONAL',
  p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 1,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 7124122951474408 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'OMIT');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 7124227436474409
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t1data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 7124227436474409 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t1standard">',
  p_row_template_after_rows =>'</table><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t1header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 1,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 7124227436474409 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_ppr
prompt  ......report template 7124328461474409
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t1data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 7124328461474409 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t1standard">',
  p_row_template_after_rows =>'</table><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<script language=JavaScript type=text/javascript>'||unistr('\000a')||
'<!--'||unistr('\000a')||
'init_htmlPPRReport(''#REGION_ID#'');'||unistr('\000a')||
''||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>'||unistr('\000a')||
'</htmldb:#REGION_ID#>'||unistr('\000a')||
'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t1header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"  class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"  class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"  class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"  class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 1,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> 'This is a deprecated template.'||unistr('\000a')||
''||unistr('\000a')||
'Reports using this template should be switched to to a standard template and the Enable Partial Page Refresh attribute should be enabled.');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 7124328461474409 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 7124419450474410
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t1data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2:=c2||'<td class="t1dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 7124419450474410 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><table border="0" cellpadding="0" cellspacing="0" summary="" class="t1standardalternatingrowcolors">',
  p_row_template_after_rows =>'</table><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t1header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>'||unistr('\000a')||
'',
  p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 1,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 7124419450474410 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs
prompt  ......report template 7124524120474410
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="t1header">#COLUMN_HEADER#</th><td class="t1data">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 7124524120474410 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t1ValueAttributePairs">',
  p_row_template_after_rows =>'</table><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 1,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/copy_of_borderless
prompt  ......report template 109470971430380754
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t3data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 109470971430380754 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Copy of Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><table class="t3borderless" cellpadding="0" border="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'#PAGINATION#'||unistr('\000a')||
'</table><span class="left">#EXTERNAL_LINK##CSV_LINK#</span></td></tr></table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t3header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '.t1reportborderless{ }'||unistr('\000a')||
'.t1reportborderless .t1reportheader{ }'||unistr('\000a')||
'.t1reportborderless .t1reportdata{ }');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 109470971430380754 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/copy_of_horizontal_border
prompt  ......report template 109471176119380768
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t3data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 109471176119380768 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Copy of Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table cellpadding="0" cellspacing="0" border="0" class="t3horizontalborder" summary="">',
  p_row_template_after_rows =>'<tr>'||unistr('\000a')||
'    <td colspan="99" class="t3afterrows">'||unistr('\000a')||
'        <span class="left">#EXTERNAL_LINK##CSV_LINK#</span>'||unistr('\000a')||
'        <table style="float:right;text-align:right;" summary="pagination"><tr><td></td></tr>#PAGINATION#</table>'||unistr('\000a')||
'    </td>'||unistr('\000a')||
'</tr></table></td></tr></table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t3header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 101,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 109471176119380768 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/copy_of_one_column_unordered_list
prompt  ......report template 109471476211380769
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 109471476211380769 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Copy of One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><ul class="t1OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul>#EXTERNAL_LINK##CSV_LINK#</td></tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'NOT_CONDITIONAL',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'NOT_CONDITIONAL',
  p_theme_id  => 101,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 109471476211380769 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'OMIT');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/copy_of_standard_report
prompt  ......report template 109471781502380770
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t3data" #ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 109471781502380770 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Copy of Standard Report',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="t3standard" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||unistr('\000a')||
'',
  p_row_template_after_rows =>'<tr>'||unistr('\000a')||
'    <td colspan="99" class="t3afterrows">'||unistr('\000a')||
'        <span class="left">#EXTERNAL_LINK##CSV_LINK#</span>'||unistr('\000a')||
'        <table style="float:right;text-align:right;" summary="pagination">#PAGINATION#</table>'||unistr('\000a')||
'    </td>'||unistr('\000a')||
'</tr></table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t3header" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_row_style_mouse_over=>'#EEEECC',
  p_row_style_checked=>'#EEEECC',
  p_theme_id  => 101,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 109471781502380770 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_report_ppr
prompt  ......report template 109472063476380770
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t3data" #ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 109472063476380770 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> ' Standard Report (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table summary="" border="0" cellpadding="0" border="0"><tr><td colspan="2"><table class="t3standard" summary="" border="0" cellpadding="0" border="0" style="table-layout:fixed;width:100%;word-wrap:break-word;">',
  p_row_template_after_rows =>'</tr></table></td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'   <td valign="top">#EXTERNAL_LINK##CSV_LINK#</td>'||unistr('\000a')||
'   <td valign="top" align="right"><table summary="" align="right">#PAGINATION#</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''||unistr('\000a')||
'<script language=JavaScript type=text/javascript>'||unistr('\000a')||
'<!--'||unistr('\000a')||
'init_htmlPPRReport(''#REGION_ID#'');'||unistr('\000a')||
''||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>'||unistr('\000a')||
'</htmldb:#REGION_ID#>'||unistr('\000a')||
'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t3header" style="border:1px solid #D1D1D1;" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="instructiontext">#TEXT#</span>',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>',
  p_row_style_mouse_over=>'#EEEECC',
  p_row_style_checked=>'#EEEECC',
  p_theme_id  => 101,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 109472063476380770 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/copy_of_standard_report_with_alt_row_colors
prompt  ......report template 109472388114380771
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t3data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2:=c2||'<td class="t3dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c3:=c3||'<td bgcolor="red" class="alt"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 109472388114380771 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Copy of Standard Report (with alt row colors)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="t3standardalternatingrowcolors" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||unistr('\000a')||
'',
  p_row_template_after_rows =>'<tr>'||unistr('\000a')||
'    <td colspan="99" class="t3afterrows">'||unistr('\000a')||
'        <span class="left">#EXTERNAL_LINK##CSV_LINK#</span>'||unistr('\000a')||
'        <table style="float:right;text-align:right;" summary="pagination">#PAGINATION#</table>'||unistr('\000a')||
'    </td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t3header" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'EVEN_ROW_NUMBERS',
  p_row_template_display_cond2=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'EVEN_ROW_NUMBERS',
  p_theme_id  => 101,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 109472388114380771 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/copy_of_value_attribute_pairs
prompt  ......report template 109472672674380776
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="t3header">#COLUMN_HEADER#</th><td class="t3data">#COLUMN_VALUE#</td></tr>'||unistr('\000a')||
'';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 109472672674380776 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Copy of Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||unistr('\000a')||
''||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ValueAttributePairs">',
  p_row_template_after_rows =>'</table>#EXTERNAL_LINK#</td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 101,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 109472672674380776 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'<tr><td colspan="2" class="t3seperate"><hr /></td></tr>'||unistr('\000a')||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/copy_of_ir_look_like_ppr
prompt  ......report template 294802868297272642
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t3data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 294802868297272642 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Copy of IR Look like PPR',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="apexir_WORKSHEET_DATA" id="report_data_#REGION_STATIC_ID#">',
  p_row_template_after_rows =>'</table><div class="t3CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table><script language=JavaScript type=text/javascript>'||unistr('\000a')||
'<!--'||unistr('\000a')||
'init_htmlPPRReport(''#REGION_ID#'');'||unistr('\000a')||
''||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>'||unistr('\000a')||
'</htmldb:#REGION_ID#>'||unistr('\000a')||
'',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th id="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t6IrLookaLike">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t3pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t3pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t3pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t3pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 101,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 294802868297272642 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 7124603982474410
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 7124603982474410 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="t1NoLabel">',
  p_template_body2=>'</span>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 1,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional
prompt  ......label template 7124726723474413
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 7124726723474413 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t1Optional">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 1,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_with_help
prompt  ......label template 7124824602474413
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 7124824602474413 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="t1OptionalwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required
prompt  ......label template 7124929151474414
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 7124929151474414 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_1/required.gif" alt="Required Field Icon" tabindex="999" /><span class="t1Required">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 1,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_with_help
prompt  ......label template 7125001222474414
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 7125001222474414 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_1/required.gif" alt="Required Field Icon" tabindex="999" /><a class="t1RequiredwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 1,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/copy_of_no_label
prompt  ......label template 109472980088383245
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 109472980088383245 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Copy of No Label',
  p_template_body1=>'<span class="t3NoLabel">',
  p_template_body2=>'</span>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 101,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional
prompt  ......label template 109473070727383263
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 109473070727383263 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><span class="t3Optional">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 101,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/copy_of_optional_label_with_help
prompt  ......label template 109473185364383264
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 109473185364383264 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Copy of Optional Label with Help',
  p_template_body1=>'<a class="t3optionalwithhelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required
prompt  ......label template 109473263584383264
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 109473263584383264 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#requiredicon_status2.gif" alt="Required Field" /><span class="t3required">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 101,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/copy_of_required_label_with_help
prompt  ......label template 109473365477383264
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 109473365477383264 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Copy of Required Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#requiredicon_status2.gif" alt="Required" /><a class="t3requiredwithhelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 101,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/bold_optional
prompt  ......label template 297016972343876772
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 297016972343876772 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Bold Optional',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><span class="t3Optional"><b>',
  p_template_body2=>'</b></span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 101,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 7125113975474414
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 7125113975474414 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<div class="t1BreadcrumbMenu">',
  p_current_page_option=>'<span class="t1current">#NAME#</span>',
  p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>',
  p_menu_link_attributes=>'',
  p_between_levels=>'&nbsp;&gt;&nbsp;',
  p_after_last=>'</div>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 7125226945474417
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 7125226945474417 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t1HierarchicalMenu">',
  p_current_page_option=>'<li class="t1current">#NAME#</li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 1,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/breadcrumbs
prompt  ......template 109474162557387611
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 109474162557387611 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumbs',
  p_before_first=>'<span style="font-size:9pt;">',
  p_current_page_option=>'<strong>#NAME#</strong>',
  p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>',
  p_menu_link_attributes=>'',
  p_between_levels=>'&nbsp;&gt;&nbsp;',
  p_after_last=>'</span>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/copy_of_hierarchical_menu
prompt  ......template 109474261238387632
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 109474261238387632 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Copy of Hierarchical Menu',
  p_before_first=>'<ul class="t3HierarchicalMenu">',
  p_current_page_option=>'<li class="t3current"><a href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 101,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 7125902365474429
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 7125902365474429 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif',
  p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_3_1.css" type="text/css">'||unistr('\000a')||
'',
  p_page_body_attr=>'onload="first_field()" style="margin:0;"',
  p_before_field_text=>'<div class="t1PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="t1PopupBody">',
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ......template 109474677795392044
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 109474677795392044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'',
  p_popup_icon_attr=>'',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'popup',
  p_page_title=>'',
  p_page_html_head=>'',
  p_page_body_attr=>'',
  p_before_field_text=>'',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'',
  p_filter_max_width =>'',
  p_filter_text_attr =>'',
  p_find_button_text =>'',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'',
  p_scrollbars=>'',
  p_resizable=>'',
  p_width =>'',
  p_height=>'',
  p_result_row_x_of_y=>'',
  p_result_rows_per_pg=>null,
  p_before_result_set=>'',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 7125323507474418
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 7125323507474418 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="t1DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1CalendarHolder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="t1MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t1Calendar">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="t1DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t1Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t1Today">',
  p_weekend_title_format=> '<div class="t1WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t1WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t1NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t1NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1WeekCalendarHolder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th class="t1DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t1WeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t1Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t1Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t1NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t1Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t1DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t1DayCalendar">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t1Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t1Today">',
  p_daily_time_open_format => '<th class="t1Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 7125511590474426
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 7125511590474426 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th valign="bottom" class="t1DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1CalendarAlternative1Holder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="t1MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="2" summary="0" class="t1CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="t1DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t1Day" valign="top" height="100" height="100">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t1Today">',
  p_weekend_title_format=> '<div class="t1WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t1WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t1NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t1NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1WeekCalendarAlternative1Holder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th class="t1DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="2" summary="0" class="t1WeekCalendarAlternative1">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t1Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t1Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t1NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t1Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t1DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarAlternative1Holder"> <tr><td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="2" summary="0" class="t1DayCalendarAlternative1">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t1Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t1Today">',
  p_daily_time_open_format => '<th class="t1Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_theme_id  => 1,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calendar
prompt  ......template 7125717793474426
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 7125717793474426 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="t1DayOfWeek">#DY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1SmallCalendarHolder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="t1MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="1" summary="" class="t1SmallCalendar">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>',
  p_day_title_format=> '<div class="t1DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t1Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t1Today">',
  p_weekend_title_format=> '<div class="t1WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t1WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t1NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t1NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1SmallWeekCalendarHolder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t1MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th class="t1DayOfWeek">#IDAY#<br />#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="1" summary="0" class="t1SmallWeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t1Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t1Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t1NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t1Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t1DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1SmallDayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="1" summary="0" class="t1SmallDayCalendar">',
  p_daily_month_close_format => '</table></td></tr></table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t1Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t1Today">',
  p_daily_time_open_format => '<th class="t1Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_theme_id  => 1,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/copy_of_calendar
prompt  ......template 109474369484389622
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 109474369484389622 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Copy of Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="t3DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3StandardCalHolder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="t3MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3StandardCal">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="t3DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t3Day" valign="top">',
  p_day_close_format=> '</td><!--CAN YOU SEE THIS? #4-->',
  p_today_open_format=> '<td valign="top" class="t3Today">',
  p_weekend_title_format=> '<div class="t3WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t3WeekendDay">',
  p_weekend_close_format => '</td><!--CAN YOU SEE THIS? #3-->',
  p_nonday_title_format => '<div class="t3NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t3NonDay" valign="top">',
  p_nonday_close_format => '</td><!--CAN YOU SEE THIS? #2-->',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> <!--CAN YOU SEE THIS? #1-->',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3WeekCalendarHolder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th class="t3DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3WeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t3Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t3Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t3NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t3Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t3DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3DayCalendarHolder"> <tr> <td class="t3MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t3DayCalendar">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t3Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t3Today">',
  p_daily_time_open_format => '<th class="t3Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/copy_of_calendar_alternative_1
prompt  ......template 109474489693389632
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 109474489693389632 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Copy of Calendar, Alternative 1',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="t3DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3CalendarAlternative1Holder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="t3MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="t3DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t3Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t3Today">',
  p_weekend_title_format=> '<div class="t3WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t3WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t3NonDayTitle">#DD#</div></td>',
  p_nonday_open_format => '<td class="t3NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '',
  p_daily_open_format => '',
  p_daily_close_format => '',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3WeekCalendarAlternative1Holder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th class="t3DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3WeekCalendarAlternative1">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t3Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t3Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t3NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t3Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t3DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3DayCalendarAlternative1Holder"> <tr><td class="t3MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t3DayCalendarAlternative1">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t3Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t3Today">',
  p_daily_time_open_format => '<th class="t3Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_theme_id  => 101,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/copy_of_small_calendar
prompt  ......template 109474591756389632
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 109474591756389632 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Copy of Small Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3SmallCalendarHolder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="t3MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3SmallCalendar">',
  p_month_close_format=> '</tr></table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="t3DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t3Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t3Today">',
  p_weekend_title_format=> '<div class="t3WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t3WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t3NonDayTitle">#DD#</div></td>',
  p_nonday_open_format => '<td class="t3NonDay" valign="top">',
  p_nonday_close_format => '',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3SmallWeekCalendarHolder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t3MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th class="t3DayOfWeek">#IDAY#<br />#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3SmallWeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t3Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t3Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t3NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t3Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t3DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3SmallDayCalendarHolder"> <tr> <td class="t3MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t3SmallDayCalendar">',
  p_daily_month_close_format => '</table></td></tr></table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t3Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t3Today">',
  p_daily_time_open_format => '<th class="t3Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_theme_id  => 101,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/red
prompt  ......theme 7126003788474432
begin
wwv_flow_api.create_theme (
  p_id =>7126003788474432 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 1,
  p_theme_name=>'Red',
  p_default_page_template=>7118932062474367 + wwv_flow_api.g_id_offset,
  p_error_template=>7119116525474368 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>7119414548474369 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>7118829455474357 + wwv_flow_api.g_id_offset,
  p_default_button_template=>7119700868474371 + wwv_flow_api.g_id_offset,
  p_default_region_template=>7121610428474386 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>7120717712474384 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>7120811335474384 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>7121610428474386 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>7121610428474386 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>7122103706474388 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>7120315392474383 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>7120623991474384 + wwv_flow_api.g_id_offset,
  p_default_irr_template=>null + wwv_flow_api.g_id_offset,
  p_default_report_template   =>7124227436474409 + wwv_flow_api.g_id_offset,
  p_default_label_template=>7124824602474413 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>7125113975474414 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>7125323507474418 + wwv_flow_api.g_id_offset,
  p_default_list_template=>7123629466474399 + wwv_flow_api.g_id_offset,
  p_default_option_label=>7124824602474413 + wwv_flow_api.g_id_offset,
  p_default_required_label=>7125001222474414 + wwv_flow_api.g_id_offset);
end;
/
 
--application/shared_components/user_interface/themes/funeurope
prompt  ......theme 109209868218694996
begin
wwv_flow_api.create_theme (
  p_id =>109209868218694996 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 101,
  p_theme_name=>'FunEurope',
  p_default_page_template=>198406262980490521 + wwv_flow_api.g_id_offset,
  p_error_template=>null + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>null + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'',
  p_sidebar_display_point=>'',
  p_login_template=>null + wwv_flow_api.g_id_offset,
  p_default_button_template=>null + wwv_flow_api.g_id_offset,
  p_default_region_template=>null + wwv_flow_api.g_id_offset,
  p_default_chart_template =>null + wwv_flow_api.g_id_offset,
  p_default_form_template  =>null + wwv_flow_api.g_id_offset,
  p_default_reportr_template => null,
  p_default_tabform_template=>null + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>null + wwv_flow_api.g_id_offset,
  p_default_menur_template=>null + wwv_flow_api.g_id_offset,
  p_default_listr_template=>null + wwv_flow_api.g_id_offset,
  p_default_irr_template=>null + wwv_flow_api.g_id_offset,
  p_default_report_template => null,
  p_default_label_template=>null + wwv_flow_api.g_id_offset,
  p_default_menu_template=>null + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>null + wwv_flow_api.g_id_offset,
  p_default_list_template=>null + wwv_flow_api.g_id_offset,
  p_default_option_label=>null + wwv_flow_api.g_id_offset,
  p_default_required_label=>null + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...build options used by application 121
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/language
prompt  ...Language Maps for Application 121
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...messages used by application: 121
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations used by application: 121
--
prompt  ...Shortcuts
--
prompt  ...web services (9iR2 or better)
--
--application/shared_components/logic/webservices/fullerdata_x0020_fortune_x0020_cookie
declare
    p1 varchar2(32767) := null;
    p2 varchar2(32767) := null;
    p3 varchar2(32767) := null;
    l_clob1 clob;
    l_clob2 clob;
    l_clob3 clob;
    l_length number := 1;
begin
p1 := null;
p2 := null;
p3 := null;
wwv_flow_api.create_web_service(
  p_id => 7185708223283801 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_name=>'FullerData_x0020_Fortune_x0020_Cookie',
  p_url=>'http://www.fullerdata.com/FortuneCookie/FortuneCookie.asmx',
  p_action=>'NEW_SCHOOL',
  p_proxy_override=>'',
  p_soap_version=>'',
  p_soap_envelope=>p1,
  p_flow_items_comma_delimited=>p2,
  p_stylesheet=>p3,
  p_static_parm_01=>'http://www.fullerdata.com/FortuneCookie/FortuneCookie.asmx',
  p_static_parm_02=>'document',
  p_static_parm_03=>'',
  p_static_parm_04=>'',
  p_static_parm_05=>'',
  p_static_parm_06=>'',
  p_static_parm_07=>'',
  p_static_parm_08=>'',
  p_static_parm_09=>'',
  p_static_parm_10=>'',
  p_reference_id=>'');
 
end;
/
 
begin
wwv_flow_api.create_ws_operations(
  p_id => 7185807490283806 + wwv_flow_api.g_id_offset,
  p_ws_id => 7185708223283801 + wwv_flow_api.g_id_offset,
  p_name => 'readNodeCount',
  p_input_message_name => 'readNodeCountSoapIn',
  p_input_message_ns => '',
  p_input_message_style => 'literal',
  p_output_message_name => 'readNodeCountSoapOut',
  p_output_message_ns => '',
  p_output_message_style => 'literal',
  p_header_message_name => '',
  p_header_message_style => '',
  p_soap_action => 'http://www.fullerdata.com/FortuneCookie/FortuneCookie.asmx/readNodeCount');
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7185914676283812 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7185807490283806 + wwv_flow_api.g_id_offset,
  p_name => 'readNodeCount',
  p_input_or_output => 'I',
  p_parm_type => 'tns:readNodeCount',
  p_path => '',
  p_type_is_xsd => 'Y',
  p_form_qualified => '',
  p_parent_id => null + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7186011787283875 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7185807490283806 + wwv_flow_api.g_id_offset,
  p_name => 'readNodeCountResponse',
  p_input_or_output => 'O',
  p_parm_type => 'tns:readNodeCountResponse',
  p_path => '',
  p_type_is_xsd => 'N',
  p_form_qualified => '',
  p_parent_id => null + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7186107351283880 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7185807490283806 + wwv_flow_api.g_id_offset,
  p_name => 'readNodeCountResult',
  p_input_or_output => 'O',
  p_parm_type => 's:int',
  p_path => '',
  p_type_is_xsd => 'Y',
  p_form_qualified => '',
  p_parent_id => 7186011787283875 + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_operations(
  p_id => 7186212176283880 + wwv_flow_api.g_id_offset,
  p_ws_id => 7185708223283801 + wwv_flow_api.g_id_offset,
  p_name => 'GetFortuneCookie',
  p_input_message_name => 'GetFortuneCookieSoapIn',
  p_input_message_ns => '',
  p_input_message_style => 'literal',
  p_output_message_name => 'GetFortuneCookieSoapOut',
  p_output_message_ns => '',
  p_output_message_style => 'literal',
  p_header_message_name => '',
  p_header_message_style => '',
  p_soap_action => 'http://www.fullerdata.com/FortuneCookie/FortuneCookie.asmx/GetFortuneCookie');
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7186316707283880 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7186212176283880 + wwv_flow_api.g_id_offset,
  p_name => 'GetFortuneCookie',
  p_input_or_output => 'I',
  p_parm_type => 'tns:GetFortuneCookie',
  p_path => '',
  p_type_is_xsd => 'Y',
  p_form_qualified => '',
  p_parent_id => null + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7186424846283881 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7186212176283880 + wwv_flow_api.g_id_offset,
  p_name => 'GetFortuneCookieResponse',
  p_input_or_output => 'O',
  p_parm_type => 'tns:GetFortuneCookieResponse',
  p_path => '',
  p_type_is_xsd => 'N',
  p_form_qualified => '',
  p_parent_id => null + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7186507158283881 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7186212176283880 + wwv_flow_api.g_id_offset,
  p_name => 'GetFortuneCookieResult',
  p_input_or_output => 'O',
  p_parm_type => 's:string',
  p_path => '',
  p_type_is_xsd => 'Y',
  p_form_qualified => '',
  p_parent_id => 7186424846283881 + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_operations(
  p_id => 7186620271283881 + wwv_flow_api.g_id_offset,
  p_ws_id => 7185708223283801 + wwv_flow_api.g_id_offset,
  p_name => 'CountCookies',
  p_input_message_name => 'CountCookiesSoapIn',
  p_input_message_ns => '',
  p_input_message_style => 'literal',
  p_output_message_name => 'CountCookiesSoapOut',
  p_output_message_ns => '',
  p_output_message_style => 'literal',
  p_header_message_name => '',
  p_header_message_style => '',
  p_soap_action => 'http://www.fullerdata.com/FortuneCookie/FortuneCookie.asmx/CountCookies');
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7186710274283882 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7186620271283881 + wwv_flow_api.g_id_offset,
  p_name => 'CountCookies',
  p_input_or_output => 'I',
  p_parm_type => 'tns:CountCookies',
  p_path => '',
  p_type_is_xsd => 'Y',
  p_form_qualified => '',
  p_parent_id => null + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7186823463283882 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7186620271283881 + wwv_flow_api.g_id_offset,
  p_name => 'CountCookiesResponse',
  p_input_or_output => 'O',
  p_parm_type => 'tns:CountCookiesResponse',
  p_path => '',
  p_type_is_xsd => 'N',
  p_form_qualified => '',
  p_parent_id => null + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7186911844283883 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7186620271283881 + wwv_flow_api.g_id_offset,
  p_name => 'CountCookiesResult',
  p_input_or_output => 'O',
  p_parm_type => 's:int',
  p_path => '',
  p_type_is_xsd => 'Y',
  p_form_qualified => '',
  p_parent_id => 7186823463283882 + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_operations(
  p_id => 7187000905283883 + wwv_flow_api.g_id_offset,
  p_ws_id => 7185708223283801 + wwv_flow_api.g_id_offset,
  p_name => 'GetSpecificCookie',
  p_input_message_name => 'GetSpecificCookieSoapIn',
  p_input_message_ns => '',
  p_input_message_style => 'literal',
  p_output_message_name => 'GetSpecificCookieSoapOut',
  p_output_message_ns => '',
  p_output_message_style => 'literal',
  p_header_message_name => '',
  p_header_message_style => '',
  p_soap_action => 'http://www.fullerdata.com/FortuneCookie/FortuneCookie.asmx/GetSpecificCookie');
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7187111343283883 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7187000905283883 + wwv_flow_api.g_id_offset,
  p_name => 'GetSpecificCookie',
  p_input_or_output => 'I',
  p_parm_type => 'tns:GetSpecificCookie',
  p_path => '',
  p_type_is_xsd => 'N',
  p_form_qualified => '',
  p_parent_id => null + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7187229093283883 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7187000905283883 + wwv_flow_api.g_id_offset,
  p_name => 'index',
  p_input_or_output => 'I',
  p_parm_type => 's:int',
  p_path => '',
  p_type_is_xsd => 'Y',
  p_form_qualified => '',
  p_parent_id => 7187111343283883 + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7187329357283884 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7187000905283883 + wwv_flow_api.g_id_offset,
  p_name => 'GetSpecificCookieResponse',
  p_input_or_output => 'O',
  p_parm_type => 'tns:GetSpecificCookieResponse',
  p_path => '',
  p_type_is_xsd => 'N',
  p_form_qualified => '',
  p_parent_id => null + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.create_ws_parameters(
  p_id => 7187426509283884 + wwv_flow_api.g_id_offset,
  p_ws_opers_id => 7187000905283883 + wwv_flow_api.g_id_offset,
  p_name => 'GetSpecificCookieResult',
  p_input_or_output => 'O',
  p_parm_type => 's:string',
  p_path => '',
  p_type_is_xsd => 'Y',
  p_form_qualified => '',
  p_parent_id => 7187329357283884 + wwv_flow_api.g_id_offset);
end;
/
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/html_db
prompt  ......authentication 7126102567474461
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 7126102567474461 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'HTML DB'
 ,p_scheme_type => 'NATIVE_APEX_ACCOUNTS'
 ,p_attribute_15 => '7126102567474461'
 ,p_invalid_session_type => 'URL'
 ,p_invalid_session_url => 'f?p=&APP_ID.:101:&SESSION.'
 ,p_logout_url => 'f?p=&APP_ID.:1'
 ,p_use_secure_cookie_yn => 'N'
 ,p_comments => 'Use internal Application Express account credentials and login page in this application.'
  );
null;
 
end;
/

--application/shared_components/security/authentication/database
prompt  ......authentication 7126207982474462
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 7126207982474462 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'DATABASE'
 ,p_scheme_type => 'NATIVE_DAD'
 ,p_attribute_15 => '7126207982474462'
 ,p_invalid_session_type => 'LOGIN'
 ,p_use_secure_cookie_yn => 'N'
 ,p_comments => 'Use database authentication (user identified by DAD).'
  );
null;
 
end;
/

--application/shared_components/security/authentication/database_account
prompt  ......authentication 7126326666474463
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 7126326666474463 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'DATABASE ACCOUNT'
 ,p_scheme_type => 'NATIVE_DB_ACCOUNTS'
 ,p_attribute_15 => '7126326666474463'
 ,p_invalid_session_type => 'URL'
 ,p_invalid_session_url => 'f?p=&APP_ID.:101:&SESSION.'
 ,p_logout_url => 'f?p=&APP_ID.:1'
 ,p_use_secure_cookie_yn => 'N'
 ,p_comments => 'Use database account credentials.'
  );
null;
 
end;
/

prompt  ...plugins
--
prompt  ...load tables
--
--application/end_environment
commit;
commit;
begin 
execute immediate 'begin dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
prompt  ...done
