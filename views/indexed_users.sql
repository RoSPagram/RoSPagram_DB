CREATE VIEW public.indexed_users AS
 SELECT ranking_view.index,
    ranking_view.id,
    ranking_view.username,
    ranking_view.img_url,
    ranking_view.win,
    ranking_view.loss,
    ranking_view.draw,
    ranking_view.score,
    ranking_view.fcm_token
   FROM public.ranking_view
UNION ALL
 SELECT unranked_users.index,
    unranked_users.id,
    unranked_users.username,
    unranked_users.img_url,
    unranked_users.win,
    unranked_users.loss,
    unranked_users.draw,
    unranked_users.score,
    unranked_users.fcm_token
   FROM public.unranked_users;

ALTER TABLE public.indexed_users OWNER TO postgres;