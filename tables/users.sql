CREATE TABLE public.users (
    id text NOT NULL,
    username text,
    img_url text,
    win smallint DEFAULT '0'::smallint,
    loss smallint DEFAULT '0'::smallint,
    draw smallint DEFAULT '0'::smallint,
    score real DEFAULT '0'::real,
    last_login date,
);

ALTER TABLE public.users OWNER TO postgres;