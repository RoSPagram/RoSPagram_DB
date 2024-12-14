CREATE TABLE public.match (
    "from" text NOT NULL,
    "to" text NOT NULL,
    send smallint DEFAULT '0'::smallint NOT NULL,
    respond smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.match OWNER TO postgres;