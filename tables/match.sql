CREATE OR REPLACE TABLE public.match (
    "from" text NOT NULL,
    "to" text NOT NULL,
    send smallint DEFAULT '0'::smallint NOT NULL,
    respond smallint DEFAULT '0'::smallint NOT NULL,
    constraint match_pkey primary key ("from", "to")
);


ALTER TABLE public.match OWNER TO postgres;