CREATE FUNCTION public.find_users_to_match(sender_id text) RETURNS SETOF public.indexed_users
    LANGUAGE plpgsql
    AS $$
  begin
    return query
      select * from get_random_users(sender_id)
      where id not in (select "from" from match)
      limit 20;
  end;
$$;

ALTER FUNCTION public.find_users_to_match(sender_id text) OWNER TO postgres;