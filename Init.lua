AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "specialchars.lua" )

include( 'shared.lua' )
include( 'specialchars.lua' )

function GM:PlayerSpawn( ply )
    self.BaseClass:PlayerSpawn( ply )   
 
    ply:SetGravity  ( 0.75 )  -- Although I suggest 1, becuase .75 is just too low.
    ply:SetMaxHealth( 100, true )  
 
    ply:SetWalkSpeed( 325 )  
    ply:SetRunSpeed ( 325 ) 
 
end

function GM:PlayerInitialSpawn( ply )
	CheckSpecialCharacters( ply )
	if ply:IsAdmin() then
		sb_team2( ply )
	else
	joining( ply )
	RunConsoleCommand( "sb_start" )
	end
end

function GM:PlayerLoadout( ply )
 
	if ply:Team() == 1 then
 
		ply:Give( "weapon_physcannon" )
		ply:Give( "weapon_physgun" )
		ply:Give( "gmod_tool" )
 
 
	elseif ply:Team() == 2 then
 
		ply:Give( "weapon_physcannon" )
		ply:Give( "weapon_physgun" )
		ply:Give( "weapon_ar2" )
		ply:Give( "gmod_tool" )
 
	end
end

function sb_team1( ply )
 
	ply:UnSpectate()
	ply:SetTeam( 1 )
	ply:Spawn()
	ply:PrintMessage( HUD_PRINTTALK, "[SimpleBuild]Welcome to the server, " .. ply:Nick() )

end

function sb_team2( ply )
	ply:SetTeam( 2 )
	ply:Spawn()
	ply:PrintMessage( HUD_PRINTTALK, "[SimpleBuild]I recognize you as an admin, " .. ply:Nick() )
  "[SimpleBuild] I recognize you as an admin (playername here)" 
 
end

concommand.Add( "sb_team1", sb_team1 )

 
function joining( ply )
 
	ply:Spectate( 5 )
	ply:SetTeam( 4 )
 
end
