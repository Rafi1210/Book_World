DECLARE
    is_authenticated BOOLEAN;
BEGIN
    is_authenticated := custom_auth('user1', 'hashed_password_1');
    IF is_authenticated THEN
        DBMS_OUTPUT.PUT_LINE('Authentication successful');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Authentication failed');
    END IF;
END;