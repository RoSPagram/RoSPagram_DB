CREATE FUNCTION public.get_user_data(user_id text) RETURNS SETOF public.indexed_users
    LANGUAGE plpgsql
    AS $$
begin
  return query
    select * from indexed_users where id = user_id;
end;
$$;


ALTER FUNCTION public.get_user_data(user_id text) OWNER TO postgres;