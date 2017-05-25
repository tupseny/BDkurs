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
BEGIN
  new.SLOT = nextval('pk_seq_inv');
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
