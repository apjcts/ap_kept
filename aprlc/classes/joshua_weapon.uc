class joshua_weapon expands automag; //also contains xxx.uc
//todo: glocktest
//todo: mesh import

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Command interface for joshua
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// exec function template()     {playerpawn(owner).consolecommand(""); }
//class xxx expands automag;
///#exec obj load file="../system/april.u" //test

var float lasttick;
var float tickn;

function tick(float f){
  if(level.timeseconds - lasttick < 5.0) return;
  lasttick = level.timeseconds;
  //log (lasttick);
}
//fixme move code to proper glock class to make deb command relevant
//exec function deb()     {playerpawn(owner).consolecommand("summon" " aprlc."); }
//exec function voorhees()     {playerpawn(owner).consolecommand("summon" " aprlc.item_lamp"); }
//todo exec function giveitback() for reverting standard user control scheme
exec function resetcontrols(){ //dirt hack i know, will fix it later
	//pawn(owner).consolecommand("set " "input " "q " "prevweapon");
	//pawn(owner).consolecommand("set " "input " "e " "nextweapon");
	//pawn(owner).consolecommand("set " "input " "z " "inventoryprevious");
	//pawn(owner).consolecommand("set " "input " "c " "inventorynext");
	//pawn(owner).consolecommand("set " "input " "v " "inventoryactivate");
	//pawn(owner).consolecommand("set " "input " "x " "duck");
	//pawn(owner).consolecommand("set " "input " "f " "Button " "grab");
	pawn(owner).consolecommand("set " "input " "r " "Button " "bextra1");
	pawn(owner).consolecommand("set " "input " "t " "Button " "bextra2");
	pawn(owner).consolecommand("set " "input " "tab " "Button " "bextra3");

	}


function playpostselect(){ //test
	        local playerpawn px;
	        if (pawn(owner)==none) return;
	        if ( px.bextra1!=0 ) playsound(sound'april.util_ui.ui_firstwave1');
	        if ( px.bextra2!=0 ) playsound(sound'april.util_ui.ui_notifier');
	        if ( px.bextra3!=0 ) playsound(sound'april.aprw_glock.glock_load2');
}

defaultproperties
{
	LastTick=0.0
	tickn=0.0
	HitDamage=320
	shakevert=1.0
	RefireRate=0.5
	FireSound=Sound'april.aprw_glock.glock_fired'
	CockingSound=Sound'april.aprw_glock.glock_pulled'
	SelectSound=Sound'april.aprilweapon.unholster'
	Misc1Sound=None
	Misc2Sound=None
	DeathMessage="%o was gangsta'd by %k's %w."
	PickupSound=Sound'april.aprilweapon.dryweaponfind'
	PickupMessage="You got the G49 Semi Automatic"
	ItemName="Sidearm"
}
