CREATE OR REPLACE FUNCTION max_stack_check_func()
  RETURNS "trigger" AS
\$\$
begin
  IF new.count > (select max_stack from item
  where new.item_id = item.ID)
  then
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
  declare _space record;
  BEGIN
    record = (select free_space from inventory where id=new.inv_id);
    if (TG_OP = 'INSERT') THEN
        if (_space > 0) then
            UPDATE inventory set free_space = _space-1 where id = new.inv_id;
            return new;
        else
            raise exception 'inventory is full';
            return null;
        end if;
    elsif (TG_OP = 'DELETE') then
        update inventory set free_space = _space+1 where id = new.inv_id;
        return new;
    end if;
  END;
\$\$
  LANGUAGE "plpgsql";

--CREATE or REPLACE FUNCTION newBlock(_name text, _material text, _tool text)
--  RETURNS void AS \$\$
--DECLARE _item_id integer;
--  DECLARE _mat_id integer;
--  DECLARE _tool_id integer;
--    BEGIN
--
--
--      IF not exists(SELECT 1 from item where name::text = _name) then
--        INSERT INTO item(name, max_stack) VALUES (_name, DEFAULT);
--      END IF;
--
--      IF not exists(SELECT 1 from material where name::text = _material)  THEN
--        INSERT INTO material(name, dur, dmg) VALUES (_material, DEFAULT, DEFAULT);
--      END IF;
--
--      IF not exists(SELECT 1 from tool WHERE name::text = _tool)  THEN
--        INSERT INTO tool(name, add_dmg) VALUES (_tool, DEFAULT);
--      END IF;
--
--      _item_id = (SELECT id from item where name::text =_name);
--      _mat_id = (SELECT id from material where name::text = _material);
--      _tool_id = (SELECT id from tool WHERE name::text = _tool);
--
--      INSERT INTO block(item_id, material_id, tool_id) VALUES (_item_id, _mat_id, _tool_id);
--    END;
--\$\$
--  LANGUAGE 'plpgsql';

create trigger max_stack_check
before insert or update on inv_item
for each row
EXECUTE procedure max_stack_check_func();

create trigger inv_create
before insert on player
for each row
EXECUTE procedure inv_create_func();

create trigger inv_add_item
before insert or delete on inv_item
for each row
EXECUTE procedure inv_add_func();
