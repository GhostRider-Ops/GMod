function CheckSpecialCharacters( ply )
 
	--HellRider360
	if ( ply:SteamID() == "STEAM_0:1:7880281" ) then //If steamid is that, then execute the following
 
		ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() )
		ply:SetTeam( 3 )
		ply:Give( "weapon_crowbar" )
		ply:Give( "weapon_pistol" )
		ply:Give( "weapon_smg1" )
		ply:Give( "weapon_frag" )
		ply:Give( "weapon_physcannon" )
		ply:Give( "weapon_crossbow" )
		ply:Give( "weapon_shotgun" )
		ply:Give( "weapon_357" )
		ply:Give( "weapon_rpg" )
		ply:Give( "weapon_ar2" )
		ply:Give( "gmod_tool" )
	  ply:Give( "gmod_camera" )
	  ply:Give( "weapon_physgun" )

	end
end
