DECLARE
    v_username VARCHAR2(100);
    cursor c_users IS
        SELECT user_name FROM USER_ACCOUNT;
BEGIN
    FOR r_user IN c_users LOOP
        v_username := r_user.user_name;
        EXECUTE IMMEDIATE 'CREATE OR REPLACE VIEW user_account_view_' || v_username || ' AS SELECT user_id, user_name, email FROM USER_ACCOUNT WHERE user_name = ''' || v_username || '''';
    END LOOP;
END;
