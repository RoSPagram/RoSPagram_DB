CREATE FUNCTION public.get_random_users(exclude_id text) RETURNS SETOF public.indexed_users
    LANGUAGE plpgsql
    AS $$
  begin
   return query
    select * from indexed_users
    where id != exclude_id
    order by random();
  end;
$$;

ALTER FUNCTION public.get_random_users(exclude_id text) OWNER TO postgres;