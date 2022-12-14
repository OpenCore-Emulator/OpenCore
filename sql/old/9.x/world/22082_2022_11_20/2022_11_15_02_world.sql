SET @TEL_ID := 1852;

DELETE FROM `game_tele` WHERE `id` BETWEEN @TEL_ID+0 AND @TEL_ID+24;
INSERT INTO `game_tele` (`id`,`position_x`,`position_y`,`position_z`,`orientation`,`map`,`name`) VALUES
(@TEL_ID+0,-889.216,2170.8,100.59,2.84407,870,'DustbackGorge'),
(@TEL_ID+1,274.406,504.935,146.484,6.10582,870,'GlidedFan'),
(@TEL_ID+2,456.052,-98.8062,179.647,6.06183,870,'GrassyCline'),
(@TEL_ID+3,-200.189,488.703,187.189,1.82933,870,'Halfhill'),
(@TEL_ID+4,284.341,1491.41,437.283,5.8058,870,'KunzenVillage'),
(@TEL_ID+5,-44.4807,-21.4969,154.07,0.320598,870,'MudmugsPlace'),
(@TEL_ID+6,-1057.9,2045.76,148.396,2.86056,870,'NesingwarysSafari'),
(@TEL_ID+7,199.253,262.834,153.813,2.38304,870,'NewCifera'),
(@TEL_ID+8,532.061,-616.193,258.764,0.622954,870,'PangsStead'),
(@TEL_ID+9,248.197,1994.73,160.457,5.55841,870,'PaoquanHollow'),
(@TEL_ID+10,357.439,322.19,189.246,0.741565,870,'PoolsOfPurity'),
(@TEL_ID+11,-611.386,-67.1237,156.529,5.49714,870,'RumblingTerrace'),
(@TEL_ID+12,-442.774,255.866,165.621,3.96562,870,'SilkenFields'),
(@TEL_ID+13,33.851,1653.19,235.479,2.43252,870,'SingingMarshes'),
(@TEL_ID+14,-46.4343,1497.96,367.225,0.107747,870,'Skyrange'),
(@TEL_ID+15,-411.758,1892.61,130.845,1.28975,870,'Stoneplow'),
(@TEL_ID+16,-184.044,639.194,165.409,5.90162,870,'SunsongRanch'),
(@TEL_ID+17,195.573,934.181,173.956,2.24952,870,'TheHeartland'),
(@TEL_ID+18,-576.178,644.683,143.989,5.47751,870,'TheImperialGranary'),
(@TEL_ID+19,-707.281,1265.31,136.024,3.4182,870,'TheStormstoutBrewery'),
(@TEL_ID+20,424.647,-537.301,237.682,0.897847,870,'ThunderfootFarm'),
(@TEL_ID+21,252.413,-398.194,249.496,2.15448,870,'ThunderfootFields'),
(@TEL_ID+22,450.597,-296.047,205.174,3.00271,870,'ThunderfootRanch'),
(@TEL_ID+23,-920.082,669.826,158.514,3.26502,870,'WindsEdge'),
(@TEL_ID+24,-100.499,-511.624,179.777,3.20769,870,'ZhusDescent');
