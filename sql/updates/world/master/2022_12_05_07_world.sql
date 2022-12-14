SET @CGUID := 396466;
SET @OGUID := 248579;
SET @EVENT := 26;

-- Creature spawns
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+2;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 32823, 530, 3524, 3576, '0', 0, 0, 0, 0, -4209.03466796875, -12604.923828125, 34.42758941650390625, 0, 120, 0, 0, 19343, 0, 0, 0, 0, 0, 46741), -- Bountiful Table (Area: Azure Watch - Difficulty: 0) (Auras: )
(@CGUID+1, 32823, 530, 3524, 3576, '0', 0, 0, 0, 0, -4183.00341796875, -12604.2568359375, 35.16207504272460937, 0, 120, 0, 0, 19343, 0, 0, 0, 0, 0, 46741), -- Bountiful Table (Area: Azure Watch - Difficulty: 0)
(@CGUID+2, 34653, 530, 3524, 3576, '0', 0, 0, 0, 0, -4206.533203125, -12597.8056640625, 34.61111068725585937, 0.994837641716003417, 120, 0, 0, 19343, 0, 0, 0, 0, 0, 46741); -- Bountiful Table Hostess (Area: Azure Watch - Difficulty: 0)

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+51;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 179968, 530, 3524, 3576, '0', 0, 0, -4187.33837890625, -12601.7431640625, 35.00790023803710937, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+1, 179968, 530, 3524, 3576, '0', 0, 0, -4202.8125, -12604.1220703125, 34.2072906494140625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+2, 179968, 530, 3524, 3576, '0', 0, 0, -4205.27587890625, -12599.8720703125, 34.407257080078125, 4.1538848876953125, 0, 0, -0.8746194839477539, 0.484810054302215576, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+3, 179968, 530, 3524, 3576, '0', 0, 0, -4211.6787109375, -12608.7880859375, 34.56770706176757812, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+4, 179968, 530, 3524, 3576, '0', 0, 0, -4179.24462890625, -12599.205078125, 35.87847137451171875, 4.1538848876953125, 0, 0, -0.8746194839477539, 0.484810054302215576, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+5, 179968, 530, 3524, 3576, '0', 0, 0, -4185.6474609375, -12608.1220703125, 35.12382888793945312, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+6, 179968, 530, 3524, 3576, '0', 0, 0, -4206.8056640625, -12599.4658203125, 34.54445266723632812, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+7, 179968, 530, 3524, 3576, '0', 0, 0, -4207.28125, -12610.4658203125, 34.3675079345703125, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+8, 179968, 530, 3524, 3576, '0', 0, 0, -4179.609375, -12609.3134765625, 35.16167068481445312, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+9, 179968, 530, 3524, 3576, '0', 0, 0, -4202.9775390625, -12605.6845703125, 34.17027664184570312, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+10, 179968, 530, 3524, 3576, '0', 0, 0, -4205.640625, -12609.978515625, 34.28645706176757812, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+11, 179968, 530, 3524, 3576, '0', 0, 0, -4181.25, -12609.798828125, 35.077728271484375, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+12, 179968, 530, 3524, 3576, '0', 0, 0, -4186.6943359375, -12606.6220703125, 34.98984146118164062, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+13, 179968, 530, 3524, 3576, '0', 0, 0, -4176.9462890625, -12605.017578125, 35.421875, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+14, 179968, 530, 3524, 3576, '0', 0, 0, -4213.36962890625, -12602.41015625, 34.8125, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+15, 179968, 530, 3524, 3576, '0', 0, 0, -4180.7744140625, -12598.798828125, 35.91840362548828125, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+16, 179968, 530, 3524, 3576, '0', 0, 0, -4176.78125, -12603.455078125, 35.55034637451171875, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+17, 179968, 530, 3524, 3576, '0', 0, 0, -4212.7255859375, -12607.2880859375, 34.61284637451171875, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+18, 179968, 530, 3524, 3576, '0', 0, 0, -4186.2587890625, -12600.3994140625, 35.23263931274414062, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+19, 179968, 530, 3524, 3576, '0', 0, 0, -4212.2900390625, -12601.06640625, 34.88541793823242187, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916, 120, 255, 1, 46741), -- Haystack 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+20, 180353, 530, 3524, 3576, '0', 0, 0, -4206.017578125, -12599.6142578125, 34.47569656372070312, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+21, 180353, 530, 3524, 3576, '0', 0, 0, -4202.82470703125, -12604.90625, 34.18402862548828125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+22, 180353, 530, 3524, 3576, '0', 0, 0, -4187.01025390625, -12600.90625, 35.0868072509765625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+23, 180353, 530, 3524, 3576, '0', 0, 0, -4213.04150390625, -12601.5732421875, 34.85069656372070312, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+24, 180353, 530, 3524, 3576, '0', 0, 0, -4212.34716796875, -12608.2119140625, 34.57972335815429687, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+25, 180353, 530, 3524, 3576, '0', 0, 0, -4206.4443359375, -12610.34375, 34.33842086791992187, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+26, 180353, 530, 3524, 3576, '0', 0, 0, -4186.31591796875, -12607.544921875, 35.0684967041015625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+27, 180353, 530, 3524, 3576, '0', 0, 0, -4180.4130859375, -12609.6767578125, 35.09911727905273437, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+28, 180353, 530, 3524, 3576, '0', 0, 0, -4179.986328125, -12598.9482421875, 35.91145706176757812, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+29, 180353, 530, 3524, 3576, '0', 0, 0, -4176.79345703125, -12604.2392578125, 35.46875, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Azure Watch - Difficulty: 0)
(@OGUID+30, 195164, 530, 3524, 3576, '0', 0, 0, -4202.90625, -12604.1494140625, 34.89220428466796875, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+31, 195164, 530, 3524, 3576, '0', 0, 0, -4187.2412109375, -12601.7880859375, 35.72325515747070312, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+32, 195164, 530, 3524, 3576, '0', 0, 0, -4205.33837890625, -12599.853515625, 35.09649658203125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+33, 195164, 530, 3524, 3576, '0', 0, 0, -4179.30712890625, -12599.1884765625, 36.59477996826171875, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+34, 195164, 530, 3524, 3576, '0', 0, 0, -4181.298828125, -12609.728515625, 35.79798507690429687, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+35, 195164, 530, 3524, 3576, '0', 0, 0, -4176.875, -12603.482421875, 36.26839065551757812, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+36, 195164, 530, 3524, 3576, '0', 0, 0, -4212.67724609375, -12607.2431640625, 35.29962158203125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+37, 195164, 530, 3524, 3576, '0', 0, 0, -4212.3125, -12601.111328125, 35.56524658203125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+38, 195164, 530, 3524, 3576, '0', 0, 0, -4186.64599609375, -12606.576171875, 35.70222854614257812, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+39, 195164, 530, 3524, 3576, '0', 0, 0, -4207.330078125, -12610.396484375, 35.05656814575195312, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+40, 195164, 530, 3524, 3576, '0', 0, 0, -4203.1162109375, -12605.826171875, 34.85738754272460937, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+41, 195164, 530, 3524, 3576, '0', 0, 0, -4185.71728515625, -12608.0517578125, 35.83351898193359375, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+42, 195164, 530, 3524, 3576, '0', 0, 0, -4186.28125, -12600.4443359375, 35.93852996826171875, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+43, 195164, 530, 3524, 3576, '0', 0, 0, -4179.470703125, -12609.1943359375, 35.88818359375, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+44, 195164, 530, 3524, 3576, '0', 0, 0, -4211.74853515625, -12608.71875, 35.24753952026367187, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+45, 195164, 530, 3524, 3576, '0', 0, 0, -4177.0849609375, -12605.16015625, 36.13471221923828125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+46, 195164, 530, 3524, 3576, '0', 0, 0, -4206.84716796875, -12599.5595703125, 35.22844314575195312, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+47, 195164, 530, 3524, 3576, '0', 0, 0, -4180.81591796875, -12598.892578125, 36.61908721923828125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+48, 195164, 530, 3524, 3576, '0', 0, 0, -4205.501953125, -12609.861328125, 34.95413589477539062, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+49, 195164, 530, 3524, 3576, '0', 0, 0, -4213.2724609375, -12602.455078125, 35.4958038330078125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Azure Watch - Difficulty: 0)
(@OGUID+50, 195664, 530, 3524, 3576, '0', 0, 0, -4183.00341796875, -12604.2568359375, 35.07874298095703125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- [DND] Collision Thanksgiving Table Size (Area: Azure Watch - Difficulty: 0)
(@OGUID+51, 195664, 530, 3524, 3576, '0', 0, 0, -4209.03466796875, -12604.923828125, 34.34425735473632812, 0, 0, 0, 0, 1, 120, 255, 1, 46741); -- [DND] Collision Thanksgiving Table Size (Area: Azure Watch - Difficulty: 0)

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @CGUID+0 AND @CGUID+2;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(@EVENT, @CGUID+0), 
(@EVENT, @CGUID+1),
(@EVENT, @CGUID+2);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @OGUID+0 AND @OGUID+51;
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
(@EVENT, @OGUID+31),
(@EVENT, @OGUID+32),
(@EVENT, @OGUID+33),
(@EVENT, @OGUID+34),
(@EVENT, @OGUID+35),
(@EVENT, @OGUID+36),
(@EVENT, @OGUID+37),
(@EVENT, @OGUID+38),
(@EVENT, @OGUID+39),
(@EVENT, @OGUID+40),
(@EVENT, @OGUID+41),
(@EVENT, @OGUID+42),
(@EVENT, @OGUID+43),
(@EVENT, @OGUID+44),
(@EVENT, @OGUID+45),
(@EVENT, @OGUID+46),
(@EVENT, @OGUID+47),
(@EVENT, @OGUID+48),
(@EVENT, @OGUID+49),
(@EVENT, @OGUID+50),
(@EVENT, @OGUID+51);
