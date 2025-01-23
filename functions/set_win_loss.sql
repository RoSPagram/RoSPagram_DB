CREATE OR REPLACE FUNCTION public.set_win_loss(winner_id text, loser_id text) RETURNS void
    LANGUAGE plpgsql
    AS $$
  begin
    update users set win = win + 1, gem = gem + 1, xp = xp + 1 where id = winner_id;
    update users set loss = loss + 1 where id = loser_id;
    call update_score(winner_id);
    call update_score(loser_id);
  end;
$$;


ALTER FUNCTION public.set_win_loss(winner_id text, loser_id text) OWNER TO postgres;