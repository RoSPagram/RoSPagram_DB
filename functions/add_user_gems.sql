CREATE OR REPLACE FUNCTION public.add_user_gems(user_id text, amount smallint) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
    update user_gems set gem = gem + amount where id = user_id;
end;
$$;

ALTER FUNCTION public.add_user_gems(user_id text, amount smallint) OWNER TO postgres;