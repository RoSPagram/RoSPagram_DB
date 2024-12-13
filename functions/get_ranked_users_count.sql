CREATE FUNCTION public.get_ranked_users_count() RETURNS integer
    LANGUAGE plpgsql
    AS $$
  begin
    return (select count(*) from ranking_view);
  end;
$$;

ALTER FUNCTION public.get_ranked_users_count() OWNER TO postgres;