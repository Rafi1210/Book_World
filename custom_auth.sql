CREATE OR REPLACE FUNCTION custom_auth (
    p_username IN VARCHAR2,
    p_password IN VARCHAR2
) RETURN BOOLEAN
AS
    l_user_id NUMBER;
BEGIN
    -- Check if the user exists with the given username and password
    SELECT 1 INTO l_user_id 
    FROM USER_ACCOUNT
    WHERE USER_NAME = p_username
      AND PASSWORD_HASH = p_password; -- Ensure this is the hashed password

    -- If a match is found, return true
    RETURN TRUE;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- If no match is found, return false
        RETURN FALSE;
    WHEN OTHERS THEN
        -- Handle any other exceptions
        RETURN FALSE;
END custom_auth;