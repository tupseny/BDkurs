INSERT INTO item (title, max_stack) VALUES ('air', 64);
INSERT INTO item (title, max_stack) VALUES ('stone', 64);
INSERT INTO item (title, max_stack) VALUES ('grass_block', 64);
INSERT INTO item (title, max_stack) VALUES ('dirt', 64);
INSERT INTO item (title, max_stack) VALUES ('cobblestone', 64);
INSERT INTO item (title, max_stack) VALUES ('wood_planks', 64);
INSERT INTO item (title, max_stack) VALUES ('sapling', 64);
INSERT INTO item (title, max_stack) VALUES ('bedrock', 64);
INSERT INTO item (title, max_stack) VALUES ('water', 64);
INSERT INTO item (title, max_stack) VALUES ('lava', 64);
INSERT INTO item (title, max_stack) VALUES ('sand', 64);
INSERT INTO item (title, max_stack) VALUES ('gravel', 64);
INSERT INTO item (title, max_stack) VALUES ('gold_ore', 64);
INSERT INTO item (title, max_stack) VALUES ('iron_ore', 64);
INSERT INTO item (title, max_stack) VALUES ('coal_ore', 64);
INSERT INTO item (title, max_stack) VALUES ('wood', 64);
INSERT INTO item (title, max_stack) VALUES ('leaves', 64);
INSERT INTO item (title, max_stack) VALUES ('sponge', 64);
INSERT INTO item (title, max_stack) VALUES ('glass', 64);
INSERT INTO item (title, max_stack) VALUES ('lapis_ore', 64);
INSERT INTO item (title, max_stack) VALUES ('lapis_block', 64);
INSERT INTO item (title, max_stack) VALUES ('dispenser', 64);
INSERT INTO item (title, max_stack) VALUES ('sandstone', 64);
INSERT INTO item (title, max_stack) VALUES ('note_block', 64);
INSERT INTO item (title, max_stack) VALUES ('bed', 64);
INSERT INTO item (title, max_stack) VALUES ('rail', 64);
INSERT INTO item (title, max_stack) VALUES ('cobweb', 64);
INSERT INTO item (title, max_stack) VALUES ('grass', 64);
INSERT INTO item (title, max_stack) VALUES ('iron_shovel', 1);
INSERT INTO item (title, max_stack) VALUES ('iron_pickaxe', 1);
INSERT INTO item (title, max_stack) VALUES ('iron_axe', 1); -- 29
INSERT INTO item (title, max_stack) VALUES ('iron_sword', 1); -- 30
INSERT INTO item (title, max_stack) VALUES ('bow', 1); -- 31
INSERT INTO item (title, max_stack) VALUES ('arrow', 64);
INSERT INTO item (title, max_stack) VALUES ('coal', 64);
INSERT INTO item (title, max_stack) VALUES ('wooden_sword', 1); -- 34
INSERT INTO item (title, max_stack) VALUES ('wooden_shovel', 1);
INSERT INTO item (title, max_stack) VALUES ('wooden_axe', 1); -- 36
INSERT INTO item (title, max_stack) VALUES ('wooden_pickaxe', 1);
INSERT INTO item (title, max_stack) VALUES ('stone_sword', 1); -- 38
INSERT INTO item (title, max_stack) VALUES ('stone_shovel', 1);
INSERT INTO item (title, max_stack) VALUES ('stone_pickaxe', 1);
INSERT INTO item (title, max_stack) VALUES ('stone_axe', 1); -- 41
INSERT INTO item (title, max_stack) VALUES ('diamond_sword', 1); -- 42
INSERT INTO item (title, max_stack) VALUES ('diamond_axe', 64); -- 43
INSERT INTO item (title, max_stack) VALUES ('diamond_pickaxe', 64);
INSERT INTO item (title, max_stack) VALUES ('diamond_shovel', 1);
INSERT INTO item (title, max_stack) VALUES ('golden_sword', 1); -- 46
INSERT INTO item (title, max_stack) VALUES ('golden_shovel', 1);
INSERT INTO item (title, max_stack) VALUES ('golden_pickaxe', 1);
INSERT INTO item (title, max_stack) VALUES ('golden_axe', 1); -- 49
INSERT INTO item (title, max_stack) VALUES ('wooden_hoe', 1);
INSERT INTO item (title, max_stack) VALUES ('stone_hoe', 1);
INSERT INTO item (title, max_stack) VALUES ('iron_hoe', 1);
INSERT INTO item (title, max_stack) VALUES ('diamond_hoe', 1);
INSERT INTO item (title, max_stack) VALUES ('gold_hoe', 1);
INSERT INTO item (title, max_stack) VALUES ('flint', 64); -- 55
INSERT INTO item (title, max_stack) VALUES ('fishing_rod', 1);
INSERT INTO item (title, max_stack) VALUES ('fish', 64);
INSERT INTO item (title, max_stack) VALUES ('melon', 64);
INSERT INTO item (title, max_stack) VALUES ('chicken', 64);
INSERT INTO item (title, max_stack) VALUES ('cooked_chicken', 64);
INSERT INTO item (title, max_stack) VALUES ('spider_eye', 64);
INSERT INTO item (title, max_stack) VALUES ('bucket', 16); -- 64
INSERT INTO item (title, max_stack) VALUES ('carrot', 64);
INSERT INTO item (title, max_stack) VALUES ('elytra', 1);
INSERT INTO item (title, max_stack) VALUES ('flint&steel', 64);
INSERT INTO item (title, max_stack) VALUES ('shield', 1);
INSERT INTO item (title, max_stack) VALUES ('ice_block', 64);
INSERT INTO item (title, max_stack) VALUES ('snow_block', 64);
INSERT INTO item (title, max_stack) VALUES ('nether_rock', 64);
INSERT INTO item (title, max_stack) VALUES ('nether_brick', 64);
INSERT INTO item (title, max_stack) VALUES ('obsidian', 64);
INSERT INTO item (title, max_stack) VALUES ('heal_potion', 16); -- 73
INSERT INTO item (title, max_stack) VALUES ('feather', 64);
INSERT INTO item (title, max_stack) VALUES ('gunpowder', 64);
INSERT INTO item (title, max_stack) VALUES ('gunpowder2', 64);

INSERT INTO material (title, dur, dmg) VALUES ('hand', -1, 0);
INSERT INTO material (title, dur, dmg) VALUES ('gold', 33, 2);
INSERT INTO material (title, dur, dmg) VALUES ('wood', 60, 2);
INSERT INTO material (title, dur, dmg) VALUES ('stone', 132, 3);
INSERT INTO material (title, dur, dmg) VALUES ('iron', 251, 4);
INSERT INTO material (title, dur, dmg) VALUES ('diamond', 1562, 5);
INSERT INTO material (title, dur, dmg) VALUES ('diamond2', 1562, 5);

INSERT INTO tool (title, add_dmg) VALUES ('hand', 1);
INSERT INTO tool (title, add_dmg) VALUES ('axe', 5); -- 1
INSERT INTO tool (title, add_dmg) VALUES ('pickaxe', 0);
INSERT INTO tool (title, add_dmg) VALUES ('shovel', 0);
INSERT INTO tool (title, add_dmg) VALUES ('hoe', 0);
INSERT INTO tool (title, add_dmg) VALUES ('sword', 2); -- 5
INSERT INTO tool (title, add_dmg) VALUES ('bow', 9); -- 6
INSERT INTO tool (title, add_dmg) VALUES ('fishing_rod', 0);
INSERT INTO tool (title, add_dmg) VALUES ('flint&steel', 0);
INSERT INTO tool (title, add_dmg) VALUES ('shears', 0);
INSERT INTO tool (title, add_dmg) VALUES ('shears2', 0);

INSERT INTO block (item_id, material_id, tool_id) VALUES (1, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (2, 1, 3);
INSERT INTO block (item_id, material_id, tool_id) VALUES (3, 1, 3);
INSERT INTO block (item_id, material_id, tool_id) VALUES (4, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (5, 1, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (6, 1, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (7, null, null);
INSERT INTO block (item_id, material_id, tool_id) VALUES (8, null, null);
INSERT INTO block (item_id, material_id, tool_id) VALUES (9, null, null);
INSERT INTO block (item_id, material_id, tool_id) VALUES (10, 1, 3);
INSERT INTO block (item_id, material_id, tool_id) VALUES (11, 1, 3);
INSERT INTO block (item_id, material_id, tool_id) VALUES (12, 4, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (13, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (14, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (15, 1, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (16, 1, 9);
INSERT INTO block (item_id, material_id, tool_id) VALUES (17, 1, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (18, 1, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (19, 3, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (20, 3, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (21, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (22, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (23, 2, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (24, 1, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (25, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (26, 2, 5);
INSERT INTO block (item_id, material_id, tool_id) VALUES (27, 1, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (67, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (68, 2, 3);
INSERT INTO block (item_id, material_id, tool_id) VALUES (69, 3, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (70, 4, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (71, 5, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (64, 1, 1);

INSERT INTO gamemode (title) VALUES ('survival');
INSERT INTO gamemode (title) VALUES ('creative');
INSERT INTO gamemode (title) VALUES ('adventure');
INSERT INTO gamemode (title) VALUES ('hardcore');
INSERT INTO gamemode (title) VALUES ('spectator');

INSERT INTO universe (title) VALUES (DEFAULT);

INSERT INTO player (title ,hp, hungry, exp, inv_id) VALUES (DEFAULT, 20, 20, 9999999, 1);
INSERT INTO player (title ,hp, hungry, exp, inv_id) VALUES ('danik', 20, 20, 25, 1);
INSERT INTO player (title ,hp, hungry, exp, inv_id) VALUES ('martin', 20, 20, 280, 2);

INSERT INTO word (title, size, seed, gm_id) VALUES (DEFAULT , 182137121, random()*10000, 1);
INSERT INTO word (title, size, seed, gm_id) VALUES ('heaven' , 125662, random()*10000, 1);
INSERT INTO word (title, size, seed, gm_id) VALUES ('nether' , 563248, random()*10000, 1);
INSERT INTO word (title, size, seed, gm_id) VALUES ('dungeon' , 25630, random()*10000, 1);

INSERT INTO un_wr (un_id, wr_id) VALUES (1, 1);
INSERT INTO un_wr (un_id, wr_id) VALUES (1, 4);
INSERT INTO un_wr (un_id, wr_id) VALUES (1, 2);
INSERT INTO un_wr (un_id, wr_id) VALUES (1, 3);

INSERT INTO precipitation (title) VALUES ('sunny');
INSERT INTO precipitation (title) VALUES ('rain');
INSERT INTO precipitation (title) VALUES ('snow');
INSERT INTO precipitation (title) VALUES ('thunderstorm');

INSERT INTO biome (title, prec_id, bl_id ) VALUES ('ocean', 1, 8);
INSERT INTO biome (title, prec_id, bl_id ) VALUES ('plains', 1, 2);
INSERT INTO biome (title, prec_id, bl_id ) VALUES ('desert', 1, 10);
INSERT INTO biome (title, prec_id, bl_id ) VALUES ('extreme_hills', 2, 1);
INSERT INTO biome (title, prec_id, bl_id ) VALUES ('forest', 1, 2);
INSERT INTO biome (title, prec_id, bl_id ) VALUES ('taiga', 1, 3);
INSERT INTO biome (title, prec_id, bl_id ) VALUES ('frozen_ocean', 1, 1);
INSERT INTO biome (title, prec_id, bl_id ) VALUES ('ice_plains', 2, 1);
INSERT INTO biome (title, prec_id, bl_id ) VALUES ('jungle', 1, 2);
INSERT INTO biome (title, prec_id, bl_id ) VALUES ('rain_forest', 3, 2);
INSERT INTO biome (title, prec_id, bl_id ) VALUES ('hell', 1, 1);

INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 1);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 2);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 3);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 5);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 6);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 7);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 9);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (2, 10);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 4);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 8);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 1);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 2);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 3);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 4);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 6);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 10);

INSERT INTO weapon (item_id, mat_id, tool_id) VALUES (34, 2, 5);
INSERT INTO weapon (item_id, mat_id, tool_id) VALUES (38, 3, 5);
INSERT INTO weapon (item_id, mat_id, tool_id) VALUES (30, 4, 5);
INSERT INTO weapon (item_id, mat_id, tool_id) VALUES (42, 5, 5);
INSERT INTO weapon (item_id, mat_id, tool_id) VALUES (46, 1, 5);
INSERT INTO weapon (item_id, mat_id, tool_id) VALUES (36, 2, 1);
INSERT INTO weapon (item_id, mat_id, tool_id) VALUES (41, 3, 1);
INSERT INTO weapon (item_id, mat_id, tool_id) VALUES (29, 4, 1);
INSERT INTO weapon (item_id, mat_id, tool_id) VALUES (43, 5, 1);
INSERT INTO weapon (item_id, mat_id, tool_id) VALUES (31, 1, 6);

INSERT INTO plant (grow_time, block_id) VALUES (6000, 1);
INSERT INTO plant (grow_time, block_id) VALUES (18000, 2);

--INSERT INTO inventory (free_space) VALUES (default);
--INSERT INTO inventory (free_space) VALUES (default);
--INSERT INTO inventory (free_space) VALUES (default);

INSERT INTO effect (title, hp, hungry, exp) VALUES ('cooked_chicken_eaten', 0, 5, 0);
INSERT INTO effect (title, hp, hungry, exp) VALUES ('raw_chicken_eaten', -1, 2, 0);
INSERT INTO effect (title, hp, hungry, exp) VALUES ('heal_potion', 10, 0, 0);
INSERT INTO effect (title, hp, hungry, exp) VALUES ('zombie_killed', 0, 0, 100);
INSERT INTO effect (title, hp, hungry, exp) VALUES ('spider_eye_eaten', -2, -2, 0);
INSERT INTO effect (title, hp, hungry, exp) VALUES ('carrot_eaten', 0, 3, 0);

INSERT INTO food (item_id, ef_id) VALUES (61, 1);
INSERT INTO food (item_id, ef_id) VALUES (62, 1);
INSERT INTO food (item_id, ef_id) VALUES (63, 4);
INSERT INTO food (item_id, ef_id) VALUES (65, 5);
INSERT INTO food (item_id, ef_id) VALUES (73, 2);

insert into ITEM_TYPE (title) values ('tool');
insert into ITEM_TYPE (title) values ('weapon');
insert into ITEM_TYPE (title) values ('food');
insert into ITEM_TYPE (title) values ('plant');

insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (27, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (28, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (29, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (30, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (31, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (34, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (35, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (36, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (37, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (38, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (39, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (40, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (41, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (42, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (43, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (44, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (45, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (46, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (47, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (48, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (49, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (50, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (51, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (52, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (53, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (54, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (41, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (42, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (43, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (46, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (49, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (56, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (57, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (58, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (59, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (60, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (61, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (63, 2);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (67, 1);
insert into TYPE_ITEM (ITEM_ID, TYPE_ID) values (68, 1);

INSERT INTO drops (item_id, count, percentage) VALUES (12, 1, 0.2);
INSERT INTO drops (item_id, count, percentage) VALUES (26, 2, 0.6);
INSERT INTO drops (item_id, count, percentage) VALUES (31, 1, 0.3);
INSERT INTO drops (item_id, count, percentage) VALUES (32, 16, 0.5);
INSERT INTO drops (item_id, count, percentage) VALUES (63, 1, 0.8);
INSERT INTO drops (item_id, count, percentage) VALUES (65, 1, 0.1); -- 5
INSERT INTO drops (item_id, count, percentage) VALUES (74, 4, 1);
INSERT INTO drops (item_id, count, percentage) VALUES (59, 4, 0.6);
INSERT INTO drops (item_id, count, percentage) VALUES (75, 1, 0.6); -- 8
INSERT INTO drops (item_id, count, percentage) VALUES (13, 4, 0.4);

INSERT INTO friendmode (title) VALUES ('passive');
INSERT INTO friendmode (title) VALUES ('neutral'); -- until attack
INSERT INTO friendmode (title) VALUES ('hostile');
INSERT INTO friendmode (title) VALUES ('tameable');
INSERT INTO friendmode (title) VALUES ('utility'); -- summon

INSERT INTO dmg_type (title) VALUES ('melee');
INSERT INTO dmg_type (title) VALUES ('ranged_bow');
INSERT INTO dmg_type (title) VALUES ('ranged_potion');
INSERT INTO dmg_type (title) VALUES ('ranged_magic');
INSERT INTO dmg_type (title) VALUES ('blow'); -- 4

INSERT INTO mob (title, fm_id, hp, dmg, dmg_id) VALUES ('bat', 1, 4, 1, 1 );
INSERT INTO mob (title, fm_id, hp, dmg, dmg_id) VALUES ('chicken', 1, 6, 1, 1 );
INSERT INTO mob (title, fm_id, hp, dmg, dmg_id) VALUES ('spider', 1, 10, 2, 1 );
INSERT INTO mob (title, fm_id, hp, dmg, dmg_id) VALUES ('creeper', 2, 10, 8, 4 );
INSERT INTO mob (title, fm_id, hp, dmg, dmg_id) VALUES ('skeleton', 2, 10, 4, 1 );
INSERT INTO mob (title, fm_id, hp, dmg, dmg_id) VALUES ('horse', 3, 16, 1, 1 );
INSERT INTO mob (title, fm_id, hp, dmg, dmg_id) VALUES ('iron_golem', 4, 20, 8, 1 );

INSERT INTO mob_drop (mob_id, drop_id) VALUES (1, 6);
INSERT INTO mob_drop (mob_id, drop_id) VALUES (1, 7);
INSERT INTO mob_drop (mob_id, drop_id) VALUES (2, 4);
INSERT INTO mob_drop (mob_id, drop_id) VALUES (3, 8);
INSERT INTO mob_drop (mob_id, drop_id) VALUES (4, 2);
INSERT INTO mob_drop (mob_id, drop_id) VALUES (4, 3);
INSERT INTO mob_drop (mob_id, drop_id) VALUES (6, 9);

INSERT INTO bi_mob (bi_id, mob_id) VALUES (1, 1);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (1, 2);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (1, 3);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (1, 4);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (1, 5);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (1, 6);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (2, 3);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (2, 4);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (3, 2);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (3, 3);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (3, 4);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (4, 2);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (4, 4);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (5, 6);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (8, 2);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (8, 3);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (8, 4);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (9, 2);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (9, 3);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (9, 4);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (10, 1);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (10, 3);
INSERT INTO bi_mob (bi_id, mob_id) VALUES (10, 4);

