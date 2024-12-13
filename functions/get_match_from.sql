CREATE FUNCTION public.get_match_from(user_id text) RETURNS TABLE(id text, username text, img_url text)
    LANGUAGE plpgsql
    AS $$
begin
  return query
    select users.id, users.username, users.img_url
    from users
    where users.id in (select "from" from match where "to" = user_id and respond = 0);
end;
$$;

ALTER FUNCTION public.get_match_from(user_id text) OWNER TO postgres;