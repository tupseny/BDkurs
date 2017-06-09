CREATE OR REPLACE FUNCTION max_stack_check_func()
  RETURNS "trigger" AS
\$\$
begin
  IF new.count > (select max_stack from item
  where new.item_id = item.ID)
  then
    raise exception 'max_stack constraint';
    return NULL;
  elsif new.count <= 0
  then
	return NULL;
  else
    return NEW;
  end if;
end;
\$\$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION inv_create_func()
  RETURNS "trigger" as \$\$
  BEGIN
    insert into inventory values(default);
    new.inv_id = (select id from inventory order by id desc limit 1);
    return new;
  END;
\$\$
  LANGUAGE "plpgsql";

  CREATE OR REPLACE FUNCTION inv_add_func()
  RETURNS "trigger" as \$\$
  BEGIN
    if (TG_OP = 'INSERT') THEN
        if ((select free_space from inventory where id=new.inv_id) > 0) then
            if (new.id is not null) then
                UPDATE inventory set free_space = (select free_space from inventory where id=new.inv_id)-1 where id = new.inv_id;
                return new;
            end if;

        else
            raise exception 'inventory is full';
            return null;
        end if;
    elsif (TG_OP = 'DELETE') then
        update inventory set free_space = (select free_space from inventory where id=old.inv_id)+1 where id = old.inv_id;
        return old;
    end if;
  END;
\$\$
  LANGUAGE "plpgsql";

create trigger a_max_stack_check
before insert or update on inv_item
for each row
EXECUTE procedure max_stack_check_func();

create trigger inv_create
before insert on PLAYER
for each row
EXECUTE procedure inv_create_func();

create trigger inv_add_item
before insert or delete on inv_item
for each row
EXECUTE procedure inv_add_func();