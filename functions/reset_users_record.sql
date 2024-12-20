CREATE OR REPLACE PROCEDURE public.reset_users_record()
    LANGUAGE plpgsql
    AS $$
  begin
    update users set win = 0::smallint, loss = 0::smallint, draw = 0::smallint, score = 0::real;
  end;
$$;


ALTER PROCEDURE public.reset_users_record() OWNER TO postgres;