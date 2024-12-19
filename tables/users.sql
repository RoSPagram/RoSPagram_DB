CREATE TABLE public.users (
    id text not null,
    username text null,
    img_url text null,
    win smallint null default '0'::smallint,
    loss smallint null default '0'::smallint,
    draw smallint null default '0'::smallint,
    score real null default '0'::real,
    last_login date null,
    fcm_token text null,
    constraint user_pkey primary key (id)
);

ALTER TABLE public.users OWNER TO postgres;