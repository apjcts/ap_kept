class aprilweapon0 expands weapon;
#exec audio import file="..\april\sounds\playerextras\djumpfromground.ogg" 	group="player_extras" name="djumpfromground" 
#exec audio import file="..\april\sounds\playerextras\djumpfallphys.ogg" 	group="player_extras" name="djumpfallphys" 
#exec audio import file="..\april\sounds\playerextras\spidermode_attached.ogg" 	group="player_extras" name="spidermode_attached" 
#exec audio import file="..\april\sounds\playerextras\spidermode_jumped.ogg" 	group="player_extras" name="spidermode_jumped" 
#exec audio import file="..\april\sounds\playerextras\relocated.ogg" 		group="player_extras" name="relocatednoise" 
#exec audio import file="..\april\sounds\playerextras\smallhlth.ogg" 		group="player_extras" name="smallhealth" 
//=============================================================================
// spidermode function declarations
//-----------------------------------------------------------------------------
	//note, all () defaults go to empty category until i say otherwise
	var int 	ffminute,	//health countdown vals
			ffsecond; 	//moved here for cmd io 
	var float 	hurt_timer, 
			ht_mult, 
			ht_tempinterp;  //hurt timer modifiers
	var float AltFireModeSwitch; 			//mode switch 
	var() enum Ealtfiremode { 	m_spiderattached, m_spiderdetached, m_flying, 
					m_swimming, m_projectile, m_walking, m_physfalling } mode;
	var() String mode1, mode2, mode3, mode4, mode5, mode6, mode7;
//	var() string Results;	obsolete, todo: add localized vals for defaults
//=============================================================================
	var() sound 	twicejmp, aerialtwicejmp, 
			wallattachsound, walldetachsound, 
			healsound;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//aprilweapon command interface

exec function resetff() 	{hurt_timer=default.hurt_timer;				}
exec function incff() 		{local byte i; i=byte(hurt_timer); hurt_timer+=i;	}
exec function decff() 		{local byte i; i=byte(hurt_timer); hurt_timer-=i;	}
exec function bornfree()	{local pawn p; p.health+=p.default.health;		}
//=============================================================================
//constant health percentage countdown was coded by std/arleen, modified by me
//=============================================================================
function postbeginplay(){
  local pawn p;
  p=pawn(owner);
  if(p==none) return; 
  p.health=500;
  //todo: move magic numbers to defaults 
  ht_mult=1.5;		//testing for dynamic health adding
  ht_tempinterp=0.5;    //testing for smoothness (todo later)
  }

function tick(float f){
  local pawn p;
  p=pawn(owner);
  if(p==none) return;
  hurt_timer-=f;
  if(hurt_timer>0) return;
  if(p.health>0) p.health--;
  else p.takedamage(5000000,None, p.location, vect(0,0,10000), 'exploded'); //todo fix gibbing for dramatic fx
  ffminute=p.health/60; // no need to cast int(h/60), already int type
  ffsecond=p.health%60; // % = div remain part, i e 50%8 = ((50/8)-int(50/8))*8 = 0.25*8 = 2, bc 50-48=2
  // output
  hurt_timer=0.8;
	//check
	///if ((p.bAltFire) && (px.bPressedJump))		{p.setphysics(phys_spider);}
	///========================================================================================
///	local int i;
///	local vector hitloc, actorloc;	
///	ephystype {walkmode, spidermode} 
///	var enum histphys[5]; 
///	
///	if (other!=level) && (vsize(hitlocation-pawnlocation)<= 64 );
///	histphys[i]=physics;
///	histphys[>5]=[-1]
///	
///	
///	
		if ( (p.baltfire!=0) && (p.physics==phys_falling))	p.setphysics(phys_spider); 
		//this check needs to check for present walls somehow, maybe run a fast trace
		if (( p.bAltFire==0) && (p.physics==phys_spider) )	p.setphysics(phys_falling);
	///phys_swimming -> does nothing
	///phys_flying -> turns into glider
	///phys_projectile -> stores velocity before jump	
}

function fire (float f){
local pawn p;
local int tmphlth;
local int i;
p = pawn(owner);			//todo: fix climbing for when space is kept pressed
	if (p.bfire!=0)			//todo use altfire for something more reasonable
/// was if (p.bfire)
  		for (i=0; i<4; i++){			
  			p.health++;		
			tmphlth+=p.health;		
  			tmphlth=p.health/hurt_timer; //magic test
  			tmphlth--;
  			}				
///  			log(tmphlth);
  			p.playsound(default.healsound);
  			//get out of that damn cycle
		}					

function altfire(float f){
	local pawn p;
	p=pawn(owner);
	if ((p.baltfire!=0) && (p.physics==phys_falling) ) p.playsound(default.wallattachsound);
	if (p.physics==phys_spider) playsound(sound'april.BloodAmbience.amb4tone',,,);
	//todo, tick needs a check for when in mid-air / currently player can stop falling at will
	///current strategy is unknown, will consider it in sleep. for now the algo is this: 
	///add an outgoing vector from player's position, add one for normal we hit, compare both
	///do they intersect in any way? if not do they at least hit the player's current radius?
	///ideally this should make a median point from which another vec can be created, but if it fails...
	///add a vec from player's eyeheight to see if we can point at any reachable ground, i say GROUND
	///as in: there has to be some check to make sure the vector is pointing upwards at the sky, or at least
	///the sky according to whatever normal we hit -> this may or may NOT keep angled slopes climbable...
	///i also need some way to force the player to move along z axis while in spidermode... gravity switch?
	///ideally, the grav (or whatever other solution, be my guest) should make the climbing process more quick
	///maybe spidermode can be messed with via player speeds, or MAYBE.... i need my own goddamn physics model
	}

function idle(){
	local pawn p; 		//i should've made this one a global variable, huh
	local playerpawn px;    //this too
	local int fk;
	p=pawn(owner);  	//i need a shortcut for these, it's getting ridiculous
	if (px.bpressedjump) {
		dojump();
		if (px.bcanjump!=0) 
			px.JumpZ=fk;//test
			//fk=int(px.jumpz);
			fk++;
			//log(fk);
			//log(px.JumpZ);
	}
}

function tweendown(){
local pawn p;
p=playerpawn(owner);
playsound(sound'april.itemhidden',,,);
p.switchtobestweapon();
}

function dojump(){
  	local playerpawn p;
	local int jcount;
	//p=pawn(owner);
	if(p==none) return;  	
	 	if (p.bpressedjump)
		//x++;
		jcount++;
		//todo: this needs a controllable range
		//if (jcount>3) jcount=0;
		Owner.PlaySound(default.twicejmp);
	if (jCount!=0){ //&& p.bPressedJump=true){
	        if ( (p.bpressedjump) && (p.physics==phys_falling) )
	        p.bCanJump = true;
		p.PlaySound(default.aerialtwicejmp);//test, move to fallphys later
	}
}
//&& (p.bpressedjump=true) /* && (p.JumpZ!=0) */ 
//	Mode=m_walking   forgot what this does, disregard for now
//	Results=""
defaultproperties
{
	twicejmp=sound'april.player_extras.djumpfromground'
	aerialtwicejmp=sound'april.player_extras.djumpfallphys'
	healsound=sound'april.player_extras.smallhealth'	
	wallattachsound='april.player_extras.spidermode_attached'
	hurt_timer=0.0
	AltFireModeSwitch=0.0
	Mode1=""
	Mode2=""
	Mode3=""
}
