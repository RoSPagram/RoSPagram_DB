CREATE OR REPLACE FUNCTION public.add_user_gems(user_id text) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
    update user_gems set gem = gem + 1 where id = user_id;
end;
$$;

ALTER FUNCTION public.use_user_gems(user_id text) OWNER TO postgres;