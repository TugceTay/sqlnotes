
create table mahalle_audit(
id serial primary key,
	mahalle_id integer,
	ad text,
	silinme_zamani timestamp default current_timestamp,
	original_data jsonb 
);


create or replace function mahalle_sil_trigger()
returns trigger as $$
begin
    insert into mahalle_audit(mahalle_id, ad, original_data)
    values (old.id, old.ad, to_jsonb(old));
    return old;
end;
$$ language plpgsql;


create trigger mahalle_sil_before_delete
before delete on mahalle
for each row execute function mahalle_sil_trigger();


delete from mahalle where id_0=25;

select * from mahalle;

select * from mahalle_audit;