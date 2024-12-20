CREATE OR REPLACE FUNCTION public.set_draw(id1 text, id2 text) RETURNS void
    LANGUAGE plpgsql
    AS $$
  begin
    update users set draw = draw + 1 where id in (id1, id2);
  end;
$$;


ALTER FUNCTION public.set_draw(id1 text, id2 text) OWNER TO postgres;