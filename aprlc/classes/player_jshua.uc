class player_jshua extends player_apparent;
// i can't go a single day without bloating up my classes huh
// the most important component of my newest invention, this PR system, is the sheer HIGH given to the user's brain
// we must HOOK the user with these interactions, like most AA games do, but not in a BORING way! It must be MY way.
// _pr stands for PAVLOVIAN RESPONSE -> all sounds related to this must be somewhat.. exaggerated. Satisfying.

// baseline for this system must be served up with how the game responds to user control. walking, running, jumping, etc.
// joshua has some military experience, so his step noises must be LOUDER, walking must be HEAVIER,  ducking FASTER, 
// running LESS-BURDENED than APRIL.

/** files moved to sounds/newgame/proj most of them were shit anyway
------------------------------------------------------------------------------------------------------------------------
#exec audio import file="..\aprlc\sounds\responsiveness\oggtest.ogg" 		name="duke" 	group="player_joshua_pr"
#exec audio import file="..\aprlc\sounds\responsiveness\oggtest2.ogg" 		name="oph" 	group="player_joshua_pr"
#exec audio import file="..\aprlc\sounds\responsiveness\KTaunt1.ogg" 		name="kane1" 	group="player_joshua_pr"
#exec audio import file="..\aprlc\sounds\responsiveness\KTaunt10.ogg" 		name="kane2" 	group="player_joshua_pr"
#exec audio import file="..\aprlc\sounds\responsiveness\KTaunt13tr.ogg" 	name="kane3" 	group="player_joshua_pr"
#exec audio import file="..\aprlc\sounds\responsiveness\KTaunt2.ogg" 		name="kane4" 	group="player_joshua_pr"
#exec audio import file="..\aprlc\sounds\responsiveness\KTaunt5tr.ogg" 		name="kane5" 	group="player_joshua_pr"
#exec audio import file="..\aprlc\sounds\responsiveness\KTaunt6.ogg" 		name="kane6" 	group="player_joshua_pr"
#exec audio import file="..\aprlc\sounds\responsiveness\Unreal.ogg" 		name="unreal" 	group="player_joshua_pr"
*/
//--------------------------------viewcalc declarations:
var playerpawn px;
var float smooth, bound; 	//stolen from playerpawn
// todo move these to structs
var rotator 	landed_in, 
		landed_betw, 
		landed_out, 
		landed_fin;
var rotator	cameraRTnew,
		camerarot_newyp;        //yp means new yaw pitch, rolling will be LATER

var float	camerapos_newxy;	//that reminds me, view shake needs rewriting
var any		shuffle;		//test
//stolen rlcoop goods:
var float LastSaveTime;
var vector LastSaveLocation;

//=================================================================================================
// joshua camera calculation test (end result should ideally work in ensemble with hand animations)
//=================================================================================================
function playercalcview( out actor viewact, out vector camloc, out rotator camrtt ){
if (px.ViewRotation!=camrtt); // <--- parent property not in temporary position
}

function FellOutOfWorld(){ //tested, working. now potential bsp errors won't kill the player
	SetLocation(LastSaveLocation);
	Velocity=vect(0,0,0);
	Acceleration=vect(0,0,0);
}
function renderoverlays(canvas c){



}
/*function handlewalking(){
//todo write util timer interpolator for bobbing
//todo bobbing rewrite 
super.handlewalking(); 										//dirty hack to ensure we can still sprint while..
if ( bIsWalking==true) 	bNoStopAtLedge=true; 							//..this check turns off ledge protection, todo: add sliding
if (physics!=phys_swimming) {
	if (brun==1) walkingpct=lerp(1,0,1.55); 						//remember (alpha, origin, result) -> alpha= speed multiplier
	else if (brun==0) walkingpct=lerp(1,2.4,0); 						//UPD4: rewrote sprinting, should prep sliding conditions
	if (bduck==1) walkingpct=lerp(1,1,0.75);                                             	//<----todo:add basic dynamics for these
	else if (brun==0) walkingpct=lerp(1,0.25,1.4); 						//todo: fixme. current vals are good for sliding endpoint
	} 
if ( (physics==phys_swimming) && (bRun==1) ) walkingpct=lerp(1,0.1,0.50); 
}*/

defaultproperties
{
	smooth=0.0
	bound=0.0
	camerapos_newxy=0.0
	px=None
	landed_in=(Pitch=0,Yaw=0,Roll=0)
	landed_betw=(Pitch=0,Yaw=0,Roll=0)
	landed_out=(Pitch=0,Yaw=0,Roll=0)
	landed_fin=(Pitch=0,Yaw=0,Roll=0)
	cameraRTnew=(Pitch=0,Yaw=0,Roll=0)
	camerarot_newyp=(Pitch=0,Yaw=0,Roll=0)
	shuffle=(nil)
	CarcassType=Class'UnrealShare.FemaleOneCarcass'
	Health=35
	GroundSpeed=205.0
	WaterSpeed=95.0
	AccelRate=1200.0
	AirControl=0.0
	WalkingPct=1.1
	BaseEyeHeight=29.0
	Land=None
	WaterStep=None
	MenuName="AprilTest"
	CollisionRadius=12.0
	CollisionHeight=48.0
	Mass=140.0
	Buoyancy=132.0
}
