CREATE OR REPLACE FUNCTION public.get_match_from(user_id text) RETURNS TABLE(id text, username text, avatar json)
    LANGUAGE plpgsql
    AS $$
begin
  return query
    select users.id, users.username, users.avatar
    from users
    where users.id in (select "from" from match where "to" = user_id and respond = 0);
end;
$$;

ALTER FUNCTION public.get_match_from(user_id text) OWNER TO postgres;