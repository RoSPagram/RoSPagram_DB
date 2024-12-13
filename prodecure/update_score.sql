CREATE PROCEDURE public.update_score(IN user_id text)
    LANGUAGE plpgsql
    AS $$
  declare
    digit real := 1;
    v_win real;
    v_loss real;
  begin
    select id, win::real, loss::real into user_id, v_win, v_loss
    from users
    where id = user_id;

    while v_win * digit > 1 loop
      digit := digit * 0.1;
    end loop;

    update users
    set score = v_win - (v_loss * digit)
    where id = user_id;
  end;
$$;


ALTER PROCEDURE public.update_score(IN user_id text) OWNER TO postgres;