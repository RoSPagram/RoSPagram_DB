CREATE OR REPLACE TABLE public.friend_request (
    "from" text NOT NULL,
    "to" text NOT NULL
);


ALTER TABLE public.friend_request OWNER TO postgres;