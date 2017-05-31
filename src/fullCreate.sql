-- Table names
-- UNIVERSE ITEM PLAYER, GAMEMODE, WORD, UN_WR, PRECIPITATION, TOOL, BLOCK, BIOME, WR_BI, WEAPON, PLANT,
-- EFFECT, FOOD, DROPS, DMG_TYPE, FRIENDMODE, MOB, BI_MOB, INVENTORY

-- Creating the base
CREATE TABLE UNIVERSE(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) NOT NULL DEFAULT 'universe',
  GM_ID INT NOT NULL,
  UNIQUE (GM_ID)
);

CREATE TABLE ITEM(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME varchar(25) unique NOT NULL,
  MAX_STACK SMALLINT NOT NULL CONSTRAINT stack_size_lim CHECK (MAX_STACK >= 0 AND MAX_STACK <1000) DEFAULT 64
);

CREATE TABLE PLAYER(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) NOT NULL DEFAULT 'PLAYER',
  HP SMALLINT NOT NULL,
  HUNGRY SMALLINT NOT NULL,
  EXP BIGINT NOT NULL,
  CONSTRAINT positive_hp$hungry$exp CHECK (HP >= 0 AND HUNGRY >= 0 AND EXP >= 0)
);

CREATE TABLE GAMEMODE(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) NOT NULL UNIQUE
);

CREATE TABLE WORD(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) NOT NULL DEFAULT 'WORD',
  SIZE INT CONSTRAINT pos_size CHECK (SIZE >= 0) DEFAULT NULL
);

CREATE TABLE UN_WR(
  ID INT PRIMARY KEY,
  UN_ID INT NOT NULL REFERENCES UNIVERSE ON DELETE CASCADE,
  WR_ID INT NOT NULL REFERENCES WORD ON DELETE CASCADE,
  CONSTRAINT positive_ID CHECK (ID >= 0)
);

CREATE TABLE PRECIPITATION(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) UNIQUE NOT NULL
);

CREATE TABLE TOOL(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME varchar(25) unique not null,
  ADD_DMG int not null default 0
);

create table ITEM_TYPE(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME varchar(25) unique not null
);

create table type_item(
  ID INT PRIMARY KEY,
  ITEM_ID INT NOT NULL REFERENCES ITEM ON DELETE CASCADE,
  TYPE_ID INT NOT NULL REFERENCES ITEM_TYPE ON DELETE CASCADE
);



create table MATERIAL(
  ID int primary key constraint positive_ID check (ID >= 0),
  NAME varchar(25) unique not null,
  DUR INT NOT NULL DEFAULT -1,
  DMG int not null default -1
);

CREATE TABLE BLOCK(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  ITEM_ID INT default null REFERENCES ITEM ON DELETE CASCADE,
  MATERIAL_ID SMALLINT DEFAULT null references material on delete set null,
  TOOL_ID SMALLINT default null REFERENCES TOOL ON DELETE SET NULL
);

CREATE TABLE BIOME(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) NOT NULL DEFAULT 'BIOME',
  PREC_ID INT REFERENCES PRECIPITATION ON DELETE SET NULL,
  BL_ID INT NOT NULL REFERENCES BLOCK ON DELETE RESTRICT,
  COLOR varchar(6) default null
);

CREATE TABLE WR_BI(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  WR_ID INT NOT NULL REFERENCES WORD ON DELETE CASCADE,
  BI_ID INT NOT NULL REFERENCES BIOME ON DELETE CASCADE,
  CONSTRAINT pos_ID CHECK (ID >= 0)
);

CREATE TABLE WEAPON(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  MAT_ID int not null references material on delete cascade,
  TOOL_ID INT NOT NULL REFERENCES TOOL ON DELETE CASCADE,
  ITEM_ID int not null references item on delete cascade
);

CREATE TABLE PLANT(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  GROW_TIME int NOT NULL DEFAULT -1, -- ticks
  BL_ID INT NOT NULL REFERENCES BLOCK ON DELETE CASCADE
);

CREATE TABLE INVENTORY(
  SLOT SMALLINT PRIMARY KEY CONSTRAINT slot_lim CHECK (SLOT >= 0 AND SLOT <= 36),
  ITEM_ID INT REFERENCES ITEM ON DELETE SET NULL,
  COUNT SMALLINT not null
);

CREATE TABLE EFFECT(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) NOT NULL UNIQUE,
  HP SMALLINT,
  HUNGRY SMALLINT,
  EXP INT
);

CREATE TABLE FOOD(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  ITEM_ID INT NOT NULL REFERENCES ITEM ON DELETE CASCADE,
  EF_ID INT REFERENCES EFFECT ON DELETE SET NULL
);

CREATE TABLE DROPS(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  ITEM_ID INT NOT NULL REFERENCES ITEM,
  COUNT SMALLINT NOT NULL CONSTRAINT positive_count CHECK (COUNT >= 0),
  PERCENTAGE FLOAT NOT NULL CONSTRAINT percentage_interval CHECK (PERCENTAGE >= 0 AND PERCENTAGE <= 1)
);

CREATE TABLE DMG_TYPE(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) UNIQUE NOT NULL
);

CREATE TABLE FRIENDMODE(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) NOT NULL UNIQUE
);

CREATE TABLE MOB(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) UNIQUE NOT NULL,
  FM_ID INT NOT NULL REFERENCES FRIENDMODE ON DELETE SET NULL,
  HP SMALLINT NOT NULL DEFAULT -1,
  DMG SMALLINT NOT NULL DEFAULT 0,
  DMG_ID INT REFERENCES DMG_TYPE default null
);

CREATE TABLE BI_MOB(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  BI_ID INT NOT NULL REFERENCES BIOME ON DELETE CASCADE,
  MOB_ID INT NOT NULL REFERENCES MOB ON DELETE CASCADE
);

create table mob_drop(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  MOB_ID INT NOT NULL REFERENCES MOB ON DELETE CASCADE,
  DROP_ID INT NOT NULL REFERENCES DROPS ON DELETE CASCADE
);

-- Indexes
CREATE INDEX ON ITEM (ID);
CREATE INDEX ON PLAYER USING HASH(ID);
CREATE INDEX ON BLOCK(ID);
CREATE INDEX ON PLANT(ID);
CREATE INDEX ON INVENTORY(ITEM_ID);
CREATE INDEX ON DROPS(ID);


-- Primary key creating sequences
CREATE SEQUENCE pk_seq_uni minvalue 0;
CREATE SEQUENCE pk_seq_item minvalue 0;
CREATE SEQUENCE pk_seq_player minvalue 0;
CREATE SEQUENCE pk_seq_gm minvalue 0;
CREATE SEQUENCE pk_seq_word minvalue 0;
CREATE SEQUENCE pk_seq_un_wr minvalue 0;
CREATE SEQUENCE pk_seq_precip minvalue 0;
CREATE SEQUENCE pk_seq_tool minvalue 0;
CREATE SEQUENCE pk_seq_block minvalue 0;
CREATE SEQUENCE pk_seq_biome minvalue 0;
CREATE SEQUENCE pk_seq_wr_bi minvalue 0;
CREATE SEQUENCE pk_seq_weapon minvalue 0;
CREATE SEQUENCE pk_seq_plant minvalue 0;
CREATE SEQUENCE pk_seq_effect minvalue 0;
CREATE SEQUENCE pk_seq_food minvalue 0;
CREATE SEQUENCE pk_seq_drop minvalue 0;
CREATE SEQUENCE pk_seq_dmg_type minvalue 0;
CREATE SEQUENCE pk_seq_friendm minvalue 0;
CREATE SEQUENCE pk_seq_mob minvalue 0;
CREATE SEQUENCE pk_seq_bi_mob minvalue 0;
CREATE SEQUENCE pk_seq_inv minvalue 0;
create sequence pk_seq_mat minvalue 0;
create sequence pk_seq_type_item minvalue 0;
create sequence pk_seq_item_type minvalue 0;
create sequence pk_seq_mob_drop minvalue 0;


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
CREATE OR REPLACE FUNCTION max_stack_check_func()
  RETURNS "trigger" AS
$$
begin
  IF new.count > (select max_stack from item
  where new.item_id = item.ID)
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
  if new.fm_id::integer = 0
  then
    new.dmg_id = null;
  end if;
  return NEW;
end;
$$
language 'plpgsql';

-- Primary key creating Triggers

CREATE TRIGGER pk_uni
BEFORE INSERT ON UNIVERSE
FOR EACH ROW
EXECUTE PROCEDURE pk_func_uni();

CREATE TRIGGER pk_item
BEFORE INSERT ON ITEM
FOR EACH ROW
EXECUTE PROCEDURE pk_func_item();

CREATE TRIGGER pk_player
BEFORE INSERT ON PLAYER
FOR EACH ROW
EXECUTE PROCEDURE pk_func_player();

CREATE TRIGGER pk_gm
BEFORE INSERT ON GAMEMODE
FOR EACH ROW
EXECUTE PROCEDURE pk_func_gm();

CREATE TRIGGER pk_word
BEFORE INSERT ON WORD
FOR EACH ROW
EXECUTE PROCEDURE pk_func_word();

CREATE TRIGGER pk_un_wr
BEFORE INSERT ON UN_WR
FOR EACH ROW
EXECUTE PROCEDURE pk_func_un_wr();

CREATE TRIGGER pk_precip
BEFORE INSERT ON PRECIPITATION
FOR EACH ROW
EXECUTE PROCEDURE pk_func_precip();

CREATE TRIGGER pk_tool
BEFORE INSERT ON TOOL
FOR EACH ROW
EXECUTE PROCEDURE pk_func_tool();

CREATE TRIGGER pk_block
BEFORE INSERT ON BLOCK
FOR EACH ROW
EXECUTE PROCEDURE pk_func_block();

CREATE TRIGGER pk_biome
BEFORE INSERT ON BIOME
FOR EACH ROW
EXECUTE PROCEDURE pk_func_biome();

CREATE TRIGGER pk_wr_bi
BEFORE INSERT ON WR_BI
FOR EACH ROW
EXECUTE PROCEDURE pk_func_wr_bi();

CREATE TRIGGER pk_weapon
BEFORE INSERT ON WEAPON
FOR EACH ROW
EXECUTE PROCEDURE pk_func_weapon();

CREATE TRIGGER pk_plant
BEFORE INSERT ON PLANT
FOR EACH ROW
EXECUTE PROCEDURE pk_func_plant();

CREATE TRIGGER pk_effect
BEFORE INSERT ON EFFECT
FOR EACH ROW
EXECUTE PROCEDURE pk_func_effect();

CREATE TRIGGER pk_food
BEFORE INSERT ON FOOD
FOR EACH ROW
EXECUTE PROCEDURE pk_func_food();

CREATE TRIGGER pk_drop
BEFORE INSERT ON DROPS
FOR EACH ROW
EXECUTE PROCEDURE pk_func_drop();

CREATE TRIGGER pk_dmg_type
BEFORE INSERT ON DMG_TYPE
FOR EACH ROW
EXECUTE PROCEDURE pk_func_dmg_type();

CREATE TRIGGER pk_friendm
BEFORE INSERT ON FRIENDMODE
FOR EACH ROW
EXECUTE PROCEDURE pk_func_friendm();

CREATE TRIGGER pk_mob
BEFORE INSERT ON MOB
FOR EACH ROW
EXECUTE PROCEDURE pk_func_mob();

CREATE TRIGGER pk_bi_mob
BEFORE INSERT ON BI_MOB
FOR EACH ROW
EXECUTE PROCEDURE pk_func_bi_mob();

CREATE TRIGGER pk_inv
BEFORE INSERT ON INVENTORY
FOR EACH ROW
EXECUTE PROCEDURE pk_func_inv();

CREATE TRIGGER pk_mat
BEFORE INSERT ON MATERIAL
FOR EACH ROW
EXECUTE PROCEDURE pk_func_mat();

CREATE TRIGGER pk_type_item
BEFORE INSERT ON type_item
FOR EACH ROW
EXECUTE PROCEDURE pk_func_type_item();

CREATE TRIGGER pk_item_type
BEFORE INSERT ON ITEM_TYPe
FOR EACH ROW
EXECUTE PROCEDURE pk_func_item_type();

CREATE TRIGGER pk_mob_drop
BEFORE INSERT ON MOB_DROP
FOR EACH ROW
EXECUTE PROCEDURE pk_func_mob_drop();


-- another triggers
create trigger max_stack_check
before insert or update on inventory
for each row
EXECUTE procedure max_stack_check_func();

create trigger attk_check
before insert or update on MOB
for each row
execute procedure attk_check_func();