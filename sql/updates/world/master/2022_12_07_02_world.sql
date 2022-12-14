SET @CGUID := 396528;
SET @OGUID := 249097;
SET @EVENT := 26;

-- Creature spawns
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+3;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 32823, 1, 618, 2255, '0', 0, 0, 0, 0, 6809.16650390625, -4595.330078125, 710.62908935546875, 0, 120, 0, 0, 19343, 0, 0, 0, 0, 0, 46741), -- Bountiful Table (Area: Everlook - Difficulty: 0)
(@CGUID+1, 32823, 1, 618, 2255, '0', 0, 0, 0, 0, 6780.05029296875, -4730.62841796875, 702.353759765625, 0, 120, 0, 0, 19343, 0, 0, 0, 0, 0, 46741), -- Bountiful Table (Area: Everlook - Difficulty: 0)
(@CGUID+2, 34653, 1, 618, 2255, '0', 0, 0, 0, 0, 6787.0322265625, -4731.72216796875, 702.35589599609375, 5.323254108428955078, 120, 0, 0, 19343, 0, 0, 0, 0, 0, 46741), -- Bountiful Table Hostess (Area: Everlook - Difficulty: 0)
(@CGUID+3, 34654, 1, 618, 2255, '0', 0, 0, 0, 0, 6804.53662109375, -4599.6005859375, 710.8663330078125, 4.904375076293945312, 120, 0, 0, 19343, 0, 0, 0, 0, 0, 46741); -- Bountiful Feast Hostess (Area: Everlook - Difficulty: 0)

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+31;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 179968, 1, 618, 2255, '0', 0, 0, 6806.6337890625, -4597.30224609375, 710.83160400390625, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 120, 255, 1, 46741), -- Haystack 01 (Area: Everlook - Difficulty: 0)
(@OGUID+1, 179968, 1, 618, 2255, '0', 0, 0, 6814, -4595.23095703125, 710.669189453125, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344, 120, 255, 1, 46741), -- Haystack 01 (Area: Everlook - Difficulty: 0)
(@OGUID+2, 179968, 1, 618, 2255, '0', 0, 0, 6811.1181640625, -4598.91650390625, 710.669189453125, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675, 120, 255, 1, 46741), -- Haystack 01 (Area: Everlook - Difficulty: 0)
(@OGUID+3, 179968, 1, 618, 2255, '0', 0, 0, 6811.41162109375, -4591.29150390625, 710.669189453125, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687, 120, 255, 1, 46741), -- Haystack 01 (Area: Everlook - Difficulty: 0)
(@OGUID+4, 179968, 1, 618, 2255, '0', 0, 0, 6806.5556640625, -4592.578125, 710.72052001953125, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294, 120, 255, 1, 46741), -- Haystack 01 (Area: Everlook - Difficulty: 0)
(@OGUID+5, 179968, 1, 618, 2255, '0', 0, 0, 6777.23095703125, -4727.703125, 702.3990478515625, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958, 120, 255, 1, 46741), -- Haystack 01 (Area: Everlook - Difficulty: 0)
(@OGUID+6, 179968, 1, 618, 2255, '0', 0, 0, 6782.515625, -4726.517578125, 702.30340576171875, 4.241150379180908203, 0, 0, -0.85264015197753906, 0.522498607635498046, 120, 255, 1, 46741), -- Haystack 01 (Area: Everlook - Difficulty: 0)
(@OGUID+7, 179968, 1, 618, 2255, '0', 0, 0, 6782.11474609375, -4734.51220703125, 702.49652099609375, 1.85004889965057373, 0, 0, 0.798635482788085937, 0.60181504487991333, 120, 255, 1, 46741), -- Haystack 01 (Area: Everlook - Difficulty: 0)
(@OGUID+8, 179968, 1, 618, 2255, '0', 0, 0, 6785.236328125, -4730.8837890625, 702.29150390625, 3.089183330535888671, 0, 0, 0.99965667724609375, 0.026201646775007247, 120, 255, 1, 46741), -- Haystack 01 (Area: Everlook - Difficulty: 0)
(@OGUID+9, 179968, 1, 618, 2255, '0', 0, 0, 6777.79345703125, -4732.83349609375, 702.66839599609375, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281, 120, 255, 1, 46741), -- Haystack 01 (Area: Everlook - Difficulty: 0)
(@OGUID+10, 180353, 1, 618, 2255, '0', 0, 0, 6815.26220703125, -4595.16162109375, 710.669189453125, 3.263772249221801757, 0, 0, -0.99813461303710937, 0.061051756143569946, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Everlook - Difficulty: 0)
(@OGUID+11, 180353, 1, 618, 2255, '0', 0, 0, 6805.609375, -4591.73095703125, 710.76910400390625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Everlook - Difficulty: 0)
(@OGUID+12, 180353, 1, 618, 2255, '0', 0, 0, 6811.68212890625, -4590.251953125, 710.60302734375, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Everlook - Difficulty: 0)
(@OGUID+13, 180353, 1, 618, 2255, '0', 0, 0, 6811.56591796875, -4600.0068359375, 710.669189453125, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Everlook - Difficulty: 0)
(@OGUID+14, 180353, 1, 618, 2255, '0', 0, 0, 6805.71337890625, -4597.70166015625, 710.8819580078125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Everlook - Difficulty: 0)
(@OGUID+15, 180353, 1, 618, 2255, '0', 0, 0, 6776.46875, -4726.91650390625, 702.48956298828125, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Everlook - Difficulty: 0)
(@OGUID+16, 180353, 1, 618, 2255, '0', 0, 0, 6782.9912109375, -4725.6962890625, 702.28759765625, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Everlook - Difficulty: 0)
(@OGUID+17, 180353, 1, 618, 2255, '0', 0, 0, 6786.13525390625, -4730.93212890625, 702.28125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Everlook - Difficulty: 0)
(@OGUID+18, 180353, 1, 618, 2255, '0', 0, 0, 6782.56103515625, -4735.84716796875, 702.3612060546875, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Everlook - Difficulty: 0)
(@OGUID+19, 180353, 1, 618, 2255, '0', 0, 0, 6776.90283203125, -4733.5380859375, 702.7430419921875, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Everlook - Difficulty: 0)
(@OGUID+20, 195164, 1, 618, 2255, '0', 0, 0, 6813.861328125, -4595.37353515625, 711.38812255859375, 3.141592741012573242, 0, 0, -1, 0, 120, 255, 1, 46741), -- Pumpkin (Area: Everlook - Difficulty: 0)
(@OGUID+21, 195164, 1, 618, 2255, '0', 0, 0, 6811.31787109375, -4591.3193359375, 711.38812255859375, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046, 120, 255, 1, 46741), -- Pumpkin (Area: Everlook - Difficulty: 0)
(@OGUID+22, 195164, 1, 618, 2255, '0', 0, 0, 6811.07666015625, -4599.01025390625, 711.38812255859375, 1.937312245368957519, 0, 0, 0.824125289916992187, 0.566407561302185058, 120, 255, 1, 46741), -- Pumpkin (Area: Everlook - Difficulty: 0)
(@OGUID+23, 195164, 1, 618, 2255, '0', 0, 0, 6806.49462890625, -4597.4443359375, 711.56622314453125, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697, 120, 255, 1, 46741), -- Pumpkin (Area: Everlook - Difficulty: 0)
(@OGUID+24, 195164, 1, 618, 2255, '0', 0, 0, 6806.4619140625, -4592.60595703125, 711.44122314453125, 5.602506637573242187, 0, 0, -0.33380699157714843, 0.942641437053680419, 120, 255, 1, 46741), -- Pumpkin (Area: Everlook - Difficulty: 0)
(@OGUID+25, 195164, 1, 618, 2255, '0', 0, 0, 6782.4912109375, -4726.5625, 702.98785400390625, 4.241150379180908203, 0, 0, -0.85264015197753906, 0.522498607635498046, 120, 255, 1, 46741), -- Pumpkin (Area: Everlook - Difficulty: 0)
(@OGUID+26, 195164, 1, 618, 2255, '0', 0, 0, 6777.328125, -4727.74853515625, 703.0811767578125, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958, 120, 255, 1, 46741), -- Pumpkin (Area: Everlook - Difficulty: 0)
(@OGUID+27, 195164, 1, 618, 2255, '0', 0, 0, 6777.72412109375, -4732.76416015625, 703.35028076171875, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281, 120, 255, 1, 46741), -- Pumpkin (Area: Everlook - Difficulty: 0)
(@OGUID+28, 195164, 1, 618, 2255, '0', 0, 0, 6785.1875, -4730.814453125, 702.97540283203125, 3.141592741012573242, 0, 0, -1, 0, 120, 255, 1, 46741), -- Pumpkin (Area: Everlook - Difficulty: 0)
(@OGUID+29, 195164, 1, 618, 2255, '0', 0, 0, 6782.2119140625, -4734.55712890625, 703.16973876953125, 1.884953022003173828, 0, 0, 0.809016227722167968, 0.587786316871643066, 120, 255, 1, 46741), -- Pumpkin (Area: Everlook - Difficulty: 0)
(@OGUID+30, 195664, 1, 618, 2255, '0', 0, 0, 6809.169921875, -4595.330078125, 710.5460205078125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- [DND] Collision Thanksgiving Table Size (Area: Everlook - Difficulty: 0)
(@OGUID+31, 195664, 1, 618, 2255, '0', 0, 0, 6780.05029296875, -4730.62841796875, 702.27044677734375, 0, 0, 0, 0, 1, 120, 255, 1, 46741); -- [DND] Collision Thanksgiving Table Size (Area: Everlook - Difficulty: 0)

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @CGUID+0 AND @CGUID+3;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(@EVENT, @CGUID+0), 
(@EVENT, @CGUID+1),
(@EVENT, @CGUID+2),
(@EVENT, @CGUID+3);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @OGUID+0 AND @OGUID+31;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@EVENT, @OGUID+0),
(@EVENT, @OGUID+1),
(@EVENT, @OGUID+2),
(@EVENT, @OGUID+3),
(@EVENT, @OGUID+4),
(@EVENT, @OGUID+5),
(@EVENT, @OGUID+6),
(@EVENT, @OGUID+7),
(@EVENT, @OGUID+8),
(@EVENT, @OGUID+9),
(@EVENT, @OGUID+10),
(@EVENT, @OGUID+11),
(@EVENT, @OGUID+12),
(@EVENT, @OGUID+13),
(@EVENT, @OGUID+14),
(@EVENT, @OGUID+15),
(@EVENT, @OGUID+16),
(@EVENT, @OGUID+17),
(@EVENT, @OGUID+18),
(@EVENT, @OGUID+19),
(@EVENT, @OGUID+20),
(@EVENT, @OGUID+21),
(@EVENT, @OGUID+22),
(@EVENT, @OGUID+23),
(@EVENT, @OGUID+24),
(@EVENT, @OGUID+25),
(@EVENT, @OGUID+26),
(@EVENT, @OGUID+27),
(@EVENT, @OGUID+28),
(@EVENT, @OGUID+29),
(@EVENT, @OGUID+30),
(@EVENT, @OGUID+31);
