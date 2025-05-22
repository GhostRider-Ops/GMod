include( 'shared.lua' )

function set_team()
 
Ready = vgui.Create( "DFrame" )
Ready:SetPos( ScrW() / 2, ScrH() / 2 )
Ready:SetSize( 175, 75 )
Ready:SetTitle( "Are you ready to build?" )
Ready:SetVisible( true )
Ready:SetDraggable( false )
Ready:ShowCloseButton( false )
Ready:MakePopup()

ready1 = vgui.Create( "DButton", Ready )
ready1:SetPos( 20, 25 )
ready1:SetSize( 140, 40 )
ready1:SetText( "Hell yeah!" )
ready1.DoClick = function()
RunConsoleCommand( "sb_team1" )

 end

end

concommand.Add( "sb_start", set_team )
