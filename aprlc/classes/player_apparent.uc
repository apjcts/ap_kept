class player_apparent extends playerpawn;
//ap parent, had it coming for a while i guess. needed to remove unrealiplayer relation. not that it matters at all, unreal depends can't be completely ignored
//begin importing rendered elements here:
//todo fix these:
//#exec texture import file="..\aprlc\textures\rtbl.png" name="rtbl" package="rendertest" mips=1 flags=0 btc=3
//#exec texture import file="..\aprlc\textures\rtwh.png" name="rtwh" package="rendertest" mips=1 flags=0 btc=3
//todo move this
struct tasks {	var string region_thoughts[8], wkspc_thoughts[8], map_thoughts[8], sublvl_thoughts[4];	};

//------base variable declarations ----------------------------------------------------------------------------------------------------------------------------
struct baseline {	var 	float ax0, ax1, ax2, ax3, ax4;				//aextras from superclass, test
			var	bool bl_shifted, bl_ducked, bl_jumped; 			//tester bools for movement, stolen from servermove
			var	float timesecdelta, hldelta, ffdelta, ErrMargin;      
			var     rotator DeltaRot, Rot;	
			var     vector Accel, LocDiff;           
			var     int maxPitch, ViewPitch, ViewYaw, duckdir;		};
//------Crouch Slide (stolen from voyage infernal @zdoom forums. doesn't work yet ) ---------------------------------------------------------------------------
struct slideshit {	var	int 	duckduration, maxgroundspeed, lasthealth;
			var	float 	duckspeed, duckfactor, duckblur; 			//maybe leave factor only
			var	bool	bSlideInProgress, bCanSlideAgain;	
			var 	vector  slidvec; 
			var	name 	lastweapon; 				//teste
			var	byte 	fuckit_duckcond, slideduck; 		//where did YOU come from?; 			//test2
			/**var	tasks	aprtask, jshtask; not needed due to goalinfo (see: goalinfo.uc)*/
};

//------responsiveness test ----------------------------------------------------------------------------------------------------------------------------
// what do you do to create advanced machinery? you build machines that build other machines until you have tiny machines capable of building themselves - 790
struct 	nano { 	var vector vec1, vec2, vec3, vec4; 
		var rotator rtt1, rtt2, rtt3, rtt4; 
		var float fl1, fl2, fl3, fl4; 
		var int i1, i2, i3, i4; 
		var byte b1, b2, b3, b4; };
struct 	macrovirus {
		/// don't ask me what this is, i came up with it at random, 
		/// completely unaware of the implications or uses.
		/**got an offensively stupid idea, might throw an err */	
					struct  qa { var int q,a;};
					///local int i, j;
		/**i wonder if.... */ 	var qa x, y; ///error mine field
					var nano na,nb,nc,nd, override; 
				cpptext{
					for (x.q=0; x.q>5; x.q++) {
						if (x.q==1) override=na;
					        if (x.q==2) override=nb;
					        if (x.q==3) override=nc;
					        if (x.q==4) override=nd;
					///x.a=1;
					};
				}
	};
//------inventory test (inspo: oldunrealwiki) -----------------------------------------------------------------------------------------------------------------
struct 	aprilcontent_itembelt {	var pawn belt_owner;
				var array<actor> belt_list;
				var int belt_max, trvl_hl, trvl_ff /**, trvl_lc, trvl_uc*/; 
				var class<actor> SelWeap, SelItem; /**maybe pending weap as well?*/	};

//var PlayerInventory originalbelt[32];
/* todo test and clean this up
function HandleInventory(Pawn P){
	local int i;
	local int x;
	local int Max;
	local pickup NewPickup;
	local weapon NewWeapon;
	local playerpawn PP;
	if (P == None || !p.IsA('PlayerPawn'))
		Return;
	PP=PlayerPawn(P);
	for(i=0; I<32; i++){
		if(OriginalInventory[i].InvOwner != None && OriginalInventory[i].InvOwner == P){
			//log("OMFGWTF"@OriginalInventory[i].InvList[0]);
			Max = OriginalInventory[i].InvMax;
			//x=Max; 
			while(OriginalInventory[i].InvList[x] != None){
				if(OriginalInventory[i].InvList[x].isa('Pickup')){
					NewPickup=Pickup(SpawnAct(OriginalInventory[i].InvList[x].Class,P.Location,P.Rotation,,P,P,OriginalInventory[i].InvList[x],true));
					if (NewPickup != None){
						NewPickup.bHeldItem = true;
						NewPickup.GiveTo(PP);
						if(NewPickup.IsA('Translator'))
							PP.SelectedItem = NewPickup;
						NewPickup.PickupFunction(PP);
						NewPickup.TravelPreAccept();
						NewPickup.TravelPostAccept();
						if(NewPickup.isa('Ammo')){
							Ammo(PP.FindInventoryType(NewPickup.Class)).AddAmmo(Ammo(NewPickup).AmmoAmount);
						}
					}
					else log("fUCK OMG"@OriginalInventory[i].InvList[x].Class@"failed");
				}
				else if(OriginalInventory[i].InvList[x].isa('weapon')){
					NewWeapon=Weapon(SpawnAct(OriginalInventory[i].InvList[x].Class,P.Location,P.Rotation,,P,P,OriginalInventory[i].InvList[x],true));
					if (NewWeapon != None){
						newWeapon.Instigator = PP;
						newWeapon.BecomeItem();
						PP.AddInventory(newWeapon);

						newWeapon.SetSwitchPriority(PP);
						newWeapon.WeaponSet(PP);
						NewWeapon.TravelPreAccept();
						NewWeapon.TravelPostAccept();
					}
					else log("fUCK OMG pickup"@OriginalInventory[i].InvList[x].Class@"failed");
				}
				x++;
				if (OriginalInventory[i].InvList[x] == None){
					PP.PendingWeapon = Weapon(PP.FindInventoryType(OriginalInventory[i].SelectedWeapon));
					if (PP.Weapon != None)
						PP.Weapon.PutDown();
					PP.SelectedItem = Pickup(PP.FindInventoryType(OriginalInventory[i].SelectedItem));
					PP.Health = OriginalInventory[i].TravelHealth;
					Break;
				}
			}
		}
	}
}

function HandleModifyTravelList(Pawn Other,bool bDelete){
	local int i;
	local int x;
	local inventory inv;
	local array<Actor> TravelList;
	if (!bDelete){
		for(i=0; I<32; i++){
			if(OriginalInventory[i].InvOwner != None)
				Continue;
			else {
				OriginalInventory[i].InvOwner = Other;
				if (Other.Inventory != None)
				for(inv=Other.Inventory; inv!=None; inv=inv.inventory){
					if (x >= 1 && Inv == Other.Inventory)
						break;
					TravelList[x] = SpawnAct(inv.Class,Vect(65535,65535,65535),,,None,None,inv,true);
					TravelList[x].SetCollision(false,false,false);//If vect(0,0,0) is valid.. hide and make it noncollidable just in case.
					TravelList[x].bHidden = True;
					Inventory(TravelList[x]).Inventory = None; //Dereference inventory that will be deleted eventually anyway.
					if (TravelList[x].IsA('Weapon'))
						Weapon(TravelList[x]).PickupAmmoCount=0; //Fix ammo count crap.
						
					x++;
				}
				OriginalInventory[i].InvList = TravelList;
				OriginalInventory[i].InvMax = X;
				OriginalInventory[i].SelectedItem = Other.SelectedItem.Class;
				OriginalInventory[i].SelectedWeapon = Other.Weapon.Class;
				OriginalInventory[i].TravelHealth = Other.Health;
				break;
			}
		}
	}
	else if (bDelete){
		if (Other != None && Other.isa('PlayerPawn')){
			for(i=0; I<32; i++){
				if(OriginalInventory[i].InvOwner == Other)
					OriginalInventory[i].InvOwner = None;
				while(OriginalInventory[i].InvList[x] != None){
					OriginalInventory[i].InvList[x].Destroy();
					x++;
				}
				break;
			}
		}
	}
}
*/
function postbeginplay(){


}

function renderoverlays(canvas c) {}
/**function slidetest(){ //broken as shit, needs a rewrite
	local playerpawn px;		//note: bwasforward is stored in THIS superclass
	// fuck this needs to be a global, local int duckdir;
	px=playerpawn(owner);
	if (px.health==0) return; 
	if ( (duckfactor==1) &&  (px.bDuck!=0 ) ) bCanSlideAgain=true;
	if (bslideinprogress) slideduck=1; else slideduck=0; //teste
	if  ( (px.bDuck==1) && (bCanSlideAgain!=false) ) {
		bslideinprogress=true;
		bcanslideagain=false;
		fuckit_duckcond=1;
		if (fuckit_duckcond>0) {fuckit_duckcond++;}
		if ( fuckit_duckcond > duckduration) fuckit_duckcond=0;
		duckspeed=px.walkingpct; 		//might break sprinting again, idk. i dont wanna touch vectors yet
		duckspeed=(1./duckblur); 		//(1./5) what is this? have it tested for errors. might as well check for duckblur
		duckblur=0.25;				//testing for decreasing ridiculousness of walking pct just in case
		if (px.bwasforward) 	{ duckdir=1; }
		if (px.bwasback) 	{ duckdir=2; }
		if (px.bwasleft) 	{ duckdir=3; }
		if (px.bwasright) 	{ duckdir=4; }
		maggieslide(duckdir);
		}

}*/
//ever wonder what happened to maggie after 4th season of sliders? i did, i figure she went looking for crying man (aka the only actor who stayed from s1 to s4)
//i also figured that while traversing the great absurd, she found a world where people didn't know what sliding was, so she invented this movement technique
/**
function maggieslide(int dir) {	
	local pawn og;
	local float duckdelta;
	local vector oldmovevec, newmovevec;
	//todo test for this nonsense later
	local player_apparent hj; 				//hi jack, don't mind my naming conventions.
	og=playerpawn(owner);					//not sure what's more terrifying, the fact that it compiles or
	og=hj; //test c, check if it breaks			//that this used to morph our child class into superclass, OH WELL
	hj.duckfactor+=duckdelta;
	slideshit.slidvec=oldmovevec/duckdelta; //maggie slide: test a, this needs a condition for when we are in duck mode
	if (duckdir!=0) { 
			//todo figure this shit out
			//if ( maggieslide(?) ) : log("aaaa?") : log("aaab?");
			//else if ( maggieslide(2) ): log("bbbb?") : log("bbbc?");
			//else if ( maggieslide(3) ): log("cccc?") : log("cccd?");
			//else if ( maggieslide(4) ): log("dddd?") : log("ddde?");
	///todo, fix magic claw
	if (hj.duckfactor > 0.7) 	{hj.duckspeed /= (1.3); } 	//magic claw
	else 				{hj.duckspeed *= (1.1); } 	//magic claw x2
		} //i dont think we can omit all the  height checking just yet, so...
	hj.duckfactor=fclamp(duckfactor,0.2,1.1);  //teste
	// first compile. ap says: tested, nothing happened. good enough
	// second compile. ap will commence another hunt for errors in his thinking, fixed. 
	// ????th compile. ap got this fucker to compile, but maggie slide conundrum remains...
}*/
function beginplay(){
	local playerpawn px;
	if (px==none) return;
	/**
	ax0=aExtra0;	
	ax1=aExtra1;
	ax2=aExtra2;
	ax3=aExtra3;
	ax4=aExtra4;
	duckduration=1; 		//leave it hardcoded for now
	duckfactor=1;	 		//i'll make them configurable !!later
	lasthealth=px.health;		//teste
	*/
	super.beginplay(); //teste	
	}
function tick(float timedelta){
	//slidetest();		//maggie slide, test d
	//!!this needs a tracked condition given by duck procedure
		/* seems to work, but doesn't log anything. at all
		if (duckdir!=0){
		maggieslide(duckdir);          //test e
			if(duckdir==1)		{log("maggie went looking for the funny song man -> common (but lame) option, was forward");}
			else if (duckdir==2)	{log("maggie decided to settle down and get married -> filthy (but likely) option, was back");} 
			else if (duckdir==3)	{log("maggie went berserk and stabbed mallory to death -> obscene (but good) option, was left");} 
			else if (duckdir==4)	{log("maggie did nothing causing the end of the world -> depressing (but canon) option, was right");} 
		}
		*/
		///log(duckdir);
		//constant check - denied.
}


function handlewalking(){
//local float wpctdef;										
//local playerpawn px;
super.handlewalking(); 								//dirty hack to ensure we can still sprint while..
if ( bIsWalking==true) 	bNoStopAtLedge=true; 					//..this check turns off ledge protection, todo: add sliding
if (physics!=phys_swimming) {
	if (brun==1) walkingpct=smerp(1,0,1.55); 				//(alpha, origin, result) -> alpha acts like a speed multiplier
	else if (brun==0) walkingpct=smerp(1,2.4,0); 				//UPD4: rewrote sprinting, should prep sliding conditions
	if (bduck==1) walkingpct=smerp(1,1,0.75);				//<----todo:add basic dynamics for these
	else if (brun==0) walkingpct=smerp(1,0.25,1.4); 			//todo: fixme. current vals are good for sliding endpoint
	} //todo, better checks to force swim conditions to be slower
if ( (physics==phys_swimming) && (bRun==1) ) walkingpct=smerp(1,0.1,0.50); 
}                                                                       	

defaultproperties
{
	WalkingPct=1.4
}
