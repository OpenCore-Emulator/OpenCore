-- 
-- GO Journal of Jandice Barov (180794)
DELETE FROM `npc_text` WHERE `ID` IN (8121,8122);
INSERT INTO `npc_text` (`ID`,`Probability0`,`BroadcastTextID0`) VALUES
(8121,1,11406),
(8122,1,11410);
-- DELETE FROM `gossip_menu` WHERE `MenuID`=6799;
-- INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (6799, 8120),(6799, 8121),(6799, 8122);
DELETE FROM `gossip_menu_option` WHERE `MenuID`=6799;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(6799, 0, 0, '<Copy the pattern into my journal.>', 11407, 1, 1);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14, 15) AND `SourceGroup`=6799;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(14, 6799, 8120, 0, 0, 7, 0, 197, 280, 0, 1, 0, 0, '', 'Show text if player does not have tailoring'),
(14, 6799, 8121, 0, 0, 7, 0, 197, 280, 0, 0, 0, 0, '', 'Show text if player have tailoring'),
(14, 6799, 8121, 0, 0, 25, 0, 26086, 0, 0, 1, 0, 0, '', 'Show text if player does not have spell 26086'),
(14, 6799, 8122, 0, 0, 7, 0, 197, 280, 0, 0, 0, 0, '', 'Show text if player have tailoring'),
(14, 6799, 8122, 0, 0, 25, 0, 26086, 0, 0, 0, 0, 0, '', 'Show text if player have spell 26086'),
(15, 6799, 0, 0, 0, 7, 0, 197, 280, 0, 0, 0, 0, '', 'Show gossip if player have tailoring'),
(15, 6799, 0, 0, 0, 25, 0, 26086, 0, 0, 1, 0, 0, '', 'Show gossip if player does not have spell 26086');
DELETE FROM `gameobject` WHERE `id`=180794;
DELETE FROM `gameobject_addon` WHERE `guid`=43231;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI', `ScriptName`='' WHERE `entry`=180794;
DELETE FROM `smart_scripts` WHERE `entryorguid`=180794 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(180794, 1, 0, 1, 62, 0, 100, 0, 6799, 0, 0, 0, 85, 26095, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Journal of Jandice Barov - On Gossip Select - Invoker Cast Felcloth Bag'),
(180794, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Journal of Jandice Barov - On Gossip Select - Close Gossip');
