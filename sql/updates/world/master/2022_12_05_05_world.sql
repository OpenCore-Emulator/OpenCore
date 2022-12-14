SET @CGUID := 396456;
SET @OGUID := 248469;
SET @EVENT := 26;

-- Creature spawns
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+2;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 32823, 1, 141, 186, '0', 0, 0, 0, 0, 9848.1533203125, 940.576416015625, 1307.310546875, 0, 120, 0, 0, 19343, 0, 0, 0, 0, 0, 46741), -- Bountiful Table (Area: Dolanaar - Difficulty: 0)
(@CGUID+1, 32823, 1, 141, 186, '0', 0, 0, 0, 0, 9898.7958984375, 944.94097900390625, 1312.765625, 0, 120, 0, 0, 19343, 0, 0, 0, 0, 0, 46741), -- Bountiful Table (Area: Dolanaar - Difficulty: 0)
(@CGUID+2, 34653, 1, 141, 186, '0', 0, 0, 0, 0, 9850.5693359375, 947.52606201171875, 1307.8408203125, 0.680678427219390869, 120, 0, 0, 19343, 0, 0, 0, 0, 0, 46741); -- Bountiful Table Hostess (Area: Dolanaar - Difficulty: 0)

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+51;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 179968, 1, 141, 186, '0', 0, 0, 9905.0595703125, 945.7725830078125, 1313.185791015625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+1, 179968, 1, 141, 186, '0', 0, 0, 9894.5029296875, 947.484375, 1312.4947509765625, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+2, 179968, 1, 141, 186, '0', 0, 0, 9851.9111328125, 945.62847900390625, 1307.57470703125, 4.1538848876953125, 0, 0, -0.8746194839477539, 0.484810054302215576, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+3, 179968, 1, 141, 186, '0', 0, 0, 9902.5966796875, 950.0225830078125, 1312.97265625, 4.1538848876953125, 0, 0, -0.8746194839477539, 0.484810054302215576, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+4, 179968, 1, 141, 186, '0', 0, 0, 9854.2099609375, 939.81597900390625, 1307.8663330078125, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+5, 179968, 1, 141, 186, '0', 0, 0, 9904.8955078125, 944.2100830078125, 1313.1441650390625, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+6, 179968, 1, 141, 186, '0', 0, 0, 9844.4619140625, 938.2117919921875, 1306.9791259765625, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+7, 179968, 1, 141, 186, '0', 0, 0, 9896.193359375, 941.10589599609375, 1312.6258544921875, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+8, 179968, 1, 141, 186, '0', 0, 0, 9843.8173828125, 943.09027099609375, 1307.204833984375, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+9, 179968, 1, 141, 186, '0', 0, 0, 9844.8974609375, 944.43402099609375, 1307.453125, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+10, 179968, 1, 141, 186, '0', 0, 0, 9854.375, 941.37847900390625, 1307.79345703125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+11, 179968, 1, 141, 186, '0', 0, 0, 9850.3818359375, 946.03472900390625, 1307.640625, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+12, 179968, 1, 141, 186, '0', 0, 0, 9895.5830078125, 948.828125, 1312.5850830078125, 2.076939344406127929, 0, 0, 0.861628532409667968, 0.50753939151763916, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+13, 179968, 1, 141, 186, '0', 0, 0, 9849.90625, 935.03472900390625, 1307.546875, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+14, 179968, 1, 141, 186, '0', 0, 0, 9902.2314453125, 939.9149169921875, 1312.9202880859375, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+15, 179968, 1, 141, 186, '0', 0, 0, 9845.5087890625, 936.7117919921875, 1307.0260009765625, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+16, 179968, 1, 141, 186, '0', 0, 0, 9895.146484375, 942.60589599609375, 1312.548583984375, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+17, 179968, 1, 141, 186, '0', 0, 0, 9851.546875, 935.52081298828125, 1307.8021240234375, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+18, 179968, 1, 141, 186, '0', 0, 0, 9901.0673828125, 950.4288330078125, 1312.8994140625, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+19, 179968, 1, 141, 186, '0', 0, 0, 9900.5908203125, 939.4288330078125, 1312.7974853515625, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849, 120, 255, 1, 46741), -- Haystack 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+20, 180353, 1, 141, 186, '0', 0, 0, 9901.85546875, 950.279541015625, 1312.9337158203125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+21, 180353, 1, 141, 186, '0', 0, 0, 9844.1455078125, 943.92706298828125, 1307.329833984375, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+22, 180353, 1, 141, 186, '0', 0, 0, 9905.0478515625, 944.98785400390625, 1313.170166015625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+23, 180353, 1, 141, 186, '0', 0, 0, 9894.8310546875, 948.3211669921875, 1312.5086669921875, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+24, 180353, 1, 141, 186, '0', 0, 0, 9895.5263671875, 941.68231201171875, 1312.5797119140625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+25, 180353, 1, 141, 186, '0', 0, 0, 9844.8408203125, 937.2882080078125, 1306.9703369140625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+26, 180353, 1, 141, 186, '0', 0, 0, 9850.7431640625, 935.15625, 1307.6754150390625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+27, 180353, 1, 141, 186, '0', 0, 0, 9901.427734375, 939.55035400390625, 1312.8619384765625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+28, 180353, 1, 141, 186, '0', 0, 0, 9851.169921875, 945.88543701171875, 1307.6007080078125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+29, 180353, 1, 141, 186, '0', 0, 0, 9854.36328125, 940.59375, 1307.8350830078125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Freestanding Torch 01 (Area: Dolanaar - Difficulty: 0)
(@OGUID+30, 195164, 1, 141, 186, '0', 0, 0, 9895.1953125, 942.65106201171875, 1313.26220703125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+31, 195164, 1, 141, 186, '0', 0, 0, 9904.9658203125, 945.74481201171875, 1313.873291015625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+32, 195164, 1, 141, 186, '0', 0, 0, 9854.28125, 941.3507080078125, 1308.4913330078125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+33, 195164, 1, 141, 186, '0', 0, 0, 9900.5439453125, 939.498291015625, 1313.5010986328125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+34, 195164, 1, 141, 186, '0', 0, 0, 9894.599609375, 947.43927001953125, 1313.208984375, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+35, 195164, 1, 141, 186, '0', 0, 0, 9850.3408203125, 945.94097900390625, 1308.34033203125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+36, 195164, 1, 141, 186, '0', 0, 0, 9896.1240234375, 941.17535400390625, 1313.328857421875, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+37, 195164, 1, 141, 186, '0', 0, 0, 9851.8486328125, 945.64581298828125, 1308.27783203125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+38, 195164, 1, 141, 186, '0', 0, 0, 9844.5107421875, 938.2569580078125, 1307.6900634765625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+39, 195164, 1, 141, 186, '0', 0, 0, 9849.857421875, 935.10418701171875, 1308.2447509765625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+40, 195164, 1, 141, 186, '0', 0, 0, 9851.685546875, 935.638916015625, 1308.529541015625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+41, 195164, 1, 141, 186, '0', 0, 0, 9854.0712890625, 939.67364501953125, 1308.5677490234375, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+42, 195164, 1, 141, 186, '0', 0, 0, 9895.5595703125, 948.78302001953125, 1313.2882080078125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+43, 195164, 1, 141, 186, '0', 0, 0, 9845.439453125, 936.78125, 1307.7257080078125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+44, 195164, 1, 141, 186, '0', 0, 0, 9844.875, 944.388916015625, 1308.15283203125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+45, 195164, 1, 141, 186, '0', 0, 0, 9902.5341796875, 950.0399169921875, 1313.6727294921875, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+46, 195164, 1, 141, 186, '0', 0, 0, 9843.9150390625, 943.045166015625, 1307.9124755859375, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+47, 195164, 1, 141, 186, '0', 0, 0, 9904.755859375, 944.06768798828125, 1313.826416015625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+48, 195164, 1, 141, 186, '0', 0, 0, 9901.0263671875, 950.3350830078125, 1313.6065673828125, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+49, 195164, 1, 141, 186, '0', 0, 0, 9902.3720703125, 940.03302001953125, 1313.6304931640625, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- Pumpkin (Area: Dolanaar - Difficulty: 0)
(@OGUID+50, 195664, 1, 141, 186, '0', 0, 0, 9898.7900390625, 944.94097900390625, 1312.6800537109375, 0, 0, 0, 0, 1, 120, 255, 1, 46741), -- [DND] Collision Thanksgiving Table Size (Area: Dolanaar - Difficulty: 0)
(@OGUID+51, 195664, 1, 141, 186, '0', 0, 0, 9848.150390625, 940.57598876953125, 1307.22998046875, 0, 0, 0, 0, 1, 120, 255, 1, 46741); -- [DND] Collision Thanksgiving Table Size (Area: Dolanaar - Difficulty: 0)

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
