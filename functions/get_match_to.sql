CREATE OR REPLACE FUNCTION public.get_match_to(user_id text) RETURNS TABLE(id text, username text, avatar json, respond smallint)
    LANGUAGE plpgsql
    AS $$
begin
  return query
    select u.id, u.username, u.avatar, m.respond
    from match m
    join users u
      on u.id = m."to"
    where m."from" = user_id;

end;
$$;

ALTER FUNCTION public.get_match_to(user_id text) OWNER TO postgres;