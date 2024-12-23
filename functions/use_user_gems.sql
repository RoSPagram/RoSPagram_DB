CREATE OR REPLACE FUNCTION public.use_user_gems(user_id text, price smallint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    current_gem smallint;
begin
    select gem into current_gem from user_gems where id = user_id;
    IF current_gem >= price THEN
        update user_gems set gem = gem - price where id = user_id;
    END IF;
end;
$$;

ALTER FUNCTION public.use_user_gems(user_id text, price smallint) OWNER TO postgres;