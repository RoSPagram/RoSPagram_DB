CREATE OR REPLACE VIEW public.indexed_users AS
 SELECT ranking_view.index,
    ranking_view.id,
    ranking_view.username,
    ranking_view.avatar,
    ranking_view.win,
    ranking_view.loss,
    ranking_view.draw,
    ranking_view.score,
    ranking_view.fcm_token,
    ranking_view.lang,
    ranking_view.xp
   FROM public.ranking_view
UNION ALL
 SELECT unranked_users.index,
    unranked_users.id,
    unranked_users.username,
    unranked_users.avatar,
    unranked_users.win,
    unranked_users.loss,
    unranked_users.draw,
    unranked_users.score,
    unranked_users.fcm_token,
    unranked_users.lang,
    unranked_users.xp
   FROM public.unranked_users;

ALTER TABLE public.indexed_users OWNER TO postgres;