CREATE OR REPLACE FUNCTION public.get_match_to(user_id text) RETURNS TABLE(id text, username text, avatar json, respond smallint)
    LANGUAGE plpgsql
    AS $$
begin
  return query
    select users.id, users.username, users.avatar, match.respond
    from users, match
    where users.id = match."to" and users.id in (select "to" from match where "from" = user_id);
end;
$$;

ALTER FUNCTION public.get_match_to(user_id text) OWNER TO postgres;