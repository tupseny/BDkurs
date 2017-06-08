-- Table names
-- UNIVERSE ITEM PLAYER, GAMEMODE, WORD, UN_WR, PRECIPITATION, TOOL, BLOCK, BIOME, WR_BI, WEAPON, PLANT,
-- EFFECT, FOOD, DROPS, DMG_TYPE, FRIENDMODE, MOB, BI_MOB, INVENTORY

-- Creating the base
CREATE TABLE UNIVERSE(
  ID serial PRIMARY KEY,
  NAME VARCHAR(25) NOT NULL DEFAULT 'universe'
);

CREATE TABLE ITEM(
  ID serial PRIMARY KEY,
  NAME varchar(25) unique NOT NULL,
  MAX_STACK SMALLINT NOT NULL CONSTRAINT stack_size_lim CHECK (MAX_STACK >= 0 AND MAX_STACK <1000) DEFAULT 64
);

CREATE TABLE PLAYER(
  ID serial PRIMARY KEY,
  NAME VARCHAR(25) NOT NULL DEFAULT 'PLAYER',
  HP SMALLINT NOT NULL,
  HUNGRY SMALLINT NOT NULL,
  EXP INT NOT NULL,
  UN_ID INT references UNIVERSE ON delete cascade,
  INV_ID INT references INVENTORY on delete SET null,
  CONSTRAINT positive_hp$hungry$exp CHECK (HP >= 0 AND HUNGRY >= 0 AND EXP >= 0)
);

CREATE TABLE GAMEMODE(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) NOT NULL UNIQUE,
  DIFFICULTY SMALLINT not NULL DEFAULT 0,
  BUILDER bool NOT null default true,
  IMMORTABILITY bool not null default false
);

CREATE TABLE WORD(
  ID INT PRIMARY KEY CONSTRAINT positive_ID CHECK (ID >= 0),
  NAME VARCHAR(25) NOT NULL DEFAULT 'WORD',
  SEED INT NOT null,
  SIZE INT CONSTRAINT pos_size CHECK (SIZE >= 0) DEFAULT NULL,
  GM_ID INT references GAMEMODE ON delete restrict
);

CREATE TABLE UN_WR(
  UN_ID INT references UNIVERSE on delete cascade ON update no action,
  WR_ID INT references WORD ON delete cascade ON update NO action,
  primary key (UN_ID, WR_ID)
);

CREATE TABLE PRECIPITATION(
  ID serial PRIMARY KEY,
  NAME VARCHAR(25) UNIQUE NOT NULL
);

CREATE TABLE TOOL(
  ID serial  PRIMARY KEY,
  NAME varchar(25) unique not null,
  ADD_DMG int not null default 0
);

create table ITEM_TYPE(
  ID serial PRIMARY KEY,
  NAME varchar(25) unique not null
);

create table type_item(
  ITEM_ID INT REFERENCES ITEM ON DELETE CASCADE ON update no action,
  TYPE_ID INT REFERENCES ITEM_TYPE ON DELETE CASCADE ON update no action
);

create table MATERIAL(
  ID serial primary key,
  NAME varchar(25) unique not null,
  DUR int NOT NULL DEFAULT -1,
  DMG int not null default -1
);

CREATE TABLE BLOCK(
  ITEM_ID INT primary key REFERENCES ITEM ON DELETE CASCADE ON update no action,
  MATERIAL_ID SMALLINT DEFAULT null references material on delete set default ON update NO action,
  TOOL_ID SMALLINT default null REFERENCES TOOL ON DELETE SET default ON update NO action
);

CREATE TABLE BIOME(
  ID serial PRIMARY KEY,
  NAME VARCHAR(25) NOT NULL DEFAULT 'BIOME',
  PREC_ID INT default null REFERENCES PRECIPITATION ON DELETE SET default ON update no action,
  BL_ID INT NOT NULL REFERENCES BLOCK ON DELETE RESTRICT ON update NO action
);

CREATE TABLE WR_BI(
  WR_ID INT REFERENCES WORD ON DELETE CASCADE ON update no action,
  BI_ID INT REFERENCES BIOME ON DELETE CASCADE ON update no action,
  primary key (WR_ID, BI_ID)
);

CREATE TABLE WEAPON(
  ITEM_ID int primary key references item on delete cascade ON update no action,
  MAT_ID int not null references material on delete cascade ON update no action,
  TOOL_ID INT NOT NULL REFERENCES TOOL ON DELETE CASCADE ON update no action
);

CREATE TABLE PLANT(
  BLOCK_ID INT PRIMARY KEY references BLOCK ON delete cascade ON update no action,
  GROW_TIME bigint NOT NULL DEFAULT -1
);

CREATE TABLE INVENTORY(
  ID serial PRIMARY KEY,
  FREE_SPACE smallint not null default 36 check (FREE_SPACE <= 36 AND FREE_SPACE >= 0)
);

create table INV_ITEM(
  INV_ID INT references INVENTORY ON delete cascade ON update no action,
  ITEM_ID INT references ITEM ON delete cascade ON update NO action,
  primary key (INV_ID, ITEM_ID)
);

CREATE TABLE EFFECT(
  ID serial PRIMARY KEY,
  NAME VARCHAR(25) NOT NULL UNIQUE,
  HP SMALLINT default 0,
  HUNGRY SMALLINT default 0,
  EXP INT default 0
);

CREATE TABLE FOOD(
  ITEM_ID INT primary key REFERENCES ITEM ON DELETE CASCADE ON update NO action,
  EF_ID INT default null REFERENCES EFFECT ON DELETE SET default ON update NO action
);

CREATE TABLE DROPS(
  ID serial PRIMARY KEY,
  ITEM_ID INT NOT NULL REFERENCES ITEM ON delete cascade ON update NO action,
  COUNT SMALLINT NOT NULL CHECK (COUNT >= 0),
  PERCENTAGE double_precision NOT NULL CHECK (PERCENTAGE >= 0 AND PERCENTAGE <= 1)
);

CREATE TABLE DMG_TYPE(
  ID serial PRIMARY KEY,
  NAME VARCHAR(25) UNIQUE NOT NULL
);

CREATE TABLE FRIENDMODE(
  ID serial PRIMARY KEY,
  NAME VARCHAR(25) NOT NULL UNIQUE
);

CREATE TABLE MOB(
  ID serial PRIMARY KEY,
  NAME VARCHAR(25) UNIQUE NOT NULL,
  FM_ID INT not null REFERENCES FRIENDMODE ON DELETE restrict ON update NO action,
  HP SMALLINT NOT NULL DEFAULT -1,
  DMG SMALLINT NOT NULL DEFAULT 0,
  DMG_ID INT not null REFERENCES DMG_TYPE ON DELETE restrict ON update NO action
);

CREATE TABLE BI_MOB(
  BI_ID INT REFERENCES BIOME ON DELETE CASCADE ON update NO action,
  MOB_ID INT REFERENCES MOB ON DELETE CASCADE ON update NO action,
  primary key (BI_ID, MOB_ID)
);

create table mob_drop(
  MOB_ID INT REFERENCES MOB ON DELETE CASCADE ON update NO action,
  DROP_ID INT REFERENCES DROPS ON DELETE CASCADE ON update NO action,
  primary key (MOB_ID, DROP_ID)
);