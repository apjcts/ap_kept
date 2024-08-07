class aprng expands aprwpnbase config(APRLANG_aprw_v2); //ALL ini configs are marked in caps
/// part of aprwpnbase because useables dependency
#exec TEXTURE IMPORT FILE="..\aprng\textures\compdir1.pcx" 	NAME="compdir1" 	PACKAGE="aprng" GROUP="drawtiles" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\compdir2.pcx" 	NAME="compdir2" 	PACKAGE="aprng" GROUP="drawtiles" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\curves.pcx" 	NAME="curves" 		PACKAGE="aprng" GROUP="drawtiles" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\seltest.pcx" 	NAME="seltest" 		PACKAGE="aprng" GROUP="drawtiles" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\seltestgold.png"	NAME="seltestgold" 	PACKAGE="aprng" GROUP="drawtiles" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\unsel.png" 	NAME="unsel" 		PACKAGE="aprng" GROUP="drawtiles" MIPS=1 FLAGS=0 BTC=3
// canvas user interface (because i don't have the wits for scripted textures)
#exec TEXTURE IMPORT FILE="..\aprng\textures\ui\ui_bg.png"	name="bg"               PACKAGE="aprng" GROUP="ui" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\ui\ui_bg2.png"     name="bg2"              PACKAGE="aprng" GROUP="ui" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\ui\ui_bg3.png"     name="bg3"              PACKAGE="aprng" GROUP="ui" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\ui\ui_bg4.png"     name="bg4"              PACKAGE="aprng" GROUP="ui" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\ui\ui_bg5.png"     name="bg5"              PACKAGE="aprng" GROUP="ui" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\ui\ui_bg6.png"     name="bg6"              PACKAGE="aprng" GROUP="ui" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\ui\ui_bgtest.png"  name="bgtest"           PACKAGE="aprng" GROUP="ui" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\ui\ui_border.png"  name="border"           PACKAGE="aprng" GROUP="ui" MIPS=1 FLAGS=0 BTC=3
#exec TEXTURE IMPORT FILE="..\aprng\textures\ui\ui_border2.png" name="border2"          PACKAGE="aprng" GROUP="ui" MIPS=1 FLAGS=0 BTC=3
/**
aprng notes: leftovers from aprilweapon v2 (todo modify)
-------------------------------------------------------------------------------------------------------------------	
	primary : engage immediate attack with the primary function
	secondary: prep item for secondary (while m2 is held) primary engages secondary func
	prev/next wpn switch primary function mode while m2 is held
	prev next inv switch secondary functions while m2 is held
	item switch is restricted when m2 is held down with a wpn equipped. 
-------------------------------------------------------------------------------------------------------------------
	item must be active to be unhidden 
	item must be hidden to be switchable
	while item active, prev next inv switch item pages
	while item active, prev next weap switch item functions
	bextra is used for toggling item functions
	bextra2 is used for weap reloading (if m2 held down & ammo full, 
	third weap function mode is toggled: dpx-stunmode, 9mm-bulletswitch) 
-------------------------------------------------------------------------------------------------------------------
	dp is replaced with dpx - Delta quadr. energy projectile weap. 
	automag is replaced with a 9mm sidearm 
	stinger is replaced with a blackpack (organic energy projectile weap) 
	asmd is replaced with aptele. 4 weap total
	MAYBE eightballammo for slot 5 / doom 3 style grenade
	MAYBE W2 rifle for slot 6 OR JUGWPN remake weapon
	MAYBE 
-------------------------------------------------------------------------------------------------------------------
	items:
	status indicator. 3 pages: user info & setup, reloadice, goal info tracking 
	scan mode tool. 3 pages: em field scan, bio elec energy scan, map data scan
	item belt viewer. 4 pages: goal item usage select, readables, listenables, maptopo
-------------------------------------------------------------------------------------------------------------------
*/
defaultproperties{}        