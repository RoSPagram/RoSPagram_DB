CREATE OR REPLACE FUNCTION public.get_random_adjective() RETURNS SETOF public.adjective_list
    LANGUAGE plpgsql
    AS $$
  begin
   return query
    select * from adjective_list
    order by random()
    limit 1;
  end;
$$;

ALTER FUNCTION public.get_random_adjective() OWNER TO postgres;