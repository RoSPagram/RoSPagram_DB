CREATE OR REPLACE FUNCTION public.find_users_to_match(sender_id text) RETURNS SETOF public.indexed_users
    LANGUAGE plpgsql
    AS $$
  begin
    return query
      select * from get_random_users(sender_id)
      where id not in (select "from" from match where "to" = sender_id)
      and id not in (select "to" from match where "from" = sender_id)
      limit 20;
  end;
$$;

ALTER FUNCTION public.find_users_to_match(sender_id text) OWNER TO postgres;