class aprwx expands aprwpnbase; //also contains xxx.uc
//todo: glocktest
//todo: mesh import
///#exec audio import file="sounds/newstuff.ogg"             name="sr3newstuff"		group="logx"

var playerpawn p;
var playerinteraction splinter;
struct callbackdemand {	/// decline timers
			var float decl1, decl2,
				  decl3, decl4;	
			
			};
var callbackdemand cd;
var vecs pv;
//var playerpawn px;
var float DmgThresh;

	function playselect(){
	        ///dmgthresh=hitdamage;
		///hitdamage=dmgthresh%default.hitdamage;
		/// run it every two seconds
		///settimer(2,true,'fcheck_primary');
		playpostselect();
	}
	exec function wx_reset(){ //dirt hack i know, will fix it later
	        local actor eye, bird; /// behindview 1 / behindview 0
	        p=playerpawn(owner);
	///	loc1, loc2, loc3; 
	///	rot1, rot2, rot3;
	///	if (p.bbehindview==1) {	p.viewtarget = bird; p.viewrotation = pv.rot2;		}  /// third person
	///	if (p.bbehindview==0) {	p.viewtarget = eye; p.viewrotation = pv.rot1; 		}  /// first person
	/// 	cmds below set up the camera actor
	        p.LocalInteractions=splinter;
	        pv.loc1=bird.relativelocation; 	pv.rot1=bird.rotation;
	        pv.loc2=eye.relativelocation; 	pv.rot1=eye.rotation;
	        eye.relativelocation=p.location; /// adjust for eyes
	        eye.relativelocation.z=p.location.z+p.baseeyeheight;
	        if (p.bbehindview!=0) bird.relativelocation=p.location;///+vector(-60,-60,0); /// adjust behindview
	        else 
	        bird.relativerotation=p.viewrotation; // test
	        splinter.PlayerCalcView(eye,pv.loc1,pv.rot1);
	/// 	this shithack resets default command keys
		p.consolecommand("set " "input " "r " "Button " "bextra1");
		p.consolecommand("set " "input " "t " "Button " "bextra2");
		p.consolecommand("set " "input " "tab " "Button " "bextra3");
		log(eye.location);
		///log("done with wx_reset");
		}
	function countdown(){	if (timercounter>0.99) log(timercounter); log(cd.decl1-timercounter);	}
	function playpostselect(){ //test
		        p=playerpawn(owner);
		        settimer(1,false,'countdown');
		        settimer(1,false,'countdown');
		        settimer(1,false,'countdown');
		        settimer(3,false,'wx_reset');
	///		if (pawn(owner)==none) return;
		        if ( p.bextra1!=0 ) playsound(sound'april.util_ui.ui_firstwave1');
		        if ( p.bextra2!=0 ) playsound(sound'april.util_ui.ui_notifier');
		        if ( p.bextra3!=0 ) playsound(sound'april.aprw_glock.glock_load2');
	}
	
	/**
	function fcheck_primary(){ /// fact check, primary fire
	p=playerpawn(owner);
	if (timercounter>2){ /// in case it decides to fire prematurely, maybe not needed
		if (p.bfire!=0){
			log("Damage Threshold: "$dmgthresh);
			///log("Actual hitDamage: "$hitdamage); automag leftover
			///log("Default htDamage: "$default.hitdamage);
			log("default Threshol: "$default.dmgthresh);
			}
		}
	}
	*/
/**	leftover defaults: 
	HitDamage=320
	FireSound=Sound'april.aprw_glock.glock_fired'
	CockingSound=Sound'april.aprw_glock.glock_pulled'
	RefireRate=0.5
	PickupMessage="You got the G49 Semi Automatic"
	ItemName="Sidearm"
*/
defaultproperties
{
	DmgThresh=1
	shakevert=1.0
	SelectSound=Sound'april.aprilweapon.unholster'
	Misc1Sound=None
	Misc2Sound=None
	DeathMessage="%o was murdered by %k's %w."
	PickupSound=Sound'april.aprilweapon.dryweaponfind'
	PickupMessage="You somehow found your own hands..."
	ItemName="Arms"
}
