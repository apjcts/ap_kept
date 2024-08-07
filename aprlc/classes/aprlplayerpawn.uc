// ======================================================================
// lead actress - April Kellie. avg build, aged 28, no military training
// ======================================================================
class aprlplayerpawn extends unrealiplayer; 
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// texture data
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// todo separate sttest & hudoverlays
// todo add fear-effect-esque inventory elements
/// APRiL Content texture set:
/// be sure to set: bAlphaBlend=True or bMasked=True	c.bNoSmooth must always be True
#exec texture import file="tex\hands_v1.png"		name="RunnerHands"               	group="aprlctex"	FLAGS=0 btc=1
#exec texture import file="tex\sttestf.png"		name="stTest"				group="aprlctex"        FLAGS=0 btc=1
#exec texture import file="tex\allhudoverlaysf.png"	name="AllHudOverlays"           	group="aprlctex"        FLAGS=0 btc=1
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// audio data
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// main sounds (moved from april.u)
#EXEC AUDIO IMPORT FILE="..\april\sounds\playerwalk\aprilnewjmp.wav" 		NAME="calebgroundslam" 		GROUP="player" 
#EXEC AUDIO IMPORT FILE="..\april\sounds\playervoices\shellyjump.wav"    	NAME="apriljump" 		GROUP="player" 
#exec audio import file="..\april\sounds\playervoices\aprilhurt.wav"		name="aprilhurt"		group="player"
#EXEC AUDIO IMPORT FILE="..\april\sounds\playervoices\screamfall2.wav"    	NAME="aprildies2" 		GROUP="player" 
#EXEC AUDIO IMPORT FILE="..\april\sounds\playervoices\justine_crazy3.wav"    	NAME="ffreact1" 		GROUP="player" 
#EXEC AUDIO IMPORT FILE="sounds\april\landed.ogg"    	NAME="landed" 		GROUP="player" 
#EXEC AUDIO IMPORT FILE="sounds\april\landed2.ogg"    	NAME="landed2" 		GROUP="player" 
#EXEC AUDIO IMPORT FILE="sounds\april\landed3.ogg"    	NAME="landed3" 		GROUP="player" 
#EXEC AUDIO IMPORT FILE="sounds\april\glutton.ogg"    	NAME="BITE3" 		GROUP="player" 
#EXEC AUDIO IMPORT FILE="sounds\april\BITE2.wav"    	NAME="BITE2" 		GROUP="player" 
#EXEC AUDIO IMPORT FILE="sounds\april\BITE.wav"    	NAME="BITE1" 		GROUP="player" 
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// mesh data
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
///Runner Hands, Left                                                                   
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0002.obj"		name="runner0002"	
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0003.obj"         name="runner0003"
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0004.obj"         name="runner0004"
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0005.obj"         name="runner0005"
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0006.obj"         name="runner0006"
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0007.obj"         name="runner0007"
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0008.obj"         name="runner0008"
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0009.obj"         name="runner0009"
///Runner Hands, Right                                                                   
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0002.obj"		name="runner0010" unmirror=1	
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0003.obj"         name="runner0011" unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0004.obj"         name="runner0012" unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0005.obj"         name="runner0013" unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0006.obj"         name="runner0014" unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0007.obj"         name="runner0015" unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0008.obj"         name="runner0016" unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0009.obj"         name="runner0017" unmirror=1
/*
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0002.obj"		name="runner0002R"	 unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0003.obj"         name="runner0003R"       unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0004.obj"         name="runner0004R"       unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0005.obj"         name="runner0005R"       unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0006.obj"         name="runner0006R"       unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0007.obj"         name="runner0007R"       unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0008.obj"         name="runner0008R"       unmirror=1
#exec MESH MODELIMPORT STATICMESH MODELFILE="obj\Runner\runner0009.obj"         name="runner0009R"       unmirror=1
*/
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
///var() sound ftstep[6]; //surface walk override test property
var(MovementResponse) sound 	WaterEnter, 
				WaterExit, 
				TurnHeavy, 
				TurnLite,
				LandGear1,      // todo better height checks
				LandGear2,
				LandGear3,
				LandGear4,
				WaterLandSma,	/// shallow waterzones
				WaterLandBig,   /// high distance
				WaterLandSub,   /// player submerged
				stx,
				ftstep1,        /// obv walking
				ftstep2,
				ftstep3,
				ftstep4,
			        strx,
			        ftrun1,	/// obv running
			        ftrun2,
			        ftrun3,
			        ftrun4,
			        Wetwalk1,
			        Wetwalk2,
			        LandGrunt2,
			        LandGrunt3,
			        fallsound;
///			        Wetwalk3,
///			        Wetwalk4;        // todo crawl sounds
var bool rd, rs; //timer tracking
var byte 	tempa,   
		his,     
		arms,    
		wide;
var bool	jmp, 
		submerged, 
		fallhigh, 
		swimmin; /// function checks
///var vector	scanlocation;
var actor	scanactor;

// counting machine for.... stuff 
const A=0; 
const B=1; 
const C=2; 
const D=3;

//var float ir; //randomized 
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//!! note that bIsWalking can't tell between crouching and 'sprinting' so do not use.... then ap proceeds to use it anyway.
//!! tested bstrafe and it caused crouch to go fast again, then it dawned on me that this thing is ALWAYS on! silly! 
//todo: handler for crouching (half-done), inventory overhead to manage tools (fuck)
//todo: translator mesh (dammit), sound feedback for dodging and jumping repeatedly (shit)
//playrunning(); can't work until i have a model, so i must go back to blender mines...
//note on meshes: Fear Effect animation style must be recreated and improved on.
//base player build types to keep in mind: 
// 1 - AVG.	average build. -> rachel, april
// 2 - ATH.     athletic build. -> traci, imogan
// 3 - SPR.     sporty build.	-> joshua, unknown 



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// hook functions (not hook-hooks, just tied to superclasses)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	function postbeginplay(){
	///local pawn p;
	local zoneinfo zi;
	local sound ent, ext;
	///local inventory ino, inuh;
	///local vector al;
	///local rotator ar;
	/// these should reset at start if somehow were left active at last URL ------------------------------------------------
	submerged=false; swimmin=false; fallhigh=false;
	// todo pawn.Floor checks for spidermode
	///----- ino	------------------------------------
	///al=p.location; ar=p.viewrotation; ino=spawn(class'aprlc.ino',p,'radii',al,ar,p,/**templateobj?*/,false);
	///inuh=ino; log("local tag: "$inuh.tag$"  spawned tag: "$ino.tag); /// dog tag lamo
	///SetTimer(1,true,'constance');
	
	///if (p.velocity.z>0) SetTimer(1,false, 'FirstVerticalDir');
	///if (p.velocity.z<0) SetTimer(1,false, 'SecondVerticalDir');
	///----- set up unconditional surrender of settings from every zone we find in a level	------------------------------------
		SetTimer(1,true);
		foreach allactors(class'zoneinfo',zi){ //todo fix
		if (!zi.bWaterZone==true) {
			ent=default.WaterEnter;
			ext=default.WaterExit;
			if (zi.bwaterzone==false){
				zi.EntrySound=zi.default.EntrySound;
				zi.ExitSound=zi.default.ExitSound;
				} ///and then, finally
				Super.PostBeginPlay();	
			}///water check
		}///iterator
	}///function
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
		
		function timer(){
		local rotator sr; /// stored rotation
		local dynamiczoneinfo xl;
		if (physics!=phys_walking){
			if (bPressedJump==true){
				/// check if we
				JumpedTwice(jmp);
				if (jmp==false)/**make sure*/ 	bPressedJump=false;
				if (bpressedjump==true) 	jmp=true;
				if ( (physics==phys_falling)&&
					(jmp!=0)){
					///was: if (jmp!=0){
		        		dohighdistance(fallhigh);
					///if (fallhigh==true) {
					/// xl=spawn(class'aprng.jmpzone',,,location); // fuck, it's not part of the tree yet
					PlaySound(sound'aprlc.UAC.Jump');
					xl=spawn(class'dynamiczoneinfo',owner,,location);
					xl.bhidden=false;
					xl.bWaterZone=true;
					xl.ZoneFluidFriction=-1.5;
					///xl.bNoDelete=false;
        				///xl.bStatic=false;
					///xl.BoxMin=vector(-90.0,-90.0,-90.0)
					///xl.BoxMax=vector(90.0,90.0,90.0)
					///xl.ZoneAreaType=DZONE_Cube
					xl.lifespan=0.09; 	/// make sure it dies quickly enough
					xl.zonegravity.z=-800; 	/// test
						///} /// done with fallhigh?
					}/// checking for extra jumps
				}///done jumping?
				dowaterentered(swimmin);
			if (physics==phys_swimming) { dowater(submerged); }
			} /// player must be walking or doing spidermode
			///dorolltest(viewrotation,sr);
			///if(viewrotation!=sr){
			///	sr=viewrotation;
			///	playturning(); ///test
			///	}
			///log(fallhigh$" "$swimmin$" "$submerged);
		}
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
	function tick(float f){
		local bool moving;
		local vector oldaccel, newaccel;
		local float movedelta;
		local edodgedir dm;
		local rotator rtt;
		oldaccel=acceleration;
		viewrotation=rtt;
		newaccel=oldaccel;
		movedelta=lerp(movedelta,walkingpct,accelrate);
		if(newaccel!=oldaccel){ moving=true; }
		if(physics==phys_walking){
		processmove(movedelta,newaccel,dm,rtt);
		docheckdelayedjump(f,movedelta);
		dorolltest(rtt,);
		///settimer(0.4,moving,'walking');
		///if(timercounter>0.01)
		///walking();
		
		}///walking
	}/// done
	///function InitNewSavedMove( SavedMove nm, float dt, vector accel, EDodgeDir dm){}    
	function handlewalking(){
	local bool moving;
		/**
		if (brun!=0) {
			if(timercounter>0.02)
				settimer(0.2,moving,'running');
				///running();
				walkingpct=1.4*2;
				groundspeed=default.groundspeed*0.5;
				waterspeed=default.waterspeed*1.5;
				if(moving==false)settimer(3+timercounter,false);
				moving=true;
				if(timercounter>3) moving=false;
				}
		if (bIsCrouching==true){
			
			///if(timercounter>0.03)
				///walking();
				walkingpct=0.5;
				groundspeed=default.groundspeed/2;
				/// stopped crawling
				if (brun!=0)
				if(timercounter>0.04)
				///walking();
				walkingpct=default.walkingpct/2;
				groundspeed=default.groundspeed/2;
			}///stopped sliding
	if (physics==phys_swimming) 
		waterspeed=default.waterspeed;
	if (physics==phys_walking)
		walkingpct=default.walkingpct;
		groundspeed=default.groundspeed;
		*/
		switch (physics) { 
		case phys_swimming:	slowthefuckdown();	break;
		case phys_walking:	checkifrunning();	break;
		case phys_falling:	waitforlongfall();	break;
	//todo	case phys_spider:				break;
	//todo  case phys_interpolating:			break;
		}
		super.handlewalking();
		bNoStopAtLedge=true;
	}	
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// movement funcs todo revise this shit
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//// -------------- HANDLEWALKING
	function checkifrunning(){
		local bool thirdtimesthefuckingcharm;
		if (physics!=phys_walking) /** fuckoff and */ return;
		if (brun!=0)	thirdtimesthefuckingcharm=true;
		else 		thirdtimesthefuckingcharm=false;
                /** ====================================================
                	I WANT ROOM SERVICE! 
                		I want my shirts laundered, 
                			like they do 
		============================== at the imperial hotel. */
		if (thirdtimesthefuckingcharm==true) {
			if (walkingpct==default.walkingpct){
                        	walkingpct=walkingpct*2;
				} ///nested for extra measure
			} /// after that, do hard reset
		if (walkingpct!=default.walkingpct) 
			walkingpct=default.walkingpct;
			slowthefuckdown(); /// above is redundant,but makes wpct consistent
			/// needed because the check is not to be used with swimming, so...
			/// incase unreal decides to randomize the value again, i did this.
			/// if you have any suggestions on how2 to write my code, kys asmd. 
		}
	function waitforlongfall(){
		local float amt;
		settimer(5,false);
		amt=timercounter;
		switch (timercounter) {
			case 1: log("fell for: "$amt$" seconds"); 		break;
			case 2: log("fell for: "$amt$" seconds"); 		break;
			case 3: log("fell for: "$amt$" seconds"); 		break;
			case 4: log("fell for: "$amt$" seconds"); 		break;
			case 5: log("Please Scream now"); PlaySound(default.fallsound);		break;;
			}
		}
	function bool OhGodOhFuckIamFallingToMyFuckingDeath(optional float restdelay, optional float maxt){
		restdelay=timercounter+2; /// scout ahead 2 seconds
		if (restdelay==maxt) {
			if (timercounter==restdelay)
			}
		}
	
	function slowthefuckdown(){
		if (walkingpct>default.walkingpct) walkingpct=default.walkingpct;
		if (walkingpct<default.walkingpct) walkingpct=default.walkingpct/1.5;
		}
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
		function bool dohighdistance (bool fallhigh) { 
			///SetTimer(2,false); /// has to be falling alrdy
				if /*inevitably*/ (fallhigh==false){
					if ((timercounter>=1.9)&& 
					(physics!=phys_swimming)) 
					fallhigh=true; /// this SHOULD 
					return fallhigh;
					}
				} /// work in tandem with phys 
				/// checks, but you never know, so
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
		function FactReset(){
			if ((physics!=phys_falling) && 
			(physics==phys_walking)) { fallhigh=false; swimmin=false; }
			if ( (physics==phys_swimming)&&(swimmin==false) ) { swimmin=true; }
			/// just in case... i know unreal can act up in fascinating ways
			if ((physics!=phys_falling)&&(timercounter==2) ) { jmp=false;	}
		} ///submerged is harder to track, figure it out later
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------		
		function bool dowaterentered(bool swimmin){
			swimmin=false;
			if (fallhigh!=0) {
				if (	(physics!=phys_falling)	&&
					(swimmin!=0)	&&
					(submerged!=0) 	) 
					playownedsound(sound'aprlc.newgame.WaterJumpHigh');
				}
			if (physics==phys_swimming) {
				swimmin=true; 
				/// call dowater() from timer
				playownedsound(sound'aprlc.NewGame.WaterEnterMix');
				}
			if ((scanactor.region.zone.bwaterzone)&&(physics!=phys_swimming)){
			/// in some cases, we have to wade through shallow water, therefore
			playownedsound(sound'aprlc.newgame.WaterJumpSmall');
			}
		return swimmin;
		}
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
		function bool dowater(bool submerged){
			// ffs, i keep forgetting this class is a playerpawn
			local vector pl;
			local inventory a;
			submerged=false;
			if (physics==phys_falling) {
		        	/// scan for water zones at eyeheight
				pl=location; /// set gen px location
				pl.z=location.z+default.eyeheight;
				a.relativelocation=pl; /// finally, an actual movable
			if ((physics==phys_swimming)&&(a.region.zone.bwaterzone)) { /// test
				submerged=true;
				return submerged;
				}
			}
		///scanlocation=pl;
		scanactor.relativelocation=pl;
		}  ///WaterEnterMix                            
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
		function bool JumpedTwice(bool jmp){
		///local int time1, time2;
		jmp=false;
		
		if (	(bPressedJump==true)&&
			(physics==phys_falling)&&
			(physics!=phys_swimming) 	)
			jmp=true; return jmp; log("jumped twice");
		///if ((physics!=phys_walking)&&(physics!=phys_swimming) ) {
		///	docheckdelayedjump(time1,time2);
		///	jmp=true;log(time1);log(time2);
		///	}
		
		}
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
	function docheckdelayedjump(optional int t, optional int tx){
	///local int t; // used to have p here, forgot that 
	// the game assumes playerpawn is being controlled
	if ((physics!=phys_walking)&&
		(physics!=phys_swimming) ){
			tx=t; t++;
			if (physics==phys_falling) {
			if (t==255) docheckdelayedjump(t); 
			if (t==0) docheckdelayedjump(tx); 
				///if (t==tx) { log("just returned t: "$t);  	return t;  }
				///if (t!=tx) { log("just returned tx: "$tx);	return tx; }
				} /// must not be falling, then
		} /// must not be swimming either then, reset
	if (physics==phys_walking) t=0;
	}
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
	exec function dorolltest(rotator r, optional rotator olr){
		local vector lastdirect;
		local actor a;
		local playerinteraction pi;
		a.relativelocation=location;
		lastdirect=a.relativelocation;
		pi.playercalcview(a,lastdirect,r);
		olr=viewrotation-r;
		viewrotation=r+=olr; ///test
		lastdirect.x=location.x;
		lastdirect.y=location.y;
		r.pitch=viewrotation.pitch;
	///r=(viewrotation+((lastdirect.x/0.2),(r.pitch-olr),r.roll)); /// test
	///r=viewrotation-lastdirect.y*0.2,r.pitch+olr; /// oppos
	///r.roll=oldr.roll-lerp(timercounter-level.timeseconds,r.roll,viewrotation.roll);
		if (viewrotation!=r) olr=r;
		r.roll=lastdirect.x-location.x;/// eh?
	}
	                                 
	function processmove(float deltat, vector newaccel, edodgedir dm, rotator deltar){
		local rotator oldvr, nextvr;
		local float rt, retick, rtx;  /// random, real, stored
		if (brun!=0){
			rt=RandRange(retick,rtx);
			retick=(rt*level.timeseconds-retick);
			///rtx=rtx+retick-rt;
			viewrotation=oldvr;
			wait(deltat);
			newaccel=acceleration;
			until(rtx);
			retick=nextvr.yaw-rt;
			retick=nextvr.roll-retick/0.9;
			viewrotation=LerpRotation(nextvr, oldvr, deltat-retick); ///test
			oldvr=LerpRotation(viewrotation, nextvr, deltat-retick); ///test
			nextvr=LerpRotation(oldvr, viewrotation, deltat-retick); ///test
			}
		if(brun==0){
			settimer(1,false);
			if (timercounter>0.99)
			deltar=viewrotation;
			acceleration=newaccel;
		}
	}
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// other utility functions
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	function PlayShittyFtstep(){         
	local sound grunt, steppo, runner, wetsfx;
	local bool stepreq;
	local float decis, iv, decl;
	local byte bugoff;                     
	local float imp;
	local byte ws;
	imp=imp/jumpz;
	///if (stepreq==true){ this shit is always false
	grunt=LandGrunt; /// heehee, noone will know. seriously though i don't feel like writing more playsound calls.
	///if (Level.FootprintManager!=None){ ///|| (Level.FootprintManager.Static.OverrideFootstep(pawn(owner),steppo,ws)) ){	
		decis=FRand();
		if (decis < 0.44 ) grunt=LandGrunt; steppo=ftstep1; runner=ftrun1; 
		if (decis < 0.47 ) grunt=LandGrunt2; steppo=ftstep2; runner=ftrun2;  wetsfx=wetwalk2;
		if (decis < 0.54 ) grunt=landgrunt3; steppo=ftstep3; runner=ftrun3; 	
		if (decis > 0.54 ) steppo=ftstep4; runner=ftrun3; runner=ftrun4; wetsfx=wetwalk1;
	///	}
	//}
	///if( steppo==None ) return;
	if (( bIsWalking )&&(physics==phys_walking)) {
			stepreq=true;
			stx=steppo;
		if (!FootRegion.Zone.bWaterZone) PlaySound(steppo,slot_interact,0.5,false,400.0,1.0);
		if (iv/jumpz>0.07) PlaySound(land, SLOT_Interact, 2, false, 800.0, 1.0);
		if (bRun) 
			strx=runner;
		if (!FootRegion.Zone.bWaterZone) PlaySound(runner,slot_interact,0.5,false,400.0,1.0);
			///PlaySound(runner,slot_interact,0.5,false,400.0,1.0);
		if ( FootRegion.Zone.bWaterZone) PlaySound(wetsfx,slot_interact,0.5,false,400.0,1.0);
		}
	}
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// abstract behavior (timer shit, mostly)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
	function wait(float delay, optional bool ting){
		settimer(delay,ting);
		if (timercounter-1==delay)
		if (timercounter==delay) ting=true;
		else ting=false;
		settimer(timercounter+1*delay,false);
		///log("DELAY: "$delay);
	}
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
	function until(float eventhoriz, optional name doer, optional out float result){
		local float delay;
		eventhoriz=delay-timercounter;
		settimer(delay-eventhoriz,false);
		if (timercounter==eventhoriz)
		///log("EVENTHR: "$eventhoriz);
		enable(doer);
		delay=result-eventhoriz;
		///consolecommand("exec"$" "$doer);
	}
///------------------------------------------------------------------------------------------------------------------------------------------------------------	
	function resetduck(){
		if ( (timercounter>0)&&(timercounter<0.25)){ 		rd=true; }
		if ( (timercounter>0.25)&&(timercounter<0.549)){ 	groundspeed=lerp(0.5,groundspeed,default.groundspeed); }
		if ( (timercounter>0.550)&&(timercounter<0.94)) { 	walkingpct=lerp(0.5,walkingpct,default.walkingpct); 
			if ( timercounter>0.56){ 			///log("velocities had been reset, time: "$timercounter); }/// are you DONE?
			/**now, as we approach 2nd half, commence: */	///resetspeeds(); 
			if (timercounter>=0.64) consolecommand("setjumpz" " " $default.jumpz);
			if (timercounter>=0.84) groundspeed=default.groundspeed;
			if (timercounter>=0.94) walkingpct=default.walkingpct; rd=false;
			}///ending lerp scope for 0.55
		if (timercounter==0.99) 
			rd=false; 
			///log("rd= "$rd);
		}///what the fuck?
	}///what the ACTUAL fuck!?
///------------------------------------------------------------------------------------------------------------------------------------------------------------	
	function resetspeeds(){
		if (timercounter>0) { rs=true;
			if (groundspeed!=default.groundspeed){
				if (timercounter>=0.95) { 
					groundspeed=default.groundspeed; 
					}///are you quite...
				}///...done with groundspeed? 
		        if (timercounter>=0.99){ 	
		        		rs=false;
					///log("rs= "$rs);
					} ///reached end of lifespan
		        	}///must be zero, lol
		}///now gtfo
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// sound response (todo revise this shit)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	function running(){
	local float x;
	if (brun!=0){
	x=frand(); 
	if (timercounter<x) 	Playsound(ftrun1,slot_interact); 
	if (timercounter>x) 	Playsound(ftrun2,slot_interact); 
	if (timercounter==x) 	Playsound(ftrun3,slot_interact); 
	if (timercounter~=x)	Playsound(ftrun4,slot_interact); 
		}
	}
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
	function walking(){
	local float x, x2, x3, x4;
	if (biswalking!=0){
		x=frand();
		x2=x+timercounter;
		x3=x+timercounter%level.timeseconds;
		x4=float(x2~=x3)-x;
		log("walking x: "$x);
		log("walking x+timercounter: "$x2);
		log("walking x+timercounter md leveltimesec: "$x3);
		log("walking x2~=x3-x: "$x4);
		/**
		if (timercounter<x)			Playsound(ftstep1,slot_interact); 
					if(x>0.55)	Playsound(ftstep2,slot_interact); 
		if (timercounter>x)			Playsound(ftstep3,slot_interact); 
					if(x<0.35)	Playsound(ftstep4,slot_interact); 
		*/
		}
	}
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
	function PlayTurning(){
		local rotator rtt;
		rtt=viewrotation;
		BaseEyeHeight = Default.BaseEyeHeight;
		if ((viewrotation.pitch>rtt.pitch)||(viewrotation.pitch<rtt.pitch)){
			///if ( (Weapon == None) || (Weapon.Mass < 20) )
			///	PlayAnim('TurnSM', 0.3, 0.3);
			PlaySound(TurnLite, SLOT_Interact, FClamp(4 * Weapon.Mass,0.5,5), false,1000, 1.0);
			if ((viewrotation.yaw>rtt.yaw)||(viewrotation.yaw<rtt.yaw)){
				PlaySound(TurnHeavy, SLOT_Interact, FClamp(4 * Weapon.Mass,0.5,5), false,1000, 1.0);
				}
			}
		///	PlayAnim('TurnLG', 0.3, 0.3);
	}
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
	function PlayLanded(float impactVel){
		local float i, vol;
		impactVel = impactVel/JumpZ; impactVel = 0.1 * impactVel * impactVel;
		BaseEyeHeight = Default.BaseEyeHeight; /// interesting how they always come back to this
		if ( impactVel < 0.27 ) vol=0;
		if ( impactVel > 0.27 ) vol=FMin(4, 5 * impactVel); i=frand();
		///if (i<0.5) PlaySound(LandGrunt, Slot_Talk,  FMin(4, 5 * impactVel),false,1600,1);
		if (i>0.50) PlaySound(LandGrunt, SLOT_Talk,vol/impactvel,false,1600,1+0.025);
		if (i<0.25) PlaySound(LandGrunt2, SLOT_Talk,vol/impactvel,false,1600,1+0.046);
		if (impactvel>=0.40) PlaySound(LandGrunt2, SLOT_Talk,vol/impactvel,false,1600,1+0.057);
		PlaySound(Land, SLOT_Interact, FMin(4, 5 * impactVel),false,1600,FRand()*0.5+0.7);
		///	if( Level.FootprintManager!=None )
		///	else if (FootRegion.Zone.bWaterZone==false && (impactVel > 0.09) )
		///	if (i>=0.75) PlaySound(LandGear1, SLOT_Interact, FClamp(4 * impactVel,0.2,4.5), false,1600, 1.0);
			Level.FootprintManager.Static.PlayLandingNoise(Self,0,impactVel);
			i=frand();
			///if (i>=0.65) PlaySound(LandGear2, SLOT_Interact, FClamp(4 * impactVel,0.2,4.5), false,1600, 1.0);
			if (i<=0.45) PlaySound(LandGear3, SLOT_Interact, FClamp(4 * impactVel,0.2,4.5), false,1600, 1.0);
			if (i<=0.55) PlaySound(LandGear4, SLOT_Interact, FClamp(4 * impactVel,0.2,4.5), false,1600, 1.0);
		if (FootRegion.Zone.bWaterZone) { 
			if (impactVel > 0.01)
			PlaySound(WaterLandSma,  SLOT_None, FClamp(4 * impactVel,0.2,4.5), false,1600, 1.0);
		if (impactVel > 0.17){
			PlaySound(WaterLandBig,  SLOT_None, FClamp(4 * impactVel,0.2,4.5), false,1600, 1.0);
			PlaySound(WaterLandSub,  SLOT_None, FClamp(4 * impactVel,0.2,4.5), false,1600, 1.0);
			}
		}
	}
/// do i need you [Land=Sound'aprlc.player.landed'] ? no i do not	


defaultproperties
{
	ftstep1=sound'april.walk_player_aprl.apr_con_walk1'
	ftstep2=sound'april.walk_player_aprl.apr_con_walk2'
	ftstep3=sound'april.walk_player_aprl.apr_con_walk3'
	ftstep4=sound'april.walk_player_aprl.apr_con_walk4'
	ftrun1=sound'april.walk_player_aprl.apr_con_run1'
	ftrun2=sound'april.walk_player_aprl.apr_con_run2'
	ftrun3=sound'april.walk_player_aprl.apr_con_run4'
	ftrun4=sound'april.walk_player_aprl.apr_con_run5'
	Wetwalk1=sound'aprlc.newgame.Splat1'
	Wetwalk2=sound'aprlc.newgame.Splat2'
	TurnHeavy=Sound'april.walk_player_aprl.apr_con_walkturn1'
	TurnLite=Sound'april.walk_pawn.cf_turn2'
	Land=Sound'aprlc.ResidualFx.BodySma1'
	LandGrunt=Sound'aprlc.player.landed'
	LandGrunt2=Sound'aprlc.player.landed2'
	LandGrunt3=Sound'aprlc.player.landed3'
	LandGear1=Sound'aprlc.ResidualFx.BodyBig2'
	LandGear2=Sound'aprlc.ResidualFx.BodyBig3'
	LandGear3=Sound'aprlc.ResidualFx.BodyBig4'
	LandGear4=Sound'aprlc.ResidualFx.BodyBig5'
	JumpSound=Sound'aprlc.april.apriljump'
	FallSound=Sound'aprlc.player.aprildies2'
	WaterLandSma=sound'aprlc.NewGame.WaterJumpSmall'
	WaterLandBig=sound'aprlc.NewGame.WaterJumpHigh'
	WaterLandSub=sound'aprlc.NewGame.WaterEnterMix'
	WaterStep=none
	WaterEnter=Sound'april.walk_player_gen.swim1'
	WaterExit=Sound'april.walk_player_gen.swim2'
	CarcassType=Class'UnrealShare.FemaleOneCarcass'
	Health=25
	GroundSpeed=225.0
	WaterSpeed=105.0
	AccelRate=1200.0
	JumpZ=380.0
	AirControl=2900.0
	WalkingPct=1.3
	BaseEyeHeight=30.0
	Die=Sound'april.Player.aprilhurt'
	MenuName="AprilTest"
	CollisionRadius=12.0
	CollisionHeight=40.0
	Buoyancy=122.0
}
