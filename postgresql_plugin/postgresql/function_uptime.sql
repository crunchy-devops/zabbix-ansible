CREATE OR REPLACE FUNCTION get_uptime() RETURNS text
AS $$
DECLARE
     uptime text;
BEGIN
    SELECT date_trunc('second', current_timestamp - pg_postmaster_start_time()) into uptime;
    RETURN uptime;
END;
$$ LANGUAGE plpgsql;



