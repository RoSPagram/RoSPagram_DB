CREATE OR REPLACE FUNCTION public.get_token_data(user_id text) RETURNS TABLE(count smallint, last_updated timestamp)
    LANGUAGE plpgsql
    AS $$
begin
  return query
    select count, last_updated
    from user_tokens
    where id = user_id ;
end;
$$;

ALTER FUNCTION public.get_token_data(user_id text) OWNER TO postgres;