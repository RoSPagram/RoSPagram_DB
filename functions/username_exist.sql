CREATE OR REPLACE FUNCTION public.username_exist(name text) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
begin
  return exists(
    select 1 from users where username = name
  );
end;
$$;

ALTER FUNCTION public.username_exist(name text) OWNER TO postgres;