CREATE OR REPLACE TABLE public.app_config (
    id uuid not null default gen_random_uuid (),
    required_version text not null,
    app_store_url text not null,
    play_store_url text not null,
    constraint app_config_pkey primary key (id)
);