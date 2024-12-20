CREATE OR REPLACE TABLE public.user_tokens (
    id text not null,
    count smallint not null default '5'::smallint,
    last_updated timestamp without time zone null,
    constraint users_token_pkey primary key (id),
    constraint users_token_id_fkey foreign key (id) references users (id)
);