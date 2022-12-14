--
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 60048; -- Summon Azure Captain
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 60049; -- Summon Azure Raider
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 60050; -- Summon Azure Sorceror
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 60086; -- Summon Azure Stalker
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 60093; -- Summon Azure Sorceror
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 60092; -- Summon Azure Raider

DELETE FROM `serverside_spell_effect` WHERE `SpellID` IN (60048,60049,60050,60086,60093,60092);
INSERT INTO `serverside_spell_effect` (`SpellID`, `EffectIndex`, `Effect`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectRadiusIndex1`, `ImplicitTarget1`) VALUES
(60048, 0, 28, 30666, 64, 15, 44),
(60049, 0, 28, 30668, 64, 15, 43),
(60050, 0, 28, 30667, 64, 15, 42),
(60086, 0, 28, 32191, 64, 15, 41),
(60093, 0, 28, 30667, 64, 15, 44),
(60092, 0, 28, 30668, 64, 15, 44);

/*
.go x 1926.5161 763.66156 52.357254 2.251474618911743164

60048 30666 .go x 1923.5326 763.97516 52.440586 2.251474618911743164
60049 30668 .go x 1926.2025 760.678 52.440586 2.251474618911743164
60086 32191 .go x 1926.8297 766.64514 52.440586 2.251474618911743164

.go x 1911.2812 800.9722 39.916725 3.019419670104980468

60050 30667 .go x  1913.6453 802.8192 40.000057 3.019419670104980468

.go x 1922.4635 847.0699 48.501614 3.96189737319946289

60093 30667 .go x 1922.5682 844.0717 48.584946 3.96189737319946289

.go x 1911.2812 800.9722 39.916725 3.019419670104980468

60092 30668 .go x  1908.9172 799.12524 40.000057 3.019419670104980468
*/

UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58031; -- Summon Portal Keeper
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58034; -- Summon Azure Binder
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58088; -- Summon Azure Invader Alt
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58087; -- Summon Azure Invader
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58092; -- Summon Azure Mage Slayer Alt
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58086; -- Summon Azure Binder
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58028; -- Summon Portal Guardian
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58029; -- Summon Portal Guardian Alt
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58091; -- Summon Azure Mage Slayer
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58089; -- Summon Azure Spellbreaker
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58090; -- Summon Azure Spellbreaker Alt
UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58030; -- Summon Portal Keeper

DELETE FROM `serverside_spell_effect` WHERE `SpellID` IN (58031,58034,58088,58087,58092,58086,58028,58029,58091,58089,58090,58030);
INSERT INTO `serverside_spell_effect` (`SpellID`, `EffectIndex`, `Effect`, `EffectMiscValue1`, `EffectMiscValue2`, `ImplicitTarget1`) VALUES
(58031, 0, 28, 30893, 64, 18),
(58034, 0, 28, 30663, 64, 18),
(58088, 0, 28, 30961, 64, 18),
(58087, 0, 28, 30661, 64, 18),
(58092, 0, 28, 30963, 64, 18),
(58086, 0, 28, 30918, 64, 18),
(58028, 0, 28, 30660, 64, 18),
(58029, 0, 28, 30892, 64, 18),
(58091, 0, 28, 30664, 64, 18),
(58089, 0, 28, 30662, 64, 18),
(58090, 0, 28, 30962, 64, 18),
(58030, 0, 28, 30695, 64, 18);

/*
.go x 1858.243 770.23785 40.421455 0.907571196556091308

58031 30893 .go x 1858.243 770.23785 40.004787 0.907571196556091308
58034 30663 .go x 1858.243 770.23785 40.504787 0.907571196556091308
58088 30961 .go x 1858.243 770.23785 40.504787 0.907571196556091308
58087 30661 .go x 1858.243 770.23785 40.504787 0.907571196556091308

.go x 1936.0903 803.1875 54.09715 3.054326057434082031

58092 30963 .go x 1936.0903 803.1875 54.18048 3.054326057434082031

.go x 1877.5226 850.17883 45.368217 4.345870018005371093

58086 30918 .go x 1877.5226 850.17883 45.45155 4.345870018005371093
58028 30660 .go x 1877.5226 850.17883 44.95155 4.345870018005371093
58029 30892 .go x 1877.5226 850.17883 44.95155 4.345870018005371093

.go x 1907.2882 831.11115 40.220154 3.560471534729003906
58091 30664 .go x 1907.2882 831.11115 40.303486 3.560471534729003906
58089 30662 .go x 1907.2882 831.11115 40.303486 3.560471534729003906
58090 30962 .go x 1907.2882 831.11115 40.303486 3.560471534729003906
58030 30695 .go x 1907.2882 831.11115 39.803486 3.560471534729003906
*/

UPDATE `serverside_spell` SET `ProcChance` = 101 WHERE `Id` = 58093; -- Summon Veteran Mage Hunter

DELETE FROM `serverside_spell_effect` WHERE `SpellID` IN (58093);
INSERT INTO `serverside_spell_effect` (`SpellID`, `EffectIndex`, `Effect`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectRadiusIndex1`, `ImplicitTarget1`) VALUES
(58093, 0, 28, 30665, 64, 7, 72);

/*
distance 2
.go x 1877.5226 850.17883 45.368217 4.345870018005371093

58093 30665 .go x 1878.4926 850.9416 43.41683 4.345870018005371093
58093 30665 .go x 1876.63 851.2563 43.41683 4.345870018005371093
58093 30665 .go x 1877.7584 851.0674 43.41683 4.345870018005371093
58093 30665 .go x 1878.903 849.6679 43.41683 4.345870018005371093

.go x 1858.243 770.23785 40.421455 0.907571196556091308

58093 30665 .go x 1858.0314 769.12573 38.736134 0.907571196556091308
58093 30665 .go x 1856.6608 769.14087 38.7372 0.907571196556091308

.go x 1858.243 770.23785 40.421455 0.907571196556091308

58093 30665 .go x 1857.44 771.4769 38.78791 0.907571196556091308
58093 30665 .go x 1858.9102 768.4008 38.735527 0.907571196556091308
*/
