CREATE OR REPLACE VIEW public.ranking_view AS
 SELECT rank() OVER (ORDER BY users.score DESC) AS index,
    users.id,
    users.username,
    users.img_url,
    users.win,
    users.loss,
    users.draw,
    users.score,
    users.fcm_token,
    users.lang
   FROM public.users
  WHERE ((users.win <> 0) OR (users.loss <> 0) OR (users.draw <> 0));

ALTER TABLE public.ranking_view OWNER TO postgres;