-- Primary Key creating functions

CREATE OR REPLACE FUNCTION pk_func_uni()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_uni');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_item()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_item');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_player()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_player');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_gm()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_gm');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_word()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_word');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_un_wr()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_un_wr');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_precip()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_precip');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_tool()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_tool');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_block()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_block');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_biome()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_biome');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_wr_bi()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_wr_bi');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_weapon()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_weapon');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_plant()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_plant');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_effect()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_effect');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_food()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_food');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_drop()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_drop');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_dmg_type()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_dmg_type');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_friendm()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_friendm');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_mob()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_mob');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_bi_mob()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_bi_mob');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_inv()
  RETURNS "trigger" AS
$$
DECLARE var INTEGER;
DECLARE rec RECORD;
BEGIN
  var=0;
  FOR rec in SELECT * FROM inventory ORDER BY slot LOOP
    IF rec.slot<=var THEN var=var+1;
      IF var>10 THEN RAISE EXCEPTION 'inventory is full';
      END IF;
      IF rec.slot = (SELECT max(slot) from inventory) then new.slot=var;
        return new;
      END IF;
    ELSE new.slot = var;
      RETURN new;
    end IF;
  END LOOP;
  new.slot=20;
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_mat()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_mat');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_type_item()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_type_item');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_item_type()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_item_type');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION pk_func_mob_drop()
  RETURNS "trigger" AS
$$
BEGIN
  new.ID = nextval('pk_seq_mob_drop');
  RETURN new;
END;
$$
LANGUAGE 'plpgsql';


-- other functions
-- other functions
CREATE OR REPLACE FUNCTION max_stack_check_func()
  RETURNS "trigger" AS
$$
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
$$
LANGUAGE 'plpgsql';

create or replace function attk_check_func()
  returns "trigger" AS $$
begin
  if (new.fm_id::integer = 0)
  then
    new.dmg_id = null;
  end if;
  return NEW;
end;
$$
language 'plpgsql';

CREATE OR REPLACE FUNCTION itemInsRandom()
  RETURNS VOID as $$
  BEGIN
    FOR i in 1..1000000 LOOP
      INSERT INTO item(name, max_stack) VALUES(i, 64);
    END LOOP;
  END;
$$
  LANGUAGE "plpgsql";

CREATE OR REPLACE FUNCTION itemDelRandom()
  RETURNS VOID as $$
  BEGIN
    FOR r in 1..1000000 LOOP
      DELETE FROM item WHERE name=r::varchar;
    END LOOP;
  END;
$$
  LANGUAGE "plpgsql";

CREATE or REPLACE FUNCTION newBlock(_name text, _material text, _tool text)
  RETURNS void AS $$
DECLARE _item_id integer;
  DECLARE _mat_id integer;
  DECLARE _tool_id integer;
    BEGIN


      IF not exists(SELECT 1 from item where name::text = _name) then
        INSERT INTO item(name, max_stack) VALUES (_name, DEFAULT);
      END IF;

      IF not exists(SELECT 1 from material where name::text = _material)  THEN
        INSERT INTO material(name, dur, dmg) VALUES (_material, DEFAULT, DEFAULT);
      END IF;

      IF not exists(SELECT 1 from tool WHERE name::text = _tool)  THEN
        INSERT INTO tool(name, add_dmg) VALUES (_tool, DEFAULT);
      END IF;

      _item_id = (SELECT id from item where name::text =_name);
      _mat_id = (SELECT id from material where name::text = _material);
      _tool_id = (SELECT id from tool WHERE name::text = _tool);

      INSERT INTO block(item_id, material_id, tool_id) VALUES (_item_id, _mat_id, _tool_id);
    END;
$$
  LANGUAGE 'plpgsql';