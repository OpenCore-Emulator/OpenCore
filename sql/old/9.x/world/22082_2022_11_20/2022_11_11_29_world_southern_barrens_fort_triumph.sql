SET @CGUID := 396411;
SET @OGUID := 247418;

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46366 WHERE `entry`=208171; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1732 WHERE `entry`=208171; -- Candy Bucket

-- Quests
DELETE FROM `quest_offer_reward` WHERE `ID`=29008;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(29008, 0, 0, 0, 0, 0, 0, 0, 0, 'Candy buckets like this are located in inns throughout the realms. Go ahead... take some!', 46366); -- Candy Bucket

DELETE FROM `gameobject_queststarter` WHERE `id`=208171;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(208171, 29008, 46366);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=208171 AND `quest`=29008);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=208171;

-- Creature spawns
DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 22816, 1, 4709, 4854, '0', 0, 0, 0, 0, -3130.102294921875, -2259.208984375, 97.29632568359375, 3.033955335617065429, 120, 10, 0, 188, 0, 1, 0, 0, 0, 46366); -- Black Cat (Area: Fort Triumph - Difficulty: 0)

-- Old gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN 227336 AND 227388;
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 227336 AND 227388;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+70;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 1, 4709, 4854, '0', 0, 0, -3147.005126953125, -2319.654541015625, 98.949249267578125, 3.874631166458129882, 0, 0, -0.93358039855957031, 0.358368009328842163, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+1, 180405, 1, 4709, 4854, '0', 0, 0, -3187.755126953125, -2279.6650390625, 93.2809295654296875, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+2, 180406, 1, 4709, 4854, '0', 0, 0, -3174.036376953125, -2274.854248046875, 94.75032806396484375, 1.047197580337524414, 0, 0, 0.5, 0.866025388240814208, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+3, 180406, 1, 4709, 4854, '0', 0, 0, -3106.130126953125, -2293.640625, 97.37984466552734375, 5.166176319122314453, 0, 0, -0.52991867065429687, 0.84804844856262207, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+4, 180407, 1, 4709, 4854, '0', 0, 0, -3108.576416015625, -2274.08154296875, 97.362579345703125, 5.340708732604980468, 0, 0, -0.45398998260498046, 0.891006767749786376, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+5, 180407, 1, 4709, 4854, '0', 0, 0, -3165.50341796875, -2325.135498046875, 97.92482757568359375, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+6, 180407, 1, 4709, 4854, '0', 0, 0, -3177.15283203125, -2273.454833984375, 94.7529144287109375, 0.401424884796142578, 0, 0, 0.199367523193359375, 0.979924798011779785, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+7, 180410, 1, 4709, 4854, '0', 0, 0, -3169.286376953125, -2327.088623046875, 97.28879547119140625, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546, 120, 255, 1, 46366), -- G_HangingSkeleton_01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+8, 180410, 1, 4709, 4854, '0', 0, 0, -3113.6025390625, -2270.4375, 96.83802032470703125, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783, 120, 255, 1, 46366), -- G_HangingSkeleton_01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+9, 180410, 1, 4709, 4854, '0', 0, 0, -3114.729248046875, -2308.189208984375, 94.634552001953125, 3.089183330535888671, 0, 0, 0.99965667724609375, 0.026201646775007247, 120, 255, 1, 46366), -- G_HangingSkeleton_01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+10, 180415, 1, 4709, 4854, '0', 0, 0, -3136.678955078125, -2285.897705078125, 95.0146942138671875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+11, 180415, 1, 4709, 4854, '0', 0, 0, -3140.6875, -2286.600830078125, 94.8637847900390625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+12, 180415, 1, 4709, 4854, '0', 0, 0, -3129.225830078125, -2289.713623046875, 95.49250030517578125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+13, 180415, 1, 4709, 4854, '0', 0, 0, -3155.7119140625, -2262.053955078125, 96.452545166015625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+14, 180415, 1, 4709, 4854, '0', 0, 0, -3154.2744140625, -2270.2900390625, 96.91870880126953125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+15, 180415, 1, 4709, 4854, '0', 0, 0, -3155.298583984375, -2266.232666015625, 97.16230010986328125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+16, 180415, 1, 4709, 4854, '0', 0, 0, -3133.147705078125, -2288.060791015625, 95.70511627197265625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+17, 180415, 1, 4709, 4854, '0', 0, 0, -3112.850830078125, -2259.123291015625, 95.65775299072265625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+18, 180415, 1, 4709, 4854, '0', 0, 0, -3158.48095703125, -2259.56591796875, 96.52063751220703125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+19, 180415, 1, 4709, 4854, '0', 0, 0, -3116.986083984375, -2269.045166015625, 98.2745361328125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+20, 180415, 1, 4709, 4854, '0', 0, 0, -3158.451416015625, -2255.5556640625, 96.4629669189453125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+21, 180415, 1, 4709, 4854, '0', 0, 0, -3145.944580078125, -2318.939208984375, 98.62383270263671875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+22, 180415, 1, 4709, 4854, '0', 0, 0, -3113.067626953125, -2267.427001953125, 97.9392852783203125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+23, 180415, 1, 4709, 4854, '0', 0, 0, -3121.04345703125, -2270.046875, 97.71132659912109375, 0.401424884796142578, 0, 0, 0.199367523193359375, 0.979924798011779785, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+24, 180415, 1, 4709, 4854, '0', 0, 0, -3109.16845703125, -2272.892333984375, 97.12329864501953125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+25, 180415, 1, 4709, 4854, '0', 0, 0, -3113.663330078125, -2257.927001953125, 96.69116973876953125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+26, 180415, 1, 4709, 4854, '0', 0, 0, -3166.708251953125, -2324.651123046875, 97.5452728271484375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+27, 180415, 1, 4709, 4854, '0', 0, 0, -3106.333251953125, -2294.998291015625, 97.162139892578125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+28, 180415, 1, 4709, 4854, '0', 0, 0, -3123.052001953125, -2273.210205078125, 97.51555633544921875, 5.550147056579589843, 0, 0, -0.358367919921875, 0.933580458164215087, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+29, 180415, 1, 4709, 4854, '0', 0, 0, -3127.078125, -2273.65966796875, 97.158233642578125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+30, 180426, 1, 4709, 4854, '0', 0, 0, -3159.015625, -2276.41845703125, 94.8774566650390625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+31, 180426, 1, 4709, 4854, '0', 0, 0, -3136.203125, -2289.020751953125, 95.48450469970703125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+32, 180426, 1, 4709, 4854, '0', 0, 0, -3140.986083984375, -2289.692626953125, 92.88883209228515625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+33, 180426, 1, 4709, 4854, '0', 0, 0, -3133.392333984375, -2273.857666015625, 94.1103515625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+34, 180426, 1, 4709, 4854, '0', 0, 0, -3150.382080078125, -2279.510498046875, 93.2991790771484375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+35, 180426, 1, 4709, 4854, '0', 0, 0, -3172.8994140625, -2293.052001953125, 93.26047515869140625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+36, 180426, 1, 4709, 4854, '0', 0, 0, -3160.53466796875, -2292.90966796875, 93.26726531982421875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+37, 180426, 1, 4709, 4854, '0', 0, 0, -3144.807373046875, -2261.015625, 95.31029510498046875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+38, 180427, 1, 4709, 4854, '0', 0, 0, -3140.939208984375, -2283.796875, 93.0189361572265625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+39, 180427, 1, 4709, 4854, '0', 0, 0, -3140.56591796875, -2279.94970703125, 93.18634033203125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+40, 180427, 1, 4709, 4854, '0', 0, 0, -3135.09375, -2280.1025390625, 102.9301834106445312, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+41, 180427, 1, 4709, 4854, '0', 0, 0, -3154.607666015625, -2290.22216796875, 94.82157135009765625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+42, 180427, 1, 4709, 4854, '0', 0, 0, -3166.8525390625, -2296.583251953125, 100.70098876953125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+43, 180471, 1, 4709, 4854, '0', 0, 0, -3085.765625, -2269.28125, 114.194091796875, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+44, 180471, 1, 4709, 4854, '0', 0, 0, -3086.835205078125, -2270.232666015625, 114.1970367431640625, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+45, 180471, 1, 4709, 4854, '0', 0, 0, -3084.333251953125, -2268.803955078125, 114.1806411743164062, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+46, 180471, 1, 4709, 4854, '0', 0, 0, -3069.135498046875, -2272.998291015625, 114.1970367431640625, 2.199114561080932617, 0, 0, 0.8910064697265625, 0.453990638256072998, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+47, 180471, 1, 4709, 4854, '0', 0, 0, -3071.9150390625, -2290.685791015625, 114.1970367431640625, 0.610863447189331054, 0, 0, 0.3007049560546875, 0.953717231750488281, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+48, 180471, 1, 4709, 4854, '0', 0, 0, -3090.913330078125, -2275.671875, 114.1806411743164062, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+49, 180471, 1, 4709, 4854, '0', 0, 0, -3074.40283203125, -2292.140625, 114.1806411743164062, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+50, 180471, 1, 4709, 4854, '0', 0, 0, -3091.64404296875, -2277.010498046875, 114.194091796875, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+51, 180471, 1, 4709, 4854, '0', 0, 0, -3077.3994140625, -2267.953125, 114.1970367431640625, 2.984498262405395507, 0, 0, 0.996916770935058593, 0.078466430306434631, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+52, 180471, 1, 4709, 4854, '0', 0, 0, -3068.145751953125, -2274.032958984375, 114.194091796875, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+53, 180471, 1, 4709, 4854, '0', 0, 0, -3090.5244140625, -2286.81591796875, 114.194091796875, 5.35816192626953125, 0, 0, -0.446197509765625, 0.894934535026550292, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+54, 180471, 1, 4709, 4854, '0', 0, 0, -3067.632080078125, -2275.460205078125, 114.1806411743164062, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+55, 180471, 1, 4709, 4854, '0', 0, 0, -3075.967041015625, -2268.052001953125, 114.194091796875, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+56, 180471, 1, 4709, 4854, '0', 0, 0, -3074.630126953125, -2268.755126953125, 114.1806411743164062, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+57, 180471, 1, 4709, 4854, '0', 0, 0, -3084.0869140625, -2292.217041015625, 114.1806411743164062, 6.073746204376220703, 0, 0, -0.10452842712402343, 0.994521915912628173, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+58, 180471, 1, 4709, 4854, '0', 0, 0, -3089.560791015625, -2287.875, 114.1970367431640625, 5.305802345275878906, 0, 0, -0.46947097778320312, 0.882947921752929687, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+59, 180471, 1, 4709, 4854, '0', 0, 0, -3066.94970703125, -2283.803955078125, 114.194091796875, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+60, 180471, 1, 4709, 4854, '0', 0, 0, -3072.960205078125, -2291.654541015625, 114.194091796875, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+61, 180471, 1, 4709, 4854, '0', 0, 0, -3091.7587890625, -2278.439208984375, 114.1970367431640625, 4.520402908325195312, 0, 0, -0.77162456512451171, 0.636078238487243652, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+62, 180471, 1, 4709, 4854, '0', 0, 0, -3066.861083984375, -2282.376708984375, 114.1970367431640625, 1.448621988296508789, 0, 0, 0.662619590759277343, 0.748956084251403808, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+63, 180471, 1, 4709, 4854, '0', 0, 0, -3091.005126953125, -2285.37158203125, 114.1806411743164062, 5.270895957946777343, 0, 0, -0.48480892181396484, 0.87462007999420166, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+64, 180471, 1, 4709, 4854, '0', 0, 0, -3082.725830078125, -2292.8994140625, 114.194091796875, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+65, 180471, 1, 4709, 4854, '0', 0, 0, -3081.291748046875, -2292.96533203125, 114.1970367431640625, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+66, 180471, 1, 4709, 4854, '0', 0, 0, -3067.65966796875, -2285.147705078125, 114.1806411743164062, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.77714616060256958, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+67, 180472, 1, 4709, 4854, '0', 0, 0, -3150.567626953125, -2334.47216796875, 104.1604232788085937, 1.919861555099487304, 0, 0, 0.819151878356933593, 0.573576688766479492, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+68, 180472, 1, 4709, 4854, '0', 0, 0, -3093.598876953125, -2282.104248046875, 103.5648269653320312, 3.263772249221801757, 0, 0, -0.99813461303710937, 0.061051756143569946, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Fort Triumph - Difficulty: 0)
(@OGUID+69, 180523, 1, 4709, 4854, '0', 0, 0, -3174.08154296875, -2279.01904296875, 93.5771636962890625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Apple Bob (Area: Fort Triumph - Difficulty: 0)
(@OGUID+70, 208171, 1, 4709, 4854, '0', 0, 0, -3181.076416015625, -2279.244873046875, 93.2809295654296875, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511, 120, 255, 1, 46366); -- Candy Bucket (Area: Fort Triumph - Difficulty: 0)

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=12 AND `guid`=@CGUID+0;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(12, @CGUID+0);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+70;
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
(12, @OGUID+21),
(12, @OGUID+22),
(12, @OGUID+23),
(12, @OGUID+24),
(12, @OGUID+25),
(12, @OGUID+26),
(12, @OGUID+27),
(12, @OGUID+28),
(12, @OGUID+29),
(12, @OGUID+30),
(12, @OGUID+31),
(12, @OGUID+32),
(12, @OGUID+33),
(12, @OGUID+34),
(12, @OGUID+35),
(12, @OGUID+36),
(12, @OGUID+37),
(12, @OGUID+38),
(12, @OGUID+39),
(12, @OGUID+40),
(12, @OGUID+41),
(12, @OGUID+42),
(12, @OGUID+43),
(12, @OGUID+44),
(12, @OGUID+45),
(12, @OGUID+46),
(12, @OGUID+47),
(12, @OGUID+48),
(12, @OGUID+49),
(12, @OGUID+50),
(12, @OGUID+51),
(12, @OGUID+52),
(12, @OGUID+53),
(12, @OGUID+54),
(12, @OGUID+55),
(12, @OGUID+56),
(12, @OGUID+57),
(12, @OGUID+58),
(12, @OGUID+59),
(12, @OGUID+60),
(12, @OGUID+61),
(12, @OGUID+62),
(12, @OGUID+63),
(12, @OGUID+64),
(12, @OGUID+65),
(12, @OGUID+66),
(12, @OGUID+67),
(12, @OGUID+68),
(12, @OGUID+69),
(12, @OGUID+70);
