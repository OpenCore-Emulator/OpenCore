-- 
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry` IN (24928);
DELETE FROM `creature` WHERE `guid` IN (120907, 120979, 120998, 121133, 121174, 121226, 121254, 121255, 121258, 121265, 121268, 121269, 121277);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(120907, 24936, 530, 3703, 0, '0', 0, 0, 0, -1835.411, 5507.045, -12.11504, 4.103784, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24936 (Area: 0 - Difficulty: 0)
(120979, 24936, 530, 3703, 0, '0', 0, 0, 0, -1839.165, 5510.031, -12.21958, 4.639025, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24936 (Area: 0 - Difficulty: 0)
(120998, 24936, 530, 3703, 0, '0', 0, 0, 0, -1834.396, 5507.919, -10.9347, 4.067026, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24936 (Area: 0 - Difficulty: 0)
(121133, 24936, 530, 3703, 0, '0', 0, 0, 0, -1840.271, 5509.81, -11.74043, 4.758062, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24936 (Area: 0 - Difficulty: 0)
(121174, 24936, 530, 3703, 0, '0', 0, 0, 0, -1842.928, 5509.737, -12.1849, 5.039337, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24936 (Area: 0 - Difficulty: 0)
(121226, 24936, 530, 3703, 0, '0', 0, 0, 0, -1833.459, 5507.986, -11.58765, 3.994127, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24936 (Area: 0 - Difficulty: 0)
(121254, 24936, 530, 3703, 0, '0', 0, 0, 0, -1833.145, 5507.063, -12.1361, 3.902911, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24936 (Area: 0 - Difficulty: 0)
(121255, 24936, 530, 3703, 0, '0', 0, 0, 0, -1841.699, 5510.384, -11.60851, 4.900143, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24936 (Area: 0 - Difficulty: 0)
(121258, 24928, 530, 3703, 0, '0', 0, 0, 0, -1839.853, 5500.67, -10.74042, 3.874631, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24928 (Area: 0 - Difficulty: 0)
(121265, 24936, 530, 3703, 0, '0', 0, 0, 0, -1832.456, 5506.022, -12.19859, 3.767873, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24936 (Area: 0 - Difficulty: 0)
(121268, 24936, 530, 3703, 0, '0', 0, 0, 0, -1841.049, 5510.437, -10.38629, 4.834214, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 24936 (Area: 0 - Difficulty: 0)
(121269, 23131, 530, 3703, 0, '0', 0, 0, 1, -1886.849, 5415.389, -12.42824, 0.3356281, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354), -- 23131 (Area: 0 - Difficulty: 0)
(121277, 23131, 530, 3703, 0, '0', 0, 0, 1, -1889.244, 5422.028, -12.42819, 0.3448327, 120, 0, 0, 0, 0, 0, 0, 0, 0, 15354); -- 23131 (Area: 0 - Difficulty: 0)
