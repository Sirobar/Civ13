/obj/map_metadata/nomads_wastelandtest
	ID = MAP_NOMADS_WASTELANDTEST
	title = "Siro's Shitty Civ Sandbox"
	lobby_icon_state = "Big Trouble in Little Creek (RP)"
	no_winner ="Don't Panic."
	caribbean_blocking_area_types = list(/area/caribbean/no_mans_land/invisible_wall/)
	respawn_delay = 6000 // 10 minutes!

	faction_organization = list(
		CIVILIAN,)



	faction1 = CIVILIAN

	roundend_condition_sides = list(
		list(CIVILIAN) = /area/caribbean/british
		)
	age = "????"
	is_RP = TRUE
	is_singlefaction = TRUE
	civilizations = TRUE
	faction_distribution_coeffs = list(CIVILIAN = 1)
	battle_name = "Siro's Stomp"
	mission_start_message = "<big>Don't panic.</big><br>"
	ambience = list('sound/ambience/desert.ogg')
	faction1 = CIVILIAN
	songs = list(
		"Words Through the Sky:1" = 'sound/music/words_through_the_sky.ogg',)
	research_active = FALSE
	gamemode = "Not Quite A Nuclear Wasteland"
	ordinal_age = 8
	default_research = 230
	research_active = FALSE
	age1_done = TRUE
	age2_done = TRUE
	age3_done = TRUE
	age4_done = TRUE
	age5_done = TRUE
	age6_done = TRUE
	age7_done = TRUE
	age8_done = TRUE
	var/nonukes = FALSE


obj/map_metadata/nomads_wastelandtest/job_enabled_specialcheck(var/datum/job/J)
	..()
	if (J.is_cowboy == TRUE)
		if (J.title == "Outlaw" || J.title == "Sheriffs Deputy")
			. = FALSE
		else if (J.is_civil_war == TRUE)
			. = FALSE
		else
			. = TRUE
	else
		. = FALSE
