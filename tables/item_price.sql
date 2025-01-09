CREATE OR REPLACE TABLE public.item_price (
    id text NOT NULL,
    price smallint NOT NULL,
    constraint item_price_pkey primary key (id)
);

ALTER TABLE public.item_price OWNER TO postgres;