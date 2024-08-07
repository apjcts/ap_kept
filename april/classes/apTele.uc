class apTele extends ASMD;
var int t;

function checktest(){ 
Super.PostBeginPlay();
} 
                                                                                   
function Spawned() {
}
                              
function AltFire(float Value ) {
local pawn p;
p=playerpawn(owner);
p.consolecommand("allammo");
}

function Fire(float Value) {
if (AmmoType.UseAmmo(1)) { 
	bPointing=True;
	if (t==0) {t++;} else BroadcastMessage('tester',true); 
	Spawn (class 'april.aptelepointer',,,,);
	}
}


function tick (float DeltaTime) {
if ( (Owner == None) || (Pawn(Owner).Enemy == None) ) {	
		}//ending bFire check
        }//end this fuckin thing


defaultproperties
{
	t=0
	SelectSound=None
}
