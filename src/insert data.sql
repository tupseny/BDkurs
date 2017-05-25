INSERT INTO item (name, max_stack) VALUES ('air', 64);
INSERT INTO item (name, max_stack) VALUES ('stone', 64);
INSERT INTO item (name, max_stack) VALUES ('grass_block', 64);
INSERT INTO item (name, max_stack) VALUES ('dirt', 64);
INSERT INTO item (name, max_stack) VALUES ('cobblestone', 64);
INSERT INTO item (name, max_stack) VALUES ('wood_planks', 64);
INSERT INTO item (name, max_stack) VALUES ('sapling', 64);
INSERT INTO item (name, max_stack) VALUES ('bedrock', 64);
INSERT INTO item (name, max_stack) VALUES ('water', 64);
INSERT INTO item (name, max_stack) VALUES ('lava', 64);
INSERT INTO item (name, max_stack) VALUES ('sand', 64);
INSERT INTO item (name, max_stack) VALUES ('gravel', 64);
INSERT INTO item (name, max_stack) VALUES ('gold_ore', 64);
INSERT INTO item (name, max_stack) VALUES ('iron_ore', 64);
INSERT INTO item (name, max_stack) VALUES ('coal_ore', 64);
INSERT INTO item (name, max_stack) VALUES ('wood', 64);
INSERT INTO item (name, max_stack) VALUES ('leaves', 64);
INSERT INTO item (name, max_stack) VALUES ('sponge', 64);
INSERT INTO item (name, max_stack) VALUES ('glass', 64);
INSERT INTO item (name, max_stack) VALUES ('lapis_ore', 64);
INSERT INTO item (name, max_stack) VALUES ('lapis_block', 64);
INSERT INTO item (name, max_stack) VALUES ('dispenser', 64);
INSERT INTO item (name, max_stack) VALUES ('sandstone', 64);
INSERT INTO item (name, max_stack) VALUES ('note_block', 64);
INSERT INTO item (name, max_stack) VALUES ('bed', 64);
INSERT INTO item (name, max_stack) VALUES ('rail', 64);
INSERT INTO item (name, max_stack) VALUES ('cobweb', 64);
INSERT INTO item (name, max_stack) VALUES ('grass', 64);
INSERT INTO item (name, max_stack) VALUES ('iron_shovel', 1);
INSERT INTO item (name, max_stack) VALUES ('iron_pickaxe', 1);
INSERT INTO item (name, max_stack) VALUES ('iron_axe', 1);
INSERT INTO item (name, max_stack) VALUES ('iron_sword', 1);
INSERT INTO item (name, max_stack) VALUES ('bow', 1);
INSERT INTO item (name, max_stack) VALUES ('arrow', 64);
INSERT INTO item (name, max_stack) VALUES ('coal', 64);
INSERT INTO item (name, max_stack) VALUES ('wooden_sword', 1);
INSERT INTO item (name, max_stack) VALUES ('wooden_shovel', 1);
INSERT INTO item (name, max_stack) VALUES ('wooden_axe', 1);
INSERT INTO item (name, max_stack) VALUES ('wooden_pickaxe', 1);
INSERT INTO item (name, max_stack) VALUES ('stone_sword', 1);
INSERT INTO item (name, max_stack) VALUES ('stone_shovel', 1);
INSERT INTO item (name, max_stack) VALUES ('stone_pickaxe', 1);
INSERT INTO item (name, max_stack) VALUES ('stone_axe', 1);
INSERT INTO item (name, max_stack) VALUES ('diamond_sword', 1);
INSERT INTO item (name, max_stack) VALUES ('diamond_axe', 64);
INSERT INTO item (name, max_stack) VALUES ('diamond_pickaxe', 64);
INSERT INTO item (name, max_stack) VALUES ('diamond_shovel', 1);
INSERT INTO item (name, max_stack) VALUES ('golden_sword', 1);
INSERT INTO item (name, max_stack) VALUES ('golden_shovel', 1);
INSERT INTO item (name, max_stack) VALUES ('golden_pickaxe', 1);
INSERT INTO item (name, max_stack) VALUES ('golden_axe', 1);
INSERT INTO item (name, max_stack) VALUES ('wooden_hoe', 1);
INSERT INTO item (name, max_stack) VALUES ('stone_hoe', 1);
INSERT INTO item (name, max_stack) VALUES ('iron_hoe', 1);
INSERT INTO item (name, max_stack) VALUES ('diamond_hoe', 1);
INSERT INTO item (name, max_stack) VALUES ('gold_hoe', 1);
INSERT INTO item (name, max_stack) VALUES ('flint', 64);
INSERT INTO item (name, max_stack) VALUES ('fishing_rod', 1);
INSERT INTO item (name, max_stack) VALUES ('fish', 64);
INSERT INTO item (name, max_stack) VALUES ('melon', 64);
INSERT INTO item (name, max_stack) VALUES ('chicken', 64);
INSERT INTO item (name, max_stack) VALUES ('cooked_chicken', 64);
INSERT INTO item (name, max_stack) VALUES ('spider_eye', 64);
INSERT INTO item (name, max_stack) VALUES ('bucket', 16);
INSERT INTO item (name, max_stack) VALUES ('carrot', 64);
INSERT INTO item (name, max_stack) VALUES ('elytra', 1);
INSERT INTO item (name, max_stack) VALUES ('flint&steel', 64);
INSERT INTO item (name, max_stack) VALUES ('shield', 1);
INSERT INTO item (name, max_stack) VALUES ('ice_block', 64);
INSERT INTO item (name, max_stack) VALUES ('snow_block', 64);
INSERT INTO item (name, max_stack) VALUES ('nether_rock', 64);
INSERT INTO item (name, max_stack) VALUES ('nether_brick', 64);
INSERT INTO item (name, max_stack) VALUES ('obsidian', 64);

INSERT INTO material (name, dur) VALUES ('hand', -1);
INSERT INTO material (name, dur) VALUES ('gold', 33);
INSERT INTO material (name, dur) VALUES ('wood', 60);
INSERT INTO material (name, dur) VALUES ('stone', 132);
INSERT INTO material (name, dur) VALUES ('iron', 251);
INSERT INTO material (name, dur) VALUES ('diamond', 1562);
INSERT INTO material (name, dur) VALUES ('fishing_rod', 65);
INSERT INTO material (name, dur) VALUES ('flint&steel', 65);
INSERT INTO material (name, dur) VALUES ('shears', 238);
INSERT INTO material (name, dur) VALUES ('shield', 337);
INSERT INTO material (name, dur) VALUES ('bow', 385);
INSERT INTO material (name, dur) VALUES ('elytra', 432);

INSERT INTO tool (name) VALUES ('hand');
INSERT INTO tool (name) VALUES ('axe');
INSERT INTO tool (name) VALUES ('pickaxe');
INSERT INTO tool (name) VALUES ('shovel');
INSERT INTO tool (name) VALUES ('hoe');
INSERT INTO tool (name) VALUES ('sword');
INSERT INTO tool (name) VALUES ('bow');
INSERT INTO tool (name) VALUES ('fishing_rod');
INSERT INTO tool (name) VALUES ('flint&steel');
INSERT INTO tool (name) VALUES ('shears');
INSERT INTO tool (name) VALUES ('shield');
INSERT INTO tool (name) VALUES ('bow');
INSERT INTO tool (name) VALUES ('elytra');

INSERT INTO block (item_id, material_id, tool_id) VALUES (0, null, null);
INSERT INTO block (item_id, material_id, tool_id) VALUES (1, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (2, 0, 3);
INSERT INTO block (item_id, material_id, tool_id) VALUES (3, 0, 3);
INSERT INTO block (item_id, material_id, tool_id) VALUES (4, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (5, 0, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (6, 0, 0);
INSERT INTO block (item_id, material_id, tool_id) VALUES (7, null, null);
INSERT INTO block (item_id, material_id, tool_id) VALUES (8, null, null);
INSERT INTO block (item_id, material_id, tool_id) VALUES (9, null, null);
INSERT INTO block (item_id, material_id, tool_id) VALUES (10, 0, 3);
INSERT INTO block (item_id, material_id, tool_id) VALUES (11, 0, 3);
INSERT INTO block (item_id, material_id, tool_id) VALUES (12, 4, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (13, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (14, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (15, 0, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (16, 0, 9);
INSERT INTO block (item_id, material_id, tool_id) VALUES (17, 0, 0);
INSERT INTO block (item_id, material_id, tool_id) VALUES (18, 0, 0);
INSERT INTO block (item_id, material_id, tool_id) VALUES (19, 3, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (20, 3, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (21, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (22, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (23, 2, 1);
INSERT INTO block (item_id, material_id, tool_id) VALUES (24, 0, 0);
INSERT INTO block (item_id, material_id, tool_id) VALUES (25, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (26, 2, 5);
INSERT INTO block (item_id, material_id, tool_id) VALUES (27, 0, 0);
INSERT INTO block (item_id, material_id, tool_id) VALUES (67, 2, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (68, 2, 3);
INSERT INTO block (item_id, material_id, tool_id) VALUES (69, 3, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (70, 4, 2);
INSERT INTO block (item_id, material_id, tool_id) VALUES (71, 5, 2);

INSERT INTO gamemode (name) VALUES ('survival');
INSERT INTO gamemode (name) VALUES ('creative');
INSERT INTO gamemode (name) VALUES ('adventure');
INSERT INTO gamemode (name) VALUES ('hardcore');
INSERT INTO gamemode (name) VALUES ('spectator');

INSERT INTO universe (name, gm_id) VALUES (DEFAULT, 0);

INSERT INTO player (name ,hp, hungry, exp) VALUES (DEFAULT, 20, 20, 9999999);
INSERT INTO player (name ,hp, hungry, exp) VALUES ('danik', 20, 20, 25);
INSERT INTO player (name ,hp, hungry, exp) VALUES ('martin', 20, 20, 280);

INSERT INTO word (name, size) VALUES (DEFAULT , 182137121);
INSERT INTO word (name, size) VALUES ('heaven' , 125662);
INSERT INTO word (name, size) VALUES ('nether' , 563248);
INSERT INTO word (name, size) VALUES ('dungeon' , 25630);

INSERT INTO un_wr (un_id, wr_id) VALUES (0, 0);
INSERT INTO un_wr (un_id, wr_id) VALUES (0, 1);
INSERT INTO un_wr (un_id, wr_id) VALUES (0, 2);
INSERT INTO un_wr (un_id, wr_id) VALUES (0, 3);

INSERT INTO precipitation (name) VALUES ('sunny');
INSERT INTO precipitation (name) VALUES ('rain');
INSERT INTO precipitation (name) VALUES ('snow');
INSERT INTO precipitation (name) VALUES ('thunderstorm');

INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('ocean', 0, 8, '000070');
INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('plains', 0, 2, '8DB360');
INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('desert', 0, 10, 'FA9418');
INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('extreme_hills', 0, 1, '606060');
INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('forest', 0, 2, '056621');
INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('taiga', 1, 3, '0B6659');
INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('frozen_ocean', 0, 67, '9090A0');
INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('ice_plains', 2, 68, 'FFFFFF');
INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('jungle', 1, 2, '537B09');
INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('rain_forest', 3, 2, '22551C');
INSERT INTO biome (name, prec_id, bl_id, color) VALUES ('hell', 0, 69, 'FF0000');

INSERT INTO wr_bi (wr_id, bi_id) VALUES (0, 0);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (0, 1);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (0, 2);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (0, 3);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (0, 4);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (0, 5);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (0, 6);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (0, 7);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (0, 8);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (0, 9);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (2, 10);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 1);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 4);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (1, 8);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 0);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 1);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 2);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 3);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 4);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 6);
INSERT INTO wr_bi (wr_id, bi_id) VALUES (3, 10);