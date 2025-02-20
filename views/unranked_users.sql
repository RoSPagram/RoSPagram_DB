CREATE OR REPLACE VIEW public.unranked_users AS
 SELECT (0)::bigint AS index,
    users.id,
    users.username,
    users.avatar,
    users.win,
    users.loss,
    users.draw,
    users.score,
    users.fcm_token,
    users.lang,
    users.xp
   FROM public.users
  WHERE ((users.win = 0) AND (users.loss = 0) AND (users.draw = 0));

ALTER TABLE public.unranked_users OWNER TO postgres;