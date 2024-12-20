CREATE OR REPLACE FUNCTION public.delete_finished_match(from_id text, to_id text) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
  delete from match where "from" = from_id and "to" = to_id and respond != 0;
end;
$$;

ALTER FUNCTION public.delete_finished_match(from_id text, to_id text) OWNER TO postgres;