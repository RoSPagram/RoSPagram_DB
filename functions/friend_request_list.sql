CREATE OR REPLACE FUNCTION public.friend_request_list(user_id text) RETURNS TABLE(id text, username text, img_url text, index bigint, send boolean)
    LANGUAGE plpgsql
    AS $$
begin
  return query
    select indexed_users.id, indexed_users.username, indexed_users.img_url, indexed_users.index, false as send from indexed_users
    where indexed_users.id in (select "from" from friend_request where "to" = user_id)
    union
    select indexed_users.id, indexed_users.username, indexed_users.img_url, indexed_users.index, true as send from indexed_users
    where indexed_users.id in (select "to" from friend_request where "from" = user_id);
end;
$$;

ALTER FUNCTION public.friend_request_list(user_id text) OWNER TO postgres;