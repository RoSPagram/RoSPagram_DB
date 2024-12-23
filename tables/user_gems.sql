create table public.user_gems (
    id text not null,
    gem smallint not null default '0'::smallint,
    constraint user_gems_pkey primary key (id),
    constraint user_gems_id_fkey foreign key (id) references users (id)
);