CREATE VIEW public.top_ten AS
 SELECT ranking_view.index,
    ranking_view.id,
    ranking_view.username,
    ranking_view.img_url,
    ranking_view.win,
    ranking_view.loss,
    ranking_view.draw,
    ranking_view.score
   FROM public.ranking_view
 LIMIT 10;


ALTER TABLE public.top_ten OWNER TO postgres;