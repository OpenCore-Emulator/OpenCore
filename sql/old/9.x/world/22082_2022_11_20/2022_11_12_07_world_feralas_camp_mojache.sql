SET @OGUID := 247716;

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46366 WHERE `entry`=190088; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry`=190088; -- Candy Bucket

-- Quests
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID`=12386;

DELETE FROM `gameobject_queststarter` WHERE `id`=190088;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190088, 12386, 46366);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=190088 AND `quest`=12386);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=190088;

-- Old gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN 227599 AND 227637;
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 227599 AND 227637;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+38;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 1, 357, 1099, '0', 0, 0, -4431.82275390625, 269.430572509765625, 40.19013595581054687, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+1, 180405, 1, 357, 1099, '0', 0, 0, -4421.5380859375, 249.7777862548828125, 40.190765380859375, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+2, 180406, 1, 357, 1099, '0', 0, 0, -4434.0947265625, 250.373565673828125, 53.552032470703125, 2.426007747650146484, 0, 0, 0.936672210693359375, 0.350207358598709106, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+3, 180406, 1, 357, 1099, '0', 0, 0, -4477.54296875, 241.1378021240234375, 47.33536148071289062, 1.535889506340026855, 0, 0, 0.694658279418945312, 0.719339847564697265, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+4, 180407, 1, 357, 1099, '0', 0, 0, -4438.30517578125, 259.156005859375, 53.552032470703125, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+5, 180407, 1, 357, 1099, '0', 0, 0, -4412.91162109375, 206.7220916748046875, 26.282745361328125, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+6, 180411, 1, 357, 1099, '0', 0, 0, -4431.64599609375, 257.35589599609375, 64.89984130859375, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179, 120, 255, 1, 46366), -- G_Ghost_01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+7, 180426, 1, 357, 1099, '0', 0, 0, -4397.81103515625, 248.31597900390625, 36.8386993408203125, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507, 120, 255, 1, 46366), -- Bat01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+8, 180426, 1, 357, 1099, '0', 0, 0, -4400.06591796875, 257.92535400390625, 39.39876174926757812, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 120, 255, 1, 46366), -- Bat01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+9, 180426, 1, 357, 1099, '0', 0, 0, -4402.09912109375, 244.6927032470703125, 38.13518524169921875, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701, 120, 255, 1, 46366), -- Bat01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+10, 180426, 1, 357, 1099, '0', 0, 0, -4397.1787109375, 248.83160400390625, 35.07228469848632812, 6.265733242034912109, 0, 0, -0.00872611999511718, 0.999961912631988525, 120, 255, 1, 46366), -- Bat01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+11, 180426, 1, 357, 1099, '0', 0, 0, -4396.57275390625, 248.6840362548828125, 34.7597198486328125, 5.986480236053466796, 0, 0, -0.14780902862548828, 0.989015936851501464, 120, 255, 1, 46366), -- Bat01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+12, 180426, 1, 357, 1099, '0', 0, 0, -4396.28466796875, 248.170135498046875, 37.53192520141601562, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281, 120, 255, 1, 46366), -- Bat01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+13, 180426, 1, 357, 1099, '0', 0, 0, -4395.0087890625, 241.9913177490234375, 36.0612335205078125, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255, 120, 255, 1, 46366), -- Bat01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+14, 180426, 1, 357, 1099, '0', 0, 0, -4396.345703125, 248.62847900390625, 34.80261993408203125, 4.188792228698730468, 0, 0, -0.86602497100830078, 0.50000077486038208, 120, 255, 1, 46366), -- Bat01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+15, 180426, 1, 357, 1099, '0', 0, 0, -4397.52587890625, 243.376739501953125, 34.41378402709960937, 4.433136463165283203, 0, 0, -0.79863548278808593, 0.60181504487991333, 120, 255, 1, 46366), -- Bat01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+16, 180426, 1, 357, 1099, '0', 0, 0, -4395.18212890625, 227.407989501953125, 36.96889495849609375, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675, 120, 255, 1, 46366), -- Bat01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+17, 180427, 1, 357, 1099, '0', 0, 0, -4396.71337890625, 247.9027862548828125, 38.01698684692382812, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976, 120, 255, 1, 46366), -- Bat02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+18, 180427, 1, 357, 1099, '0', 0, 0, -4397.57666015625, 248.829864501953125, 35.73020553588867187, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326, 120, 255, 1, 46366), -- Bat02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+19, 180427, 1, 357, 1099, '0', 0, 0, -4397.390625, 248.453125, 37.29834747314453125, 4.433136463165283203, 0, 0, -0.79863548278808593, 0.60181504487991333, 120, 255, 1, 46366), -- Bat02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+20, 180427, 1, 357, 1099, '0', 0, 0, -4396.671875, 248.201385498046875, 36.5920867919921875, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791, 120, 255, 1, 46366), -- Bat02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+21, 180427, 1, 357, 1099, '0', 0, 0, -4396.62841796875, 248.3524322509765625, 36.66197967529296875, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358, 120, 255, 1, 46366), -- Bat02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+22, 180427, 1, 357, 1099, '0', 0, 0, -4396.8125, 248.7621612548828125, 39.26578903198242187, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595, 120, 255, 1, 46366), -- Bat02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+23, 180427, 1, 357, 1099, '0', 0, 0, -4396.87841796875, 248.67535400390625, 34.41941452026367187, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279, 120, 255, 1, 46366), -- Bat02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+24, 180427, 1, 357, 1099, '0', 0, 0, -4396.6474609375, 248.642364501953125, 34.24795150756835937, 5.777040958404541015, 0, 0, -0.25037956237792968, 0.968147754669189453, 120, 255, 1, 46366), -- Bat02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+25, 180427, 1, 357, 1099, '0', 0, 0, -4396.6318359375, 248.407989501953125, 35.87905502319335937, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958, 120, 255, 1, 46366), -- Bat02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+26, 180427, 1, 357, 1099, '0', 0, 0, -4395.5, 244.375, 33.37169647216796875, 0.767943859100341796, 0, 0, 0.374606132507324218, 0.927184045314788818, 120, 255, 1, 46366), -- Bat02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+27, 180471, 1, 357, 1099, '0', 0, 0, -4434.3212890625, 252.4461822509765625, 44.89723587036132812, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+28, 180471, 1, 357, 1099, '0', 0, 0, -4453.4306640625, 253.092010498046875, 42.783599853515625, 1.186823248863220214, 0, 0, 0.559192657470703125, 0.829037725925445556, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+29, 180471, 1, 357, 1099, '0', 0, 0, -4437.2431640625, 258.039947509765625, 44.89723587036132812, 1.937312245368957519, 0, 0, 0.824125289916992187, 0.566407561302185058, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+30, 180471, 1, 357, 1099, '0', 0, 0, -4462.67529296875, 248.451385498046875, 42.78349685668945312, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+31, 180471, 1, 357, 1099, '0', 0, 0, -4470.38916015625, 245.09722900390625, 42.78286361694335937, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+32, 180472, 1, 357, 1099, '0', 0, 0, -4433.830078125, 256.17535400390625, 46.35556793212890625, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+33, 180472, 1, 357, 1099, '0', 0, 0, -4441.4619140625, 263.36285400390625, 46.86680221557617187, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+34, 180472, 1, 357, 1099, '0', 0, 0, -4450.484375, 246.7708282470703125, 46.35454177856445312, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+35, 180472, 1, 357, 1099, '0', 0, 0, -4432.60400390625, 245.640625, 46.864013671875, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+36, 180472, 1, 357, 1099, '0', 0, 0, -4467.49072265625, 239.535400390625, 46.42402267456054687, 0.802850961685180664, 0, 0, 0.390730857849121093, 0.920504987239837646, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Camp Mojache - Difficulty: 0)
(@OGUID+37, 180523, 1, 357, 1099, '0', 0, 0, -4443.63525390625, 245.328125, 39.38525009155273437, 3.9793548583984375, 0, 0, -0.9135446548461914, 0.406738430261611938, 120, 255, 1, 46366), -- Apple Bob (Area: Camp Mojache - Difficulty: 0)
(@OGUID+38, 190088, 1, 357, 1099, '0', 0, 0, -4458.26318359375, 241.1407928466796875, 39.10747146606445312, 2.513273954391479492, 0, 0, 0.951056480407714843, 0.309017121791839599, 120, 255, 1, 46366); -- Candy Bucket (Area: Camp Mojache - Difficulty: 0)

-- Event spawns
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+38;
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
(12, @OGUID+38);
