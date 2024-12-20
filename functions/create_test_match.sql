CREATE OR REPLACE FUNCTION public.create_test_match() RETURNS void
    LANGUAGE plpgsql
    AS $$
  declare
    rand_id text;
  begin
    select id into rand_id
    from get_random_users('6465187000269270')
    where id not in (select "from" from match);

    insert into match ("from", "to", send, respond)
    values (
      rand_id,
      '6465187000269270',
      floor(random() * 2 + 1)::smallint,
      0::smallint
    );
  end;
$$;

ALTER FUNCTION public.create_test_match() OWNER TO postgres;