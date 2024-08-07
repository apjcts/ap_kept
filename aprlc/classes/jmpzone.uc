class jmpzone expands sensenet; // jump zone actor for erictool weapon testing, usually propels entering actors upwards
var float tvfl, ran, past, present;
var vector ziggy;
var bool resetx;
var name taglink;
var jmpzone jmpradio;
/*
#exec import sound file="sound\imm\DEATH3.ogg"   group="dzone"	name="DEAD3"	
#exec import sound file="sound\imm\DEATH6.ogg"	 group="dzone"	name="DEAD6"	
#exec import sound file="sound\imm\DEATH7.ogg"	 group="dzone"	name="DEAD7"	
#exec import sound file="sound\imm\DEATH9.ogg"	 group="dzone"	name="DEAD9"	
#exec import sound file="sound\imm\duskfall.ogg" group="dzone"	name="duskf"	
#exec import sound file="sound\imm\SCREAM1.ogg"	 group="dzone"	name="SCRE1"	
#exec import sound file="sound\imm\SCREAM3.ogg"	 group="dzone"	name="SCRE3"	
*/
function notifyspawned(){ 
	///local class<sensenet> sn; 
	local name sn;
	local actor selftest;
	///self=selftest;
	/// guess i was making extrasure 
	if (selftest.tag != "tmpsens" )
	sn='tmpsens'; 
	selftest.tag=sn; 
	taglink=sn;
	log("spawned taglink:"$taglink);
	log("spawned name:"$selftest.name);
	log("spawned local name:"$sn);
	///sn.name="aaa"; 
////	log(selftest.tag);
///	log(sn);
	}	
function resetme(){
resetx=true;
zonevelocity=default.zonevelocity;
zonegravity.x=default.zonevelocity.x;
zonegravity.y=default.zonevelocity.y;
zonegravity.z=default.zonevelocity.z;
zonefluidfriction=default.zonefluidfriction;
zonetimedilation=default.zonetimedilation;
}

function dumpallzonedata(){
		local pawn p;
		p=pawn(owner);
		log("zoneffr: "$zonefluidfriction);
		log("zonevelx: "$zonevelocity.x);
		log("zonevely: "$zonevelocity.y);
		log("zonevelz: "$zonevelocity.z);
		log("zonegravx: "$zonegravity.x);
		log("zonegravy: "$zonegravity.y);
		log("zonegravz: "$zonegravity.z);
		log("ran: "$ran);
		log("tvfl: "$tvfl);
		log("p.oldloc: "$p.OldLocation.z);
		///log("p.colloc: "$p.ColLocation.z);
	        log("aircontr: "$p.aircontrol);
	        log("ziggy.z: "$ziggy.z);
	        log("ztd: "$zonetimedilation);
		log("----------------------------------------");
}
function destroyed(){
local pawn p;
p=playerpawn(owner);
	if ((p.physics!=phys_falling) && (p.physics!=phys_swimming) ){
		past=level.timeseconds;
		present=past+1;
		log("past: "$past);
		log("present: "$present);
///		resetme();
                if (resetx) present=past;
		}
super.destroyed();
}
function spawned(){
	local pawn p;
	local rotator tview2; ///rotation experimentation leftover
	local vector tzonevel, direct, ffs, ffs2;	///destnorm, dest
// 	todo remove dependancy, call playsound() instead
	///boxmin.x=default.boxmin.x+p.location.x*2;	boxmin.y=default.boxmin.y+p.location.y*2;	boxmin.z=default.boxmin.z+p.location.z*2;
	///boxmax.x=default.boxmax.x+p.location.x*2;	boxmin.y=default.boxmax.y+p.location.y*2;	boxmin.z=default.boxmax.z+p.location.z*2;
	///log(boxmin);
	///log(boxmax);
	p=playerpawn(owner);    // what the fuck? this got lost in !falling condition
	resetx=false;
	tvfl=0.010; 		// temp float to determine strength of velocity
	ran=frand();    	// randomize sound
       /// RelativeLocation=p.location+location;
        /**
        if (ran>0.5) playsound(sound'aprng.dzone.DEAD3');	
        if (ran>0.4) playsound(sound'aprng.dzone.DEAD6');	
        if (ran>0.3) playsound(sound'aprng.dzone.DEAD7');	
        if (ran>0.2) playsound(sound'aprng.dzone.DEAD9');	
	*/
	if (p.jumpz!=0) {
	        bWaterZone=true;
		p.aircontrol=ran+=0.5;
		ziggy.z=vsize(p.velocity/fclamp(p.jumpz,ran,tvfl) ); //test
		///--------------alp, a----------------------------------,b-----------------------------------------------------
		///zonegravity.x=fmin(p.location.x,location.y) +fmax(zonevelocity.x+ran,default.zonevelocity.x) /tvfl;
		///zonegravity.y=fmin(p.location.y,location.x) +fmax(zonevelocity.y+ran,default.zonevelocity.y) /tvfl;
		///zonegravity.z=fmin(p.location.z,location.z) +fmax(zonevelocity.z+ran,default.zonevelocity.z) /tvfl;
		///zonevelocity.z=(location.z-p.location.z)/tvfl-fmax(zonegravity.z+ran,default.zonegravity/z);
		zonevelocity.z=fmin(p.location.z,location.z) / fmin(zonegravity.z,default.zonegravity.z) + ran%tvfl;
		//if (zonevelocity.z>0) zonetimedilation=zonevelocity.z/0.5;
		//if (zonevelocity.z<0) zonetimedilation=zonevelocity.z*0.5;
		if ( (p.physics==phys_falling) && (p.velocity.z>=666) ) {
			//zonetimedilation=lerp(0.5, default.zonetimedilation,zonetimedilation/2);
			zonevelocity.z=zonegravity.z/p.velocity.z;
			//zonevelocity.z=zonetimedilation;
			//zonetimedilation-=zonevelocity.z-p.velocity.z;
			if (zonetimedilation>0.5) resetme();
///	        if (resetx!=false) resetme();
			///p.velocity.z=zonetimedilation;
		}
		///zonegravity.y=0;
		///zonegravity.z=0;
///		zonegravity=lerp(	0.5, 		
///					fclamp	( dest.z, p.location.z, location.z),
///					fclamp	( 0.45, default.zonevelocity.z - zonevelocity.z, 
///					fmax	( ran/2, ran/0.5)
///					) ///   fucking hell
///				);
		///ZoneVelocity.z=p.velocity.z+clamp(int(p.jumpz),int(ran),int(tvfl)); 
		///ZoneFluidFriction=-fclamp(p.jumpz,ran,tvfl); 	
			///if (ran>1) zonegravity.z=ziggy.z/0.025;	
			///	else if (p.jumpz>300)	ZoneVelocity.z=p.velocity.z+clamp(int(p.jumpz),int(ran),int(tvfl)); 
			///if (ran>=0.5) zonegravity.z=ziggy.z/0.015;
			///if (ran>=0.025) zonegravity.z=ziggy.z/0.005; 	
			///if (ran>=0.005) zonegravity.z=ziggy.z/0.0025;
		///zonevelocity.z=default.zonevelocity.z;
		ffs=p.location;
		ffs2=location;
		///ffs=p.location+=vector(trace(vector(p.ColLocation.z-dest.z), destnorm, vsize(dest);
		///ffs2=p.location-=vector(trace(vector(p.ColLocation.z-dest.z), destnorm, vsize(dest);
		///ffs2~=vector(p.location.z-default.location.z);
		///zonevelocity=lerpvector(trace(ffs2,destnorm,dest,ffs,,,true), ffs,ran/0.5);
///		if ( (p.jumpz>800) && (p.oldlocation.z<=211.9) ){
///			zonegravity.z+=ran/2;
///		}                                               
///		if ( (p.jumpz<800) && (p.oldlocation.z>=211.9) ){                  
///			zonegravity.z-=ran/2;
///		} 
		///if (ran>=0.7) zonegravity.z=ziggy.z/0.5;
		///if (ran>=0.4) zonegravity.z=ziggy.z*0.025; //test
		///dumpallzonedata();
		}
	///tview2=tview3; 
	if ((p.physics!=phys_swimming) && (p.jumpz>0)) {
		ZoneGroundFriction=default.zoneFluidfriction/1.5;
		ZoneFluidFriction=default.zoneFluidfriction/1.5;
		playsound(sound'april.player_extras.djumpfromground');
		///zonetimedilation=default.zonetimedilation;
		tzonevel=zonevelocity*direct;///*default.zonefluidfriction;
		tview2=p.viewrotation+=rotator(direct);
		direct=p.location+vector(tview2*tvfl);
		///tview3=tview2*vsize(direct);
		///tview3=p.viewrotation;
//		log(tview3);
		}
	if ( (p.velocity.z> 400)){
	        ///p.velocity.z=zonetimedilation;
	        if (p.velocity.z>-666) resetx=true;
	        ///p.aircontrol=p.default.aircontrol;
		///ZoneGroundFriction=default.zoneFluidfriction;
		///ZoneFluidFriction=default.zoneFluidfriction;
		}
} 

defaultproperties{
	RelativeLocation=(X=0.0,Y=0.0,Z=0.0)        
        zonegroundfriction=-1.9
        ZoneFluidFriction=-1.5
        zonevelocity=(x=0,y=0,z=0)
        bhidden=false
        LifeSpan=0.3
	bNoDelete=false
        bStatic=false
	BoxMin=(X=-90.0,Y=-90.0,Z=-90.0)
	BoxMax=(X=90.0,Y=90.0,Z=90.0)
	ZoneAreaType=DZONE_Cube
}