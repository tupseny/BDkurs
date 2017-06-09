-- Table names
-- UNIVERSE ITEM PLAYER, GAMEMODE, WORD, UN_WR, PRECIPITATION, TOOL, BLOCK, BIOME, WR_BI, WEAPON, PLANT,
-- EFFECT, FOOD, DROPS, DMG_TYPE, FRIENDMODE, MOB, BI_MOB, INVENTORY

-- Creating the base
create table if not exists UNIVERSE(
  ID serial PRIMARY KEY,
  title VARCHAR(25) NOT NULL DEFAULT 'universe'
);

create table if not exists ITEM(
  ID serial PRIMARY KEY,
  title varchar(25) unique NOT NULL,
  MAX_STACK SMALLINT NOT NULL CONSTRAINT stack_size_lim CHECK (MAX_STACK >= 0 AND MAX_STACK <1000) DEFAULT 64
);

create table if not exists PLAYER(
  ID serial PRIMARY KEY,
  title VARCHAR(25) NOT NULL DEFAULT 'PLAYER',
  HP SMALLINT NOT NULL,
  HUNGRY SMALLINT NOT NULL,
  EXP INT NOT NULL,
  UN_ID INT references UNIVERSE ON delete cascade,
  INV_ID INT unique references INVENTORY on delete restrict,
  CONSTRAINT positive_hp\$hungry\$exp CHECK (HP >= 0 AND HUNGRY >= 0 AND EXP >= 0)
);

create table if not exists GAMEMODE(
  ID serial PRIMARY KEY,
  title VARCHAR(25) NOT NULL UNIQUE,
  DIFFICULTY SMALLINT not NULL DEFAULT 0,
  BUILDER bool NOT null default true,
  IMMORTABILITY bool not null default false
);

create table if not exists WORD(
  ID serial PRIMARY KEY,
  title VARCHAR(25) NOT NULL DEFAULT 'WORD',
  SEED INT NOT null default random()*1000000,
  SIZE INT CHECK (SIZE >= 0) DEFAULT NULL,
  GM_ID INT references GAMEMODE ON delete restrict
);

create table if not exists UN_WR(
  UN_ID INT references UNIVERSE on delete cascade ON update no action,
  WR_ID INT references WORD ON delete cascade ON update NO action,
  primary key (UN_ID, WR_ID)
);

create table if not exists PRECIPITATION(
  ID serial PRIMARY KEY,
  title VARCHAR(25) UNIQUE NOT NULL
);

create table if not exists TOOL(
  ID serial  PRIMARY KEY,
  title varchar(25) unique not null,
  ADD_DMG int not null default 0 check (ADD_DMG>=0)
);

create table if not exists ITEM_TYPE(
  ID serial PRIMARY KEY,
  title varchar(25) unique not null
);

create table if not exists type_item(
  ITEM_ID INT REFERENCES ITEM ON DELETE CASCADE ON update no action,
  TYPE_ID INT REFERENCES ITEM_TYPE ON DELETE CASCADE ON update no action,
  primary key (ITEM_ID, TYPE_ID)
);

create table if not exists MATERIAL(
  ID serial primary key,
  title varchar(25) unique not null,
  DUR int NOT NULL DEFAULT -1,
  DMG int not null default -1 check (DMG>=0)
);

create table if not exists BLOCK(
  ITEM_ID INT primary key REFERENCES ITEM ON DELETE CASCADE ON update no action,
  material_ID int DEFAULT null references material on delete set default ON update NO action,
  TOOL_ID int default null REFERENCES TOOL ON DELETE SET default ON update NO action
);

create table if not exists BIOME(
  ID serial PRIMARY KEY,
  title VARCHAR(25) NOT NULL DEFAULT 'BIOME',
  PREC_ID INT default null REFERENCES PRECIPITATION ON DELETE SET default ON update no action,
  BL_ID INT NOT NULL REFERENCES BLOCK ON DELETE RESTRICT ON update NO action
);

create table if not exists WR_BI(
  WR_ID INT REFERENCES WORD ON DELETE CASCADE ON update no action,
  BI_ID INT REFERENCES BIOME ON DELETE CASCADE ON update no action,
  primary key (WR_ID, BI_ID)
);

create table if not exists WEAPON(
  ITEM_ID int primary key references item on delete cascade ON update no action,
  MAT_ID int not null references material on delete cascade ON update no action,
  TOOL_ID INT NOT NULL REFERENCES TOOL ON DELETE CASCADE ON update no action
);

create table if not exists PLANT(
  BLOCK_ID INT PRIMARY KEY references BLOCK ON delete cascade ON update no action,
  GROW_TIME bigint NOT NULL DEFAULT -1
);

create table if not exists INVENTORY(
  ID serial PRIMARY KEY,
  FREE_SPACE smallint not null default 36 check (FREE_SPACE <= 36 AND FREE_SPACE >= 0)
);

create table if not exists INV_ITEM(
  id serial primary key,
  INV_ID INT references INVENTORY ON delete cascade ON update no action,
  ITEM_ID INT references ITEM ON delete cascade ON update NO action,
  count smallint not null default 1
);

create table if not exists EFFECT(
  ID serial PRIMARY KEY,
  title VARCHAR(25) NOT NULL UNIQUE,
  HP SMALLINT default 0,
  HUNGRY SMALLINT default 0,
  EXP INT default 0
);

create table if not exists FOOD(
  ITEM_ID INT primary key REFERENCES ITEM ON DELETE CASCADE ON update NO action,
  EF_ID INT default null REFERENCES EFFECT ON DELETE SET default ON update NO action
);

create table if not exists DROPS(
  ID serial PRIMARY KEY,
  ITEM_ID INT NOT NULL REFERENCES ITEM ON delete cascade ON update NO action,
  COUNT SMALLINT NOT NULL CHECK (COUNT >= 0),
  PERCENTAGE double_precision NOT NULL CHECK (PERCENTAGE >= 0 AND PERCENTAGE <= 1)
);

create table if not exists DMG_TYPE(
  ID serial PRIMARY KEY,
  title VARCHAR(25) UNIQUE NOT NULL
);

create table if not exists FRIENDMODE(
  ID serial PRIMARY KEY,
  title VARCHAR(25) NOT NULL UNIQUE
);

create table if not exists MOB(
  ID serial PRIMARY KEY,
  title VARCHAR(25) UNIQUE NOT NULL,
  FM_ID INT not null REFERENCES FRIENDMODE ON DELETE restrict ON update NO action,
  HP SMALLINT NOT NULL DEFAULT -1,
  DMG SMALLINT NOT NULL DEFAULT 0,
  DMG_ID INT not null REFERENCES DMG_TYPE ON DELETE restrict ON update NO action
);

create table if not exists BI_MOB(
  BI_ID INT REFERENCES BIOME ON DELETE CASCADE ON update NO action,
  MOB_ID INT REFERENCES MOB ON DELETE CASCADE ON update NO action,
  primary key (BI_ID, MOB_ID)
);

create table if not exists mob_drop(
  MOB_ID INT REFERENCES MOB ON DELETE CASCADE ON update NO action,
  DROP_ID INT REFERENCES DROPS ON DELETE CASCADE ON update NO action,
  primary key (MOB_ID, DROP_ID)
);

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
before insert on player
for each row
EXECUTE procedure inv_create_func();

create trigger inv_add_item
before insert or delete on inv_item
for each row
EXECUTE procedure inv_add_func();


create index if not exists item_max_stack_idx ON item(max_stack);
create index if not exists bi_mob_bi_id_idx ON bi_mob(bi_id);
create index if not exists bi_mob_mob_id_idx ON bi_mob(mob_id);
create index if not exists biome_prec_id_idx ON biome(prec_id);
create index if not exists biome_bl_id_idx ON biome(bl_id);
create index if not exists block_item_id_idx ON block(item_id);
create index if not exists block_material_id_idx ON block(material_id);
create index if not exists drops_item_id_idx on drops(item_id);
create index if not exists drops_count_idx on drops(count);
create index if not exists food_ef_id_idx on food(ef_id);
create index if not exists mob_fm_id_idx on mob(fm_id);
create index if not exists mob_drop_mob_id_idx on mob_drop(mob_id);
create index if not exists type_item_type_id_idx on type_item(type_id);
create index if not exists wr_bi_wr_id_idx on wr_bi(wr_id);