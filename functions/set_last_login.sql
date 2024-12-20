CREATE OR REPLACE FUNCTION public.set_last_login(user_id text) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
  update users set last_login = current_date where id = user_id;
end;
$$;


ALTER FUNCTION public.set_last_login(user_id text) OWNER TO postgres;