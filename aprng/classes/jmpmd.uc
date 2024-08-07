class jmpmd expands useables;
///------------------------------------------ todo, jump module 
var pawn px;
var actor	lnk;
var float storedcount, margin;
var vector emptyvec, emplemon;

function Activated(){		jumpenhance();	} // upon activation: enhances instigator's jumpability by creating a dzi with excessive vertical force
function DeActivated(){		fallprotect();	} // upon deactivation: causes instigator's physics to get mangled enough to break a fall from any distance
//-------------------------------------------------------------------------------------------------------------------------------------------------------------	
	function JUMPENHANCE(optional bool allowed, optional byte allowedbyte){ 	
	local pawn p;
	local vector tempvect;
	local rotator temprot;
	local byte i, j;
	local jmpzone dada;
	local float f; // function fire() leftover
	p=playerpawn(owner);
	if (p==none) return;
	///i=fired.x1;
	///j=0;
		/** not sure why i kept this:
			for (i=0;i<9;i++){
			tempvect=p.location; temprot=p.viewrotation;
			if (i<=1){	//spawn (class'aprng.jmpzone',p,'tmpsens',pv.loc1, pv.rot1);
		///	j=0;
			}*/
		///----------------------------------------------------------------------------------------------------------------------		
		if ( (i<=2) &&(allowed!=0) &&(allowedbyte > 4) ){      dada = spawn (class'aprng.jmpzone',p,'tmpsens',tempvect,temprot);	}
		///----------------------------------------------------------------------------------------------------------------------		
		for(i=2;i<=9;i++){	///foreach TouchingActors( class<sensenet> tsn, instigator);
					f+=1;	
					if (f>7) { 	///log("antispamtest"); log("dada:"$dada); 
							/// custom lifespan makes a visible zone disappear :)
							dada.lifespan=dada.default.lifespan+=float(0.$max(f/2,f+j));	
							j+=2; ///log ("lifespan"$dada.lifespan);
							}
					}
		}
	///}
	
	function FALLPROTECT(optional bool jbaj, optional bool oncond/*just broken a jump*/){
		local pawn p;
	p=playerpawn(owner); 
	level.timeseconds = storedcount;
	margin = float (storedcount~=level.timeseconds);
	if ((timercounter<=0.6)&&(p.physics!=phys_falling)) JumpEnhance(); 	
	if ((timercounter<=0.6)&&(timercounter>0.65)&&(p.physics==phys_falling)){ 	
	///if ((oncond==true)&&(jbaj==true)){
		///captureposi(opos);
		playsound(sound'april.player_extras.djumpfallphys');
		emplemon.z=emptyvec.z+margin;
		emplemon=emptyvec;
		p.velocity.z=float(emptyvec.z~=margin+20);
		/*
		log("p.velocityvec: "$p.velocity);
		log(" --------------fallprotect shits------");
		log("storedcounter: "$storedcount);
		log("given tmargin: "$margin);
		log("storedempvect: "$emplemon);
		log("emptyvec z ax: "$emptyvec.z);
		log("jmpzn_taglink: "$jaz.taglink);
		log("--------------------------------------");
		dumpall();
		*/
		} /// not without restoring it
		emptyvec=emplemon; 
		margin=0;
		p.velocity.z=p.default.velocity.z;
	}
///	RespawnSound=Sound'aprlc.ng.item_respawn'

defaultproperties
{
	bCanActivate=True
	Charge=3
	StatusIcon=Texture'aprng.drawtiles.seltest'
	PickupSound=Sound'april.util_ui.items_pick3'
	ActivateSound=Sound'april.items_F5_computers.keypressed'
	DeActivateSound=Sound'april.items_F3.key2'
	Icon=Texture'aprng.drawtiles.unsel'
	PickupMessage="Located Jump Module!"
	ItemName="Jump Module"
	ExpireMessage="Jump Module no longer in service!"
	bActivatable=True
	bDisplayableInv=True
}
