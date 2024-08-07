// ==========================================================                                                                          
// gameinfo tester for april kellie 1
// i also used it to import all core materials
// ==========================================================
class aprilgameinfo expands SinglePlayer;

	function postbeginplay(){
		///local pawn p;
		SetTimer(1,false,'postlaunch');
		super.postbeginplay();
	}

	function postlaunch(){
			log("one second had passed!");
			log("launching aprilgameinfo:");
			///log("Computer Name:    "$level.ComputerName);
			log("Min Net Version:  "$level.MinNetVersion);
			level.bSupportsRealCrouching=true;	
			level.bSupportsCrouchJump=true;	
			///p.consolecommand("endfullscreen");
			///p.consolecommand("showlog");
			settimer(0.5,true,'msgtest');
			}

	function msgtest(canvas c){
	        level.GetLevelInfo();
	        c.SetDrawColorRGB(96,96,timercounter*8);
	        c.bnosmooth=true;
		c.FontScale=1.5; //test 
		c.font=Font'april.NouveauIBM';
	        c.setpos(1920/2,1080/2); /// test
	        c.drawtext(level.Title);
	        c.setpos(1920/2+40,1080/2); /// test
	        c.drawtext(level.Author);
		
		}


event playerpawn Login ( string Portal, string Options, out string Error, class<playerpawn> SpawnClass ) { //this should be a single line, fuck you
	if( SpawnClass != class'UPakMaleOne'
		&& SpawnClass != class'UPakMaleTwo'
		&& SpawnClass != class'UPakMaleThree'
		&& SpawnClass != class'UPakFemaleOne'
		&& SpawnClass != class'UPakFemaleTwo' )
	SpawnClass = UpakSwitchPlayerHax( SpawnClass );
	Return Super.Login(Portal,Options,Error,SpawnClass); }	
function class< PlayerPawn > UpakSwitchPlayerHax( class<PlayerPawn> SpawnClass ) {
        //note for later: log messages must open with + and close with - 
	//local aprlplayerpawn ap;
	log( "Default player class ("$SpawnClass$") is not aprlplayerpawn again...ugh." );
	///log( "Performing an elaborate switch operation. Somebody kill whoever made me." );
	if( ClassIsChildOf( SpawnClass, class'Male' ) ) {
	if( ClassIsChildOf( SpawnClass, class'MaleOne' ) )		return class 'aprlplayerpawn'; //todo: Joshua
	else if( ClassIsChildOf( SpawnClass, class'MaleTwo' ) )		return class 'aprlplayerpawn'; //todo: Rachel
	else if( ClassIsChildOf( SpawnClass, class'MaleThree' ) )	return class 'aprlplayerpawn'; //todo: Anthony
	}
	else if( ClassIsChildOf( SpawnClass, class'Female' ) || ClassIsChildOf( SpawnClass, class'Spectator' )) {
	if( ClassIsChildOf( SpawnClass, class'FemaleOne' ) )			return class 'aprlplayerpawn'; //todo: Traci 
	else if( ClassIsChildOf( SpawnClass, class'FemaleTwo' ) )		return class 'aprlplayerpawn'; //todo: Imogan 
	}
}
// note: apr is below this class on the tree, so aprwx will give an err upon compiling. ucc may not see it, but it's there. 
///	MapPrefix="april"
///	DefaultWeapon=class'apr.aprwx'

defaultproperties
{
	hudType=class'unrealshare.unrealhud'
	DefaultPlayerClass=Class'aprlc.aprlplayerpawn'
	DefaultWeapon=none
	GameName="April Kellie"
}
