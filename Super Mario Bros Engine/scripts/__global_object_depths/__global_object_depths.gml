function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -99; // obj_persistent
	global.__objectDepths[1] = 0; // obj_mazemanager
	global.__objectDepths[2] = 0; // obj_wrongway
	global.__objectDepths[3] = 0; // obj_correctway
	global.__objectDepths[4] = 0; // obj_rainmaker
	global.__objectDepths[5] = 0; // obj_windmaker
	global.__objectDepths[6] = -98; // obj_water
	global.__objectDepths[7] = 0; // obj_warpzone
	global.__objectDepths[8] = -5; // obj_toad
	global.__objectDepths[9] = 9; // obj_flagpole
	global.__objectDepths[10] = 0; // obj_incastle
	global.__objectDepths[11] = 999999; // obj_pitwarp
	global.__objectDepths[12] = 0; // obj_bganimator
	global.__objectDepths[13] = -2; // obj_checkpoint
	global.__objectDepths[14] = 1000000; // obj_levelcontrol
	global.__objectDepths[15] = 0; // obj_levelcontrol_tiles
	global.__objectDepths[16] = -2; // obj_clearnpcs
	global.__objectDepths[17] = -5; // obj_player
	global.__objectDepths[18] = -5; // obj_player_alt
	global.__objectDepths[19] = -5; // obj_player_warp
	global.__objectDepths[20] = -5; // obj_player_climb
	global.__objectDepths[21] = -2; // obj_solid
	global.__objectDepths[22] = -2; // obj_climb
	global.__objectDepths[23] = -2; // obj_swim
	global.__objectDepths[24] = 9; // obj_qblock
	global.__objectDepths[25] = 9; // obj_qblock_coins
	global.__objectDepths[26] = 9; // obj_qblock_hidden
	global.__objectDepths[27] = 9; // obj_emptyblock
	global.__objectDepths[28] = 8; // obj_brick_hider
	global.__objectDepths[29] = 9; // obj_brick
	global.__objectDepths[30] = -2; // obj_maze_enemy
	global.__objectDepths[31] = -1; // obj_generator_cheep
	global.__objectDepths[32] = -1; // obj_generator_cheep_flying
	global.__objectDepths[33] = -1; // obj_generator_bullet
	global.__objectDepths[34] = -1; // obj_generator_flame
	global.__objectDepths[35] = -2; // obj_axe
	global.__objectDepths[36] = 9; // obj_bridge
	global.__objectDepths[37] = -1; // obj_bowser
	global.__objectDepths[38] = -2; // obj_createkoopa_hard
	global.__objectDepths[39] = -2; // obj_createparakoopa_hard
	global.__objectDepths[40] = -2; // obj_createflyingparakoopa_hard
	global.__objectDepths[41] = -2; // obj_createredkoopa_hard
	global.__objectDepths[42] = -2; // obj_createblooper_hard
	global.__objectDepths[43] = 0; // obj_createfirebar_hard
	global.__objectDepths[44] = 0; // obj_createfastfirebar_hard
	global.__objectDepths[45] = -2; // obj_createlavabubble_hard
	global.__objectDepths[46] = -2; // obj_goomba
	global.__objectDepths[47] = -2; // obj_koopa
	global.__objectDepths[48] = -2; // obj_parakoopa
	global.__objectDepths[49] = -2; // obj_parakoopa_fly
	global.__objectDepths[50] = -2; // obj_koopa_red
	global.__objectDepths[51] = -2; // obj_parakoopa_red
	global.__objectDepths[52] = -2; // obj_lakitu
	global.__objectDepths[53] = 0; // obj_lakitu_end
	global.__objectDepths[54] = -2; // obj_hammerbro
	global.__objectDepths[55] = -2; // obj_buzzybeetle
	global.__objectDepths[56] = -2; // obj_spiny
	global.__objectDepths[57] = -2; // obj_piranhaplant
	global.__objectDepths[58] = -2; // obj_piranhaplant_red
	global.__objectDepths[59] = -2; // obj_piranhaplant_red_down
	global.__objectDepths[60] = -2; // obj_blooper
	global.__objectDepths[61] = -2; // obj_bulletbill
	global.__objectDepths[62] = -2; // obj_firebar
	global.__objectDepths[63] = -2; // obj_firebar_fast
	global.__objectDepths[64] = -2; // obj_lavabubble
	global.__objectDepths[65] = -1; // obj_generator_platform
	global.__objectDepths[66] = -1; // obj_platform
	global.__objectDepths[67] = -1; // obj_platform_weight
	global.__objectDepths[68] = -1; // obj_platform_balance
	global.__objectDepths[69] = -1; // obj_platform_cloud
	global.__objectDepths[70] = 9; // obj_coin
	global.__objectDepths[71] = 9; // obj_trampoline
	global.__objectDepths[72] = 9; // obj_trampoline_super
	global.__objectDepths[73] = -4; // obj_current
	global.__objectDepths[74] = -7; // obj_lava
	global.__objectDepths[75] = -2; // obj_warptop
	global.__objectDepths[76] = -2; // obj_warpbottom
	global.__objectDepths[77] = -2; // obj_warpleft
	global.__objectDepths[78] = -2; // obj_warpright
	global.__objectDepths[79] = -2; // obj_warproom
	global.__objectDepths[80] = -2; // obj_warpworld
	global.__objectDepths[81] = -5; // obj_playerparent
	global.__objectDepths[82] = -1; // obj_enemyparent
	global.__objectDepths[83] = -1; // obj_bowserparent
	global.__objectDepths[84] = -1; // obj_deactenemyparent
	global.__objectDepths[85] = -2; // obj_physicsparent
	global.__objectDepths[86] = 0; // obj_powerupparent
	global.__objectDepths[87] = 9; // obj_blockparent
	global.__objectDepths[88] = -1; // obj_platformparent
	global.__objectDepths[89] = 0; // obj_deactivateparent
	global.__objectDepths[90] = -5; // obj_mario
	global.__objectDepths[91] = -5; // obj_luigi
	global.__objectDepths[92] = -5; // obj_player_transform
	global.__objectDepths[93] = -5; // obj_player_dead
	global.__objectDepths[94] = -5; // obj_player_goal
	global.__objectDepths[95] = -5; // obj_player_axe
	global.__objectDepths[96] = -6; // obj_shard
	global.__objectDepths[97] = -2; // obj_blockcoin
	global.__objectDepths[98] = 0; // obj_blockbumper
	global.__objectDepths[99] = -2; // obj_bowser_flame
	global.__objectDepths[100] = -4; // obj_enemy_dead
	global.__objectDepths[101] = -4; // obj_enemy_stomped
	global.__objectDepths[102] = -2; // obj_stomped
	global.__objectDepths[103] = -2; // obj_shell
	global.__objectDepths[104] = -2; // obj_lakitu2
	global.__objectDepths[105] = -2; // obj_lakitu_egg
	global.__objectDepths[106] = -4; // obj_hammer
	global.__objectDepths[107] = -2; // obj_redcheep
	global.__objectDepths[108] = -2; // obj_greencheep
	global.__objectDepths[109] = -2; // obj_generatorcheep
	global.__objectDepths[110] = -2; // obj_bullet
	global.__objectDepths[111] = -2; // obj_firebar_ball
	global.__objectDepths[112] = -2; // obj_mushroom
	global.__objectDepths[113] = -2; // obj_fireflower
	global.__objectDepths[114] = -2; // obj_starman
	global.__objectDepths[115] = -2; // obj_1up
	global.__objectDepths[116] = -2; // obj_poison
	global.__objectDepths[117] = 10; // obj_powerupsprout
	global.__objectDepths[118] = -2; // obj_fireball
	global.__objectDepths[119] = 0; // obj_invincibility
	global.__objectDepths[120] = -1; // obj_platform_balance_r
	global.__objectDepths[121] = 15; // obj_platform_balance_rope
	global.__objectDepths[122] = 1; // obj_beanstalk
	global.__objectDepths[123] = 1; // obj_beanstalk_b
	global.__objectDepths[124] = 999999; // obj_castle
	global.__objectDepths[125] = -6; // obj_score
	global.__objectDepths[126] = -6; // obj_score_goal
	global.__objectDepths[127] = -6; // obj_bubble
	global.__objectDepths[128] = -6; // obj_leaf
	global.__objectDepths[129] = -6; // obj_bubble_current
	global.__objectDepths[130] = -6; // obj_rain
	global.__objectDepths[131] = -6; // obj_smoke
	global.__objectDepths[132] = -1000; // obj_audio_loop_sound
	global.__objectDepths[133] = -6; // obj_hud
	global.__objectDepths[134] = 999990; // obj_water_sf
	global.__objectDepths[135] = -5; // obj_timeup
	global.__objectDepths[136] = 8; // obj_flag
	global.__objectDepths[137] = 16; // obj_flagc
	global.__objectDepths[138] = 0; // obj_reset
	global.__objectDepths[139] = -1; // obj_skipper
	global.__objectDepths[140] = -5; // obj_levelstart
	global.__objectDepths[141] = -2; // obj_up
	global.__objectDepths[142] = -2; // obj_down
	global.__objectDepths[143] = -2; // obj_left
	global.__objectDepths[144] = -2; // obj_right


	global.__objectNames[0] = "obj_persistent";
	global.__objectNames[1] = "obj_mazemanager";
	global.__objectNames[2] = "obj_wrongway";
	global.__objectNames[3] = "obj_correctway";
	global.__objectNames[4] = "obj_rainmaker";
	global.__objectNames[5] = "obj_windmaker";
	global.__objectNames[6] = "obj_water";
	global.__objectNames[7] = "obj_warpzone";
	global.__objectNames[8] = "obj_toad";
	global.__objectNames[9] = "obj_flagpole";
	global.__objectNames[10] = "obj_incastle";
	global.__objectNames[11] = "obj_pitwarp";
	global.__objectNames[12] = "obj_bganimator";
	global.__objectNames[13] = "obj_checkpoint";
	global.__objectNames[14] = "obj_levelcontrol";
	global.__objectNames[15] = "obj_levelcontrol_tiles";
	global.__objectNames[16] = "obj_clearnpcs";
	global.__objectNames[17] = "obj_player";
	global.__objectNames[18] = "obj_player_alt";
	global.__objectNames[19] = "obj_player_warp";
	global.__objectNames[20] = "obj_player_climb";
	global.__objectNames[21] = "obj_solid";
	global.__objectNames[22] = "obj_climb";
	global.__objectNames[23] = "obj_swim";
	global.__objectNames[24] = "obj_qblock";
	global.__objectNames[25] = "obj_qblock_coins";
	global.__objectNames[26] = "obj_qblock_hidden";
	global.__objectNames[27] = "obj_emptyblock";
	global.__objectNames[28] = "obj_brick_hider";
	global.__objectNames[29] = "obj_brick";
	global.__objectNames[30] = "obj_maze_enemy";
	global.__objectNames[31] = "obj_generator_cheep";
	global.__objectNames[32] = "obj_generator_cheep_flying";
	global.__objectNames[33] = "obj_generator_bullet";
	global.__objectNames[34] = "obj_generator_flame";
	global.__objectNames[35] = "obj_axe";
	global.__objectNames[36] = "obj_bridge";
	global.__objectNames[37] = "obj_bowser";
	global.__objectNames[38] = "obj_createkoopa_hard";
	global.__objectNames[39] = "obj_createparakoopa_hard";
	global.__objectNames[40] = "obj_createflyingparakoopa_hard";
	global.__objectNames[41] = "obj_createredkoopa_hard";
	global.__objectNames[42] = "obj_createblooper_hard";
	global.__objectNames[43] = "obj_createfirebar_hard";
	global.__objectNames[44] = "obj_createfastfirebar_hard";
	global.__objectNames[45] = "obj_createlavabubble_hard";
	global.__objectNames[46] = "obj_goomba";
	global.__objectNames[47] = "obj_koopa";
	global.__objectNames[48] = "obj_parakoopa";
	global.__objectNames[49] = "obj_parakoopa_fly";
	global.__objectNames[50] = "obj_koopa_red";
	global.__objectNames[51] = "obj_parakoopa_red";
	global.__objectNames[52] = "obj_lakitu";
	global.__objectNames[53] = "obj_lakitu_end";
	global.__objectNames[54] = "obj_hammerbro";
	global.__objectNames[55] = "obj_buzzybeetle";
	global.__objectNames[56] = "obj_spiny";
	global.__objectNames[57] = "obj_piranhaplant";
	global.__objectNames[58] = "obj_piranhaplant_red";
	global.__objectNames[59] = "obj_piranhaplant_red_down";
	global.__objectNames[60] = "obj_blooper";
	global.__objectNames[61] = "obj_bulletbill";
	global.__objectNames[62] = "obj_firebar";
	global.__objectNames[63] = "obj_firebar_fast";
	global.__objectNames[64] = "obj_lavabubble";
	global.__objectNames[65] = "obj_generator_platform";
	global.__objectNames[66] = "obj_platform";
	global.__objectNames[67] = "obj_platform_weight";
	global.__objectNames[68] = "obj_platform_balance";
	global.__objectNames[69] = "obj_platform_cloud";
	global.__objectNames[70] = "obj_coin";
	global.__objectNames[71] = "obj_trampoline";
	global.__objectNames[72] = "obj_trampoline_super";
	global.__objectNames[73] = "obj_current";
	global.__objectNames[74] = "obj_lava";
	global.__objectNames[75] = "obj_warptop";
	global.__objectNames[76] = "obj_warpbottom";
	global.__objectNames[77] = "obj_warpleft";
	global.__objectNames[78] = "obj_warpright";
	global.__objectNames[79] = "obj_warproom";
	global.__objectNames[80] = "obj_warpworld";
	global.__objectNames[81] = "obj_playerparent";
	global.__objectNames[82] = "obj_enemyparent";
	global.__objectNames[83] = "obj_bowserparent";
	global.__objectNames[84] = "obj_deactenemyparent";
	global.__objectNames[85] = "obj_physicsparent";
	global.__objectNames[86] = "obj_powerupparent";
	global.__objectNames[87] = "obj_blockparent";
	global.__objectNames[88] = "obj_platformparent";
	global.__objectNames[89] = "obj_deactivateparent";
	global.__objectNames[90] = "obj_mario";
	global.__objectNames[91] = "obj_luigi";
	global.__objectNames[92] = "obj_player_transform";
	global.__objectNames[93] = "obj_player_dead";
	global.__objectNames[94] = "obj_player_goal";
	global.__objectNames[95] = "obj_player_axe";
	global.__objectNames[96] = "obj_shard";
	global.__objectNames[97] = "obj_blockcoin";
	global.__objectNames[98] = "obj_blockbumper";
	global.__objectNames[99] = "obj_bowser_flame";
	global.__objectNames[100] = "obj_enemy_dead";
	global.__objectNames[101] = "obj_enemy_stomped";
	global.__objectNames[102] = "obj_stomped";
	global.__objectNames[103] = "obj_shell";
	global.__objectNames[104] = "obj_lakitu2";
	global.__objectNames[105] = "obj_lakitu_egg";
	global.__objectNames[106] = "obj_hammer";
	global.__objectNames[107] = "obj_redcheep";
	global.__objectNames[108] = "obj_greencheep";
	global.__objectNames[109] = "obj_generatorcheep";
	global.__objectNames[110] = "obj_bullet";
	global.__objectNames[111] = "obj_firebar_ball";
	global.__objectNames[112] = "obj_mushroom";
	global.__objectNames[113] = "obj_fireflower";
	global.__objectNames[114] = "obj_starman";
	global.__objectNames[115] = "obj_1up";
	global.__objectNames[116] = "obj_poison";
	global.__objectNames[117] = "obj_powerupsprout";
	global.__objectNames[118] = "obj_fireball";
	global.__objectNames[119] = "obj_invincibility";
	global.__objectNames[120] = "obj_platform_balance_r";
	global.__objectNames[121] = "obj_platform_balance_rope";
	global.__objectNames[122] = "obj_beanstalk";
	global.__objectNames[123] = "obj_beanstalk_b";
	global.__objectNames[124] = "obj_castle";
	global.__objectNames[125] = "obj_score";
	global.__objectNames[126] = "obj_score_goal";
	global.__objectNames[127] = "obj_bubble";
	global.__objectNames[128] = "obj_leaf";
	global.__objectNames[129] = "obj_bubble_current";
	global.__objectNames[130] = "obj_rain";
	global.__objectNames[131] = "obj_smoke";
	global.__objectNames[132] = "obj_audio_loop_sound";
	global.__objectNames[133] = "obj_hud";
	global.__objectNames[134] = "obj_water_sf";
	global.__objectNames[135] = "obj_timeup";
	global.__objectNames[136] = "obj_flag";
	global.__objectNames[137] = "obj_flagc";
	global.__objectNames[138] = "obj_reset";
	global.__objectNames[139] = "obj_skipper";
	global.__objectNames[140] = "obj_levelstart";
	global.__objectNames[141] = "obj_up";
	global.__objectNames[142] = "obj_down";
	global.__objectNames[143] = "obj_left";
	global.__objectNames[144] = "obj_right";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
