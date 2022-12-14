SET @CGUID := 396412;
SET @OGUID := 247694;

-- Gameobject templates
UPDATE `gameobject_template` SET `Data6`=0, `ContentTuningId`=425, `VerifiedBuild`=46366 WHERE `entry`=208160; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry`=208160; -- Candy Bucket

-- Quests
DELETE FROM `quest_offer_reward` WHERE `ID`=28996;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(28996, 0, 0, 0, 0, 0, 0, 0, 0, 'Candy buckets like this are located in inns throughout the realms. Go ahead... take some!', 46366); -- Candy Bucket

DELETE FROM `gameobject_queststarter` WHERE `id`=208160;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(208160, 28996, 46366);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=208160 AND `quest`=28996);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=208160;

-- Creature spawns
DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 22816, 1, 357, 5002, '0', 0, 0, 0, 0, -3076.993408203125, 2583.047607421875, 56.78761672973632812, 4.667431831359863281, 120, 10, 0, 188, 0, 1, 0, 0, 0, 46366); -- Black Cat (Area: Camp Ataya - Difficulty: 0)

-- Old gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN 227678 AND 227698;
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 227678 AND 227698;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+21;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 1, 357, 5002, '0', 0, 0, -3099.138916015625, 2568.799560546875, 50.17909622192382812, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+1, 180406, 1, 357, 5002, '0', 0, 0, -3090.01904296875, 2553.565185546875, 60.36992645263671875, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+2, 180406, 1, 357, 5002, '0', 0, 0, -3041.9931640625, 2558.14501953125, 52.69311141967773437, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+3, 180407, 1, 357, 5002, '0', 0, 0, -3068.015625, 2560.755126953125, 53.10766983032226562, 1.151916384696960449, 0, 0, 0.544638633728027343, 0.838670849800109863, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+4, 180415, 1, 357, 5002, '0', 0, 0, -3094.828125, 2560.00439453125, 52.31954193115234375, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 46366), -- CandleBlack01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+5, 180415, 1, 357, 5002, '0', 0, 0, -3098.9150390625, 2566.762939453125, 52.49582290649414062, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 46366), -- CandleBlack01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+6, 180425, 1, 357, 5002, '0', 0, 0, -3083.697998046875, 2546.736083984375, 52.13373947143554687, 1.186823248863220214, 0, 0, 0.559192657470703125, 0.829037725925445556, 120, 255, 1, 46366), -- SkullCandle01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+7, 180426, 1, 357, 5002, '0', 0, 0, -3086.510498046875, 2568.942626953125, 50.17909622192382812, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 46366), -- Bat01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+8, 180426, 1, 357, 5002, '0', 0, 0, -3086.026123046875, 2572.739501953125, 55.876190185546875, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 46366), -- Bat01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+9, 180426, 1, 357, 5002, '0', 0, 0, -3096.28125, 2577.775146484375, 50.17909622192382812, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 46366), -- Bat01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+10, 180427, 1, 357, 5002, '0', 0, 0, -3102.5869140625, 2578.46435546875, 64.87989044189453125, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 46366), -- Bat02 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+11, 180427, 1, 357, 5002, '0', 0, 0, -3098.19970703125, 2590.7421875, 65.4478302001953125, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 46366), -- Bat02 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+12, 180427, 1, 357, 5002, '0', 0, 0, -3092.140625, 2576.9931640625, 59.86314010620117187, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 46366), -- Bat02 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+13, 180471, 1, 357, 5002, '0', 0, 0, -3065.642333984375, 2559.48095703125, 58.4449462890625, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+14, 180471, 1, 357, 5002, '0', 0, 0, -3065.642333984375, 2559.48095703125, 60.08661651611328125, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+15, 180471, 1, 357, 5002, '0', 0, 0, -3066.257080078125, 2558.65625, 60.17853546142578125, 1.169368624687194824, 0, 0, 0.551936149597167968, 0.833886384963989257, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+16, 180471, 1, 357, 5002, '0', 0, 0, -3092.34375, 2554.709228515625, 54.05554580688476562, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+17, 180471, 1, 357, 5002, '0', 0, 0, -3088.864501953125, 2550.724853515625, 54.05554580688476562, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+18, 180472, 1, 357, 5002, '0', 0, 0, -3095.835205078125, 2559.58251953125, 55.12337493896484375, 0.733038187026977539, 0, 0, 0.358367919921875, 0.933580458164215087, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+19, 180472, 1, 357, 5002, '0', 0, 0, -3076.232666015625, 2591.376708984375, 61.20790481567382812, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Camp Ataya - Difficulty: 0)
(@OGUID+20, 180523, 1, 357, 5002, '0', 0, 0, -3098.897705078125, 2558.19189453125, 50.51286697387695312, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Apple Bob (Area: Camp Ataya - Difficulty: 0)
(@OGUID+21, 208160, 1, 357, 5002, '0', 0, 0, -3093.390625, 2561.03466796875, 50.17909622192382812, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881, 120, 255, 1, 46366); -- Candy Bucket (Area: Camp Ataya - Difficulty: 0)

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=12 AND `guid`=@CGUID+0;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(12, @CGUID+0);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+21;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @OGUID+0),
(12, @OGUID+1),
(12, @OGUID+2),
(12, @OGUID+3),
(12, @OGUID+4),
(12, @OGUID+5),
(12, @OGUID+6),
(12, @OGUID+7),
(12, @OGUID+8),
(12, @OGUID+9),
(12, @OGUID+10),
(12, @OGUID+11),
(12, @OGUID+12),
(12, @OGUID+13),
(12, @OGUID+14),
(12, @OGUID+15),
(12, @OGUID+16),
(12, @OGUID+17),
(12, @OGUID+18),
(12, @OGUID+19),
(12, @OGUID+20),
(12, @OGUID+21);
