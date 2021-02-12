if SERVER then end

if not CLIENT then return end
surface.CreateFont( "Defcon", {
	font = "Open Sans", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 64,
	weight = 500,
} )

local w,h = 500,128
local trans = 240
local posx,posy = ScrW() * .98 - w, ScrW() * .02

hook.Add( "HUDPaint", "HUDPaint_DrawABox", function()
	surface.SetDrawColor( 0, 0, 0, trans )
	surface.DrawRect( posx , posy, w,h )

	surface.SetMaterial(Material("blazzy/scplogo.png"))
	surface.SetDrawColor( 255,255,255 )
	surface.DrawTexturedRect( posx, posy, 150,120 )

	surface.SetTextColor(Color(255,255,247))
	surface.SetFont( "Defcon" ) -- Set the font
	local tw,th = surface.GetTextSize( "DEFCON: 5" )	
	surface.SetTextPos( posx + 160, posy + h * .5 - th * .5) -- Set text position, top left corner
	surface.DrawText( "DEFCON: 5" ) -- Draw the text
end )

-- reminder make a config
-- surface.DrawRect(number x, number y, number width, number height)