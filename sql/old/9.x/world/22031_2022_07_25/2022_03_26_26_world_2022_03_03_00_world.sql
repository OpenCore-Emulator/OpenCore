--
SET @OGUID := 85470;

-- Both mounds are spawned at once but visible only if player has aura: horde mounds are visible only to horde, ally only to ally
-- The only condition for auras is player's team: mounds are visible to player even if quest is not taken
-- Object 195308 - Quest 14076 - Aura 66855 - Alliance
-- Object 195309 - Quest 14092 - Aura 66523 - Horde
-- Looks like something happened at some point and they replaced 66522 with 66855, it's not used anymore
-- Aura is applied only in Area Id: 4432 (The Foot Steppes), and not in Engine of the Makers, that makes it a bit weird but it's correct
DELETE FROM `spell_area` WHERE `spell` IN (66855,66523);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(66855,4432,0,0,0,1101,2,3,0,0),
(66523,4432,0,0,0,690,2,3,0,0);

DELETE FROM `gameobject` WHERE `id` = 195308;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+000 AND @OGUID+107 AND `id` IN (195308,195309);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(@OGUID+000,195308,571,0,0,'0',0,7162.58,-1479.2,925.278,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+001,195308,571,0,0,'0',0,7193.51,-1436.03,917.522,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+002,195308,571,0,0,'0',0,7207.87,-1488.51,920.22,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+003,195308,571,0,0,'0',0,7214.34,-1043.6,934.94,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+004,195308,571,0,0,'0',0,7234.95,-1525.97,923.984,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+005,195308,571,0,0,'0',0,7238.52,-1465.82,913.924,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+006,195308,571,0,0,'0',0,7256.35,-876.125,924.237,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+007,195308,571,0,0,'0',0,7260.81,-1369.21,912.281,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+008,195308,571,0,0,'0',0,7261.76,-1275.06,914.546,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+009,195308,571,0,0,'0',0,7262.99,-1326.31,912.538,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+010,195308,571,0,0,'0',0,7279.14,-1552.67,934.731,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+011,195308,571,0,0,'0',0,7285.97,-948.896,918.665,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+012,195308,571,0,0,'0',0,7291.75,-901.76,924.944,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+013,195308,571,0,0,'0',0,7293.53,-999.875,914.484,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+014,195308,571,0,0,'0',0,7296.8,-1430.41,910.388,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+015,195308,571,0,0,'0',0,7304.95,-1307.5,905.533,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+016,195308,571,0,0,'0',0,7308.43,-1363.13,906.515,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+017,195308,571,0,0,'0',0,7319.31,-1478.77,920.693,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+018,195308,571,0,0,'0',0,7320.05,-1242.42,909.002,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+019,195308,571,0,0,'0',0,7326.46,-923.578,914.087,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+020,195308,571,0,0,'0',0,7337.08,-1046.75,907.057,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+021,195308,571,0,0,'0',0,7346.73,-1392.32,911.173,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+022,195308,571,0,0,'0',0,7348.25,-1163.22,913.775,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+023,195308,571,0,0,'0',0,7352.58,-1112.15,908.569,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+024,195308,571,0,0,'0',0,7357.04,-1492.96,928.037,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+025,195308,571,0,0,'0',0,7359.54,-841.769,928.504,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+026,195308,571,0,0,'0',0,7374.26,-920.457,907.086,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+027,195308,571,0,0,'0',0,7381.24,-1335.89,908.915,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+028,195308,571,0,0,'0',0,7386.99,-1243.72,903.339,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+029,195308,571,0,0,'0',0,7397.52,-1398.15,918.456,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+030,195308,571,0,0,'0',0,7407.54,-862.778,916.856,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+031,195308,571,0,0,'0',0,7423.01,-1450.37,936.489,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+032,195308,571,0,0,'0',0,7423.2,-1305.5,908.825,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+033,195308,571,0,0,'0',0,7425.66,-1194.59,903.687,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+034,195308,571,0,0,'0',0,7431.76,-888.358,908.33,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+035,195308,571,0,0,'0',0,7452.38,-837.472,919.242,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+036,195308,571,0,0,'0',0,7455.05,-1245.08,906.876,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+037,195308,571,0,0,'0',0,7466.56,-1420.06,940.068,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+038,195308,571,0,0,'0',0,7492.82,-870.389,906.059,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+039,195308,571,0,0,'0',0,7493.95,-1424.81,946.255,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+040,195308,571,0,0,'0',0,7496.52,-1361.13,931.086,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+041,195308,571,0,0,'0',0,7497.68,-1212.43,911.604,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+042,195308,571,0,0,'0',0,7516.5,-1280.43,918.479,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+043,195308,571,0,0,'0',0,7539.3,-832.983,924.91,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+044,195308,571,0,0,'0',0,7545.79,-1232.77,915.503,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+045,195308,571,0,0,'0',0,7551.09,-1414.22,957.625,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+046,195308,571,0,0,'0',0,7561.22,-1369.49,946.232,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+047,195308,571,0,0,'0',0,7589.14,-1182.77,912.349,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+048,195308,571,0,0,'0',0,7609.31,-1224.05,929.849,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+049,195308,571,0,0,'0',0,7642.73,-1174.15,921.958,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+050,195308,571,0,0,'0',0,7647.66,-959.458,909.686,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+051,195308,571,0,0,'0',0,7670.09,-1050.63,910.111,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+052,195308,571,0,0,'0',0,7702.91,-1088.26,918.902,0,0,0,0,1,300,255,1,'',12340),
(@OGUID+053,195308,571,0,0,'0',0,7706.75,-1007.83,918.767,0,0,0,0,1,300,255,1,'',12340),

(@OGUID+054,195309,571,0,0,'0',0,7164.69,-1460.22,923.435,0,0,0,0,1,300,255,1,'',15354),
(@OGUID+055,195309,571,0,0,'0',0,7192.35,-1427.54,917.506,0,0,0,0,1,300,255,1,'',15354),
(@OGUID+056,195309,571,0,0,'0',0,7213.9,-1511.59,922.237,0,0,0,0,1,300,255,1,'',11159),
(@OGUID+057,195309,571,0,0,'0',0,7246.91,-1319.77,914.572,0,0,0,0,1,300,255,1,'',15354),
(@OGUID+058,195309,571,0,0,'0',0,7247.97,-1395.52,910.718,0,0,0,0,1,300,255,1,'',15354),
(@OGUID+059,195309,571,0,0,'0',0,7269.46,-1002.29,916.958,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+060,195309,571,0,0,'0',0,7272.53,-881.486,925.968,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+061,195309,571,0,0,'0',0,7279.24,-1540.78,930.561,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+062,195309,571,0,0,'0',0,7280.54,-955.523,918.733,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+063,195309,571,0,0,'0',0,7280.78,-1436.6,909.83,0,0,0,0,1,300,255,1,'',11159),
(@OGUID+064,195309,571,0,0,'0',0,7296.7,-1235.86,910.669,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+065,195309,571,0,0,'0',0,7299.13,-1300.26,906.168,0,0,0,0,1,300,255,1,'',11159),
(@OGUID+066,195309,571,0,0,'0',0,7305.84,-1195.22,921.075,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+067,195309,571,0,0,'0',0,7310.23,-1499.03,921.782,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+068,195309,571,0,0,'0',0,7310.35,-1393.84,910.246,0,0,0,0,1,300,255,1,'',11159),
(@OGUID+069,195309,571,0,0,'0',0,7317.26,-1036.84,913.234,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+070,195309,571,0,0,'0',0,7318.79,-895.182,922.149,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+071,195309,571,0,0,'0',0,7321.88,-1450.13,915.617,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+072,195309,571,0,0,'0',0,7330.83,-1341.49,905.611,0,0,0,0,1,300,255,1,'',11159),
(@OGUID+073,195309,571,0,0,'0',0,7342.16,-1000.19,908.047,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+074,195309,571,0,0,'0',0,7346.29,-1093.53,905.049,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+075,195309,571,0,0,'0',0,7352.14,-1176.63,913.026,0,0,0,0,1,300,255,1,'',15354),
(@OGUID+076,195309,571,0,0,'0',0,7354.66,-1502.82,929.004,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+077,195309,571,0,0,'0',0,7366.33,-1234.19,902.761,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+078,195309,571,0,0,'0',0,7368.74,-1132.12,904.981,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+079,195309,571,0,0,'0',0,7375.26,-928.231,906.98,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+080,195309,571,0,0,'0',0,7377.39,-1369.7,911.857,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+081,195309,571,0,0,'0',0,7392.03,-1460.14,927.42,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+082,195309,571,0,0,'0',0,7403.75,-1327.71,909.659,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+083,195309,571,0,0,'0',0,7416.6,-1266.55,903.803,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+084,195309,571,0,0,'0',0,7423.38,-894.186,909.163,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+085,195309,571,0,0,'0',0,7431.67,-1406.94,927.796,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+086,195309,571,0,0,'0',0,7471.86,-1213.97,907.565,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+087,195309,571,0,0,'0',0,7471.88,-857.304,913.002,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+088,195309,571,0,0,'0',0,7483.88,-1256.81,910.742,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+089,195309,571,0,0,'0',0,7489.84,-1412.57,941.631,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+090,195309,571,0,0,'0',0,7525.66,-841.764,920.111,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+091,195309,571,0,0,'0',0,7526.72,-1279.44,920.162,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+092,195309,571,0,0,'0',0,7542.73,-1233.63,915.219,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+093,195309,571,0,0,'0',0,7555.33,-1409.87,957.039,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+094,195309,571,0,0,'0',0,7556.73,-1359.04,941.925,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+095,195309,571,0,0,'0',0,7584.77,-875.783,911.276,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+096,195309,571,0,0,'0',0,7589.96,-1183.22,912.756,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+097,195309,571,0,0,'0',0,7612.61,-919.04,908.107,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+098,195309,571,0,0,'0',0,7622.31,-872.792,916.498,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+099,195309,571,0,0,'0',0,7631.07,-1204.41,926.981,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+100,195309,571,0,0,'0',0,7640.25,-955.365,909.731,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+101,195309,571,0,0,'0',0,7660.09,-1102.11,911.876,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+102,195309,571,0,0,'0',0,7669.55,-1039.23,908.99,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+103,195309,571,0,0,'0',0,7679.08,-1157.34,925.619,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+104,195309,571,0,0,'0',0,7700.75,-996.608,917.753,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+105,195309,571,0,0,'0',0,7704.22,-1084,919.076,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+106,195309,571,0,0,'0',0,7725.96,-1117.6,922.333,0,0,0,0,1,300,255,1,'',15595),
(@OGUID+107,195309,571,0,0,'0',0,7732.84,-1066.26,921.446,0,0,0,0,1,300,255,1,'',15595);

DELETE FROM `gameobject_addon` WHERE `guid` BETWEEN @OGUID+000 AND @OGUID+107;
INSERT INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`, `invisibilityType`, `invisibilityValue`) VALUES
(@OGUID+000,0,0,0,1,7,5000),
(@OGUID+001,0,0,0,1,7,5000),
(@OGUID+002,0,0,0,1,7,5000),
(@OGUID+003,0,0,0,1,7,5000),
(@OGUID+004,0,0,0,1,7,5000),
(@OGUID+005,0,0,0,1,7,5000),
(@OGUID+006,0,0,0,1,7,5000),
(@OGUID+007,0,0,0,1,7,5000),
(@OGUID+008,0,0,0,1,7,5000),
(@OGUID+009,0,0,0,1,7,5000),
(@OGUID+010,0,0,0,1,7,5000),
(@OGUID+011,0,0,0,1,7,5000),
(@OGUID+012,0,0,0,1,7,5000),
(@OGUID+013,0,0,0,1,7,5000),
(@OGUID+014,0,0,0,1,7,5000),
(@OGUID+015,0,0,0,1,7,5000),
(@OGUID+016,0,0,0,1,7,5000),
(@OGUID+017,0,0,0,1,7,5000),
(@OGUID+018,0,0,0,1,7,5000),
(@OGUID+019,0,0,0,1,7,5000),
(@OGUID+020,0,0,0,1,7,5000),
(@OGUID+021,0,0,0,1,7,5000),
(@OGUID+022,0,0,0,1,7,5000),
(@OGUID+023,0,0,0,1,7,5000),
(@OGUID+024,0,0,0,1,7,5000),
(@OGUID+025,0,0,0,1,7,5000),
(@OGUID+026,0,0,0,1,7,5000),
(@OGUID+027,0,0,0,1,7,5000),
(@OGUID+028,0,0,0,1,7,5000),
(@OGUID+029,0,0,0,1,7,5000),
(@OGUID+030,0,0,0,1,7,5000),
(@OGUID+031,0,0,0,1,7,5000),
(@OGUID+032,0,0,0,1,7,5000),
(@OGUID+033,0,0,0,1,7,5000),
(@OGUID+034,0,0,0,1,7,5000),
(@OGUID+035,0,0,0,1,7,5000),
(@OGUID+036,0,0,0,1,7,5000),
(@OGUID+037,0,0,0,1,7,5000),
(@OGUID+038,0,0,0,1,7,5000),
(@OGUID+039,0,0,0,1,7,5000),
(@OGUID+040,0,0,0,1,7,5000),
(@OGUID+041,0,0,0,1,7,5000),
(@OGUID+042,0,0,0,1,7,5000),
(@OGUID+043,0,0,0,1,7,5000),
(@OGUID+044,0,0,0,1,7,5000),
(@OGUID+045,0,0,0,1,7,5000),
(@OGUID+046,0,0,0,1,7,5000),
(@OGUID+047,0,0,0,1,7,5000),
(@OGUID+048,0,0,0,1,7,5000),
(@OGUID+049,0,0,0,1,7,5000),
(@OGUID+050,0,0,0,1,7,5000),
(@OGUID+051,0,0,0,1,7,5000),
(@OGUID+052,0,0,0,1,7,5000),
(@OGUID+053,0,0,0,1,7,5000),

(@OGUID+054,0,0,0,1,8,5000),
(@OGUID+055,0,0,0,1,8,5000),
(@OGUID+056,0,0,0,1,8,5000),
(@OGUID+057,0,0,0,1,8,5000),
(@OGUID+058,0,0,0,1,8,5000),
(@OGUID+059,0,0,0,1,8,5000),
(@OGUID+060,0,0,0,1,8,5000),
(@OGUID+061,0,0,0,1,8,5000),
(@OGUID+062,0,0,0,1,8,5000),
(@OGUID+063,0,0,0,1,8,5000),
(@OGUID+064,0,0,0,1,8,5000),
(@OGUID+065,0,0,0,1,8,5000),
(@OGUID+066,0,0,0,1,8,5000),
(@OGUID+067,0,0,0,1,8,5000),
(@OGUID+068,0,0,0,1,8,5000),
(@OGUID+069,0,0,0,1,8,5000),
(@OGUID+070,0,0,0,1,8,5000),
(@OGUID+071,0,0,0,1,8,5000),
(@OGUID+072,0,0,0,1,8,5000),
(@OGUID+073,0,0,0,1,8,5000),
(@OGUID+074,0,0,0,1,8,5000),
(@OGUID+075,0,0,0,1,8,5000),
(@OGUID+076,0,0,0,1,8,5000),
(@OGUID+077,0,0,0,1,8,5000),
(@OGUID+078,0,0,0,1,8,5000),
(@OGUID+079,0,0,0,1,8,5000),
(@OGUID+080,0,0,0,1,8,5000),
(@OGUID+081,0,0,0,1,8,5000),
(@OGUID+082,0,0,0,1,8,5000),
(@OGUID+083,0,0,0,1,8,5000),
(@OGUID+084,0,0,0,1,8,5000),
(@OGUID+085,0,0,0,1,8,5000),
(@OGUID+086,0,0,0,1,8,5000),
(@OGUID+087,0,0,0,1,8,5000),
(@OGUID+088,0,0,0,1,8,5000),
(@OGUID+089,0,0,0,1,8,5000),
(@OGUID+090,0,0,0,1,8,5000),
(@OGUID+091,0,0,0,1,8,5000),
(@OGUID+092,0,0,0,1,8,5000),
(@OGUID+093,0,0,0,1,8,5000),
(@OGUID+094,0,0,0,1,8,5000),
(@OGUID+095,0,0,0,1,8,5000),
(@OGUID+096,0,0,0,1,8,5000),
(@OGUID+097,0,0,0,1,8,5000),
(@OGUID+098,0,0,0,1,8,5000),
(@OGUID+099,0,0,0,1,8,5000),
(@OGUID+100,0,0,0,1,8,5000),
(@OGUID+101,0,0,0,1,8,5000),
(@OGUID+102,0,0,0,1,8,5000),
(@OGUID+103,0,0,0,1,8,5000),
(@OGUID+104,0,0,0,1,8,5000),
(@OGUID+105,0,0,0,1,8,5000),
(@OGUID+106,0,0,0,1,8,5000),
(@OGUID+107,0,0,0,1,8,5000);

-- Probably recently updated 30340 and this one has "worm" behavior (submerge if target is too far away, emerge if target is close enough),
-- but they do nothing what was done in old scripts, at least nothing after being summoned; both scripts looks like a buggy mix of other worms
DELETE FROM `smart_scripts` WHERE `entryorguid` = 34920 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34920,0,0,0,0,0,100,0,0,0,3000,5000,0,11,61597,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Deep Jormungar - In Combat CMC - Cast 'Acid Spit'"),
(34920,0,1,0,0,0,100,0,5000,10000,10000,15000,0,11,61598,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Deep Jormungar - In Combat - Cast 'Sweep'");

--
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 34915;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 34915 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34915,0,0,0,4,0,100,0,0,0,0,0,0,1,0,0,1,0,0,0,7,0,0,0,0,0,0,0,0,"Stormforged Marauder - On Aggro - Say Line 0");

DELETE FROM `creature_text` WHERE `CreatureID` = 34915;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(34915,0,0,"You will pay for disturbing us!",12,0,100,0,0,0,36050,0,"Stormforged Marauder"),
(34915,0,1,"I'll silence that infernal drum once and for all!",12,0,100,0,0,0,36051,0,"Stormforged Marauder"),
(34915,0,2,"What do you think you're doing, fool?",12,0,100,0,0,0,36052,0,"Stormforged Marauder"),
(34915,0,3,"No one provokes the servants of Loken and gets away with it!",12,0,100,0,0,0,36053,0,"Stormforged Marauder");

-- Should be disturbed instead (activate object action)
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 195304;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 195304 AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(195304,1,0,0,60,0,100,1,4000,4000,0,0,0,11,66491,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Stormforged Mole Machine Trap - On Update - Cast 'Summon Stormforged Marauder' (No Repeat)");
