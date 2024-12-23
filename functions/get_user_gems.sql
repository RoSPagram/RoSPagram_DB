CREATE OR REPLACE FUNCTION public.get_user_gems(user_id text) RETURNS smallint
    LANGUAGE plpgsql
    AS $$
begin
    return (select gem from user_gems where id = user_id);
end;
$$;

ALTER FUNCTION public.get_user_gems(user_id text) OWNER TO postgres;