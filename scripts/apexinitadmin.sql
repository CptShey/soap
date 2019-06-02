-- Call Command : sqlplus sys/<OracleXE PWD>localhost/XEPDB1 as sysdba @apexinitadmin.sql <APEX Admin PWD>
--
-- 2 Params
-- 1: admin_email ex: <E-Mail>
-- 2: admin_pass ex: <APEX Admin <PWD>



-- Declare Params
define admin_email = 'admin@admin.com'
define admin_pass = '&1'

-- Test Params
declare
begin
  if '&admin_email.' is null then
    raise_application_error(-20001, 'Param 1: admin_email missing');
  end if;

  if '&admin_pass.' is null then
    raise_application_error(-20001, 'Param 2: admin_pass missing');
  end if;
end;
/


-- Init APEX Admin Password
begin
  apex_util.set_security_group_id( 10 );
  apex_util.create_user(
    p_user_name => 'ADMIN',
    p_email_address => '&admin_email.',
    p_web_password => '&admin_pass.',
    p_developer_privs => 'ADMIN',
    p_change_password_on_first_use => 'N');
  apex_util.set_security_group_id( null );
  commit;
end;
/


exit
