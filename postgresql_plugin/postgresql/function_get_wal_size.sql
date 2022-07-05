CREATE OR REPLACE FUNCTION get_wal_size() RETURNS bigint
AS $$
DECLARE
     wal_size bigint;
BEGIN
    select sum(size)  into  wal_size from pg_ls_waldir();
    RETURN wal_size;
END;
$$ LANGUAGE plpgsql;



