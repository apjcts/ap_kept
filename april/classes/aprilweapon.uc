class aprilweapon expands weapon;
/** !!ignoreme.  instructions too old.
	to get this weapon working: 
	1. open unreal ed
	2. inventory -> weapon -> aprilweapon -> default properties
	2. open apriltemp.utx in texture browser
	3. Display -> MultiSkins -> [4] -> ScriptedTexture'apriltemp.scripted.status1'
	4. display -> multiskins -> [5] -> ScriptedTexture'apriltemp.scripted.status2'
	5. save april.u (and remember to think of how your lifespan shortens each time you do it)
	6. avoid recompiling this package until the second coming of christ (impossible)
	7. notice a bug in the scripted texture output, go back to step 1 and repeat the cycle :)
*/
// todo: write an objanim into the new aprlwpnbase, import new models for status indicator
/// these were added later from adjusted mesh properties

#exec MESH IMPORT 	MESH=playerstatus ANIVFILE=models\playerstatus_a.3d DATAFILE=models\playerstatus_d.3d X=0 Y=0 Z=0 LODSTYLE=8 mlod=1 unmirror=1
#exec MESH ORIGIN MESH=playerstatus X=0 Y=0 Z=0 PITCH=-4 YAW=58 ROLL=128
#exec MESHMAP NEW  	MESHMAP=playerstatus 	MESH=playerstatus
#exec MESHMAP SCALE MESHMAP=playerstatus X=0.1 Y=0.1 Z=0.2
#exec MESH SEQUENCE MESH=playerstatus SEQ=All	STARTFRAME=0	NUMFRAMES=25	RATE=15
#exec MESH SEQUENCE MESH=playerstatus SEQ=Still	STARTFRAME=0	NUMFRAMES=1	RATE=15
#exec MESH SEQUENCE MESH=playerstatus SEQ=eq	STARTFRAME=2	NUMFRAMES=15	RATE=15
#exec MESH SEQUENCE MESH=playerstatus SEQ=reading	STARTFRAME=18	NUMFRAMES=5	RATE=15
#exec MESH SEQUENCE MESH=playerstatus SEQ=swayer1	STARTFRAME=18	NUMFRAMES=3	RATE=15
#exec MESH SEQUENCE MESH=playerstatus SEQ=swayer2	STARTFRAME=21	NUMFRAMES=3	RATE=15
#exec MESHMAP SETTEXTURE MESHMAP=playerstatus NUM=0 TEXTURE=statushands
#exec MESHMAP SETTEXTURE MESHMAP=playerstatus NUM=1 TEXTURE=statushands
#exec MESHMAP SETTEXTURE MESHMAP=playerstatus NUM=2 TEXTURE=statushands
#exec MESHMAP SETTEXTURE MESHMAP=playerstatus NUM=3 TEXTURE=playstattex
/** these were written by hand when i imported the mesh 
#exec MESH LODPARAMS 	MESH=playerstatus STRENGTH=0.9
#exec MESH ORIGIN 	MESH=playerstatus 	X=0 Y=0 Z=0 YAW=58 PITCH=-4 ROLL=128
#exec MESHMAP SCALE 	MESHMAP=playerstatus 	X=0.1 Y=0.1 Z=0.2
#exec MESH SEQUENCE 	MESH=playerstatus 	SEQ=ALL    				STARTFRAME=0 	NUMFRAMES=25 	RATE=15
#exec MESH SEQUENCE 	MESH=playerstatus 	SEQ=Still    				STARTFRAME=0 	NUMFRAMES=1 	RATE=15
#exec MESH SEQUENCE 	MESH=playerstatus 	SEQ=eq    				STARTFRAME=2 	NUMFRAMES=15 	RATE=15
#exec MESH SEQUENCE 	MESH=playerstatus 	SEQ=reading    				STARTFRAME=18 	NUMFRAMES=5 	RATE=15
#exec MESH SEQUENCE 	MESH=playerstatus 	SEQ=swayer1    				STARTFRAME=18 	NUMFRAMES=3 	RATE=15
#exec MESH SEQUENCE 	MESH=playerstatus 	SEQ=swayer2    				STARTFRAME=21 	NUMFRAMES=3 	RATE=15
*/
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#exec texture import file=textures\core\april_items02.png       name=playstattex	group=core	btc=1
#exec texture import file=textures\core\hands_v2.png		name=statushands	group=core	btc=1
#exec texture import file=textures\aprled\rtbl.png		name=rtbl		group=core
#exec texture import file=textures\aprled\rtwh.png              name=rtwh               group=core	
/** scripted tex were left unused in favor of pre-baked ui screens
#exec MESHMAP SETTEXTURE MESHMAP=playerstatus NUM=0 TEXTURE=statushands 	//L hand
#exec MESHMAP SETTEXTURE MESHMAP=playerstatus NUM=1 TEXTURE=statushands 	//unused 
#exec MESHMAP SETTEXTURE MESHMAP=playerstatus NUM=2 TEXTURE=statushands 	//R hand  
#exec MESHMAP SETTEXTURE MESHMAP=playerstatus NUM=3 TEXTURE=playstattex 	//monitor
#exec MESHMAP SETTEXTURE MESHMAP=playerstatus NUM=4 TEXTURE=none		//scripted       
#exec MESHMAP SETTEXTURE MESHMAP=playerstatus NUM=5 TEXTURE=none		//scripted
*/
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
struct errmargins{     /** smoothness, error margin numbers*/
			var byte 	err1;
			var int 	err1x;
			var float	err1xl;		};
struct tempvecs{       /** controllable vectors*/
			var vector 	hitloc, 
					hitnormal, 
					storedvec,
					lastmove,
					currentmove,
					qnextmove;
			var rotator	viewrotation,
					prevrotation,
					nextrotation, 
					storedrotator;	};
struct switches{	/** shithackable switches*/
			var bool 	bActivator1, 
					bActivator2, 
					bActivator3, 
					bActivator4;	};
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// variable declarations
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
///var switches 	booltree1, booltree2;
var errmargins 		emPrimary, emSecondary;
var tempvecs		playerviews;
var switches		swayerteste;
var string broadcastval; 
var float x,y, retickdelay;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
///	from stt.uc
///	simulated event RenderTexture(ScriptedTexture Tex){
/**
   local byte tmp_byte;
   local color pc;
   pc = makecolor(200,255,200);
   tmp_byte = int(level.timeseconds*45) % 18;                        // lines anim. 25/18 = animtime 1.3888 sec
   tex.DrawTile(19+(4*tmp_byte), 118,14,1,0,0,4,4,texture'rtwh',false,pc);
   tex.DrawTile(419+(4*tmp_byte), 138,14,1,0,0,4,4,texture'rtwh',false,pc);
   tex.DrawTile(222-(4*tmp_byte),116,14,1,0,0,4,4,texture'rtwh',false,pc);
   tex.DrawTile(222-(4*tmp_byte),138,14,1,0,0,4,4,texture'rtwh',false,pc);
*/
   /**
   local byte tmp_byte;
   local byte i,j,k,l;
   local color pc;
   tmp_byte = int(level.timeseconds*45) % 18;                        // lines anim. 25/18 = animtime 1.3888 sec
   pc = makecolor(0,0,0);
   tex.DrawTile(0,0,256,256, 0,0,4,4, texture'rtwh', false, pc);
   //pc = !low_batt ? makecolor(255,255,255) : makecolor(64,64,64);
   pc = makecolor (255,128,12);
   for(i=0;i<128;i++){
      k=rand(4);
      if(k==0) l=12;
      if(k==1) l=22;
      if(k==2) l=30;
      if(k==3) l=44;
      for(j=0;j<rand(4);j++) {
         k=rand(5);
         if (k==0) pc = makecolor(255,120,120);
         if (k==1) pc = makecolor(255,255,120); 
         if (k==2) pc = makecolor(120,255,120); 
         if (k==3) pc = makecolor(120,120,255); 
         if (k==4) pc = makecolor(255,255,255); 
         tex.DrawTile(rand(300)-44,i*2,l,2, 0,0,4,4, texture'rtwh', false, pc);
      } //j rand ends
   } // for i<128 ends
}

simulated function BeginPlay(){
   //hello, its 'scripted1' add me in the editor
   texture'april.aprled.reserved'.notifyactor = self;
   texture'april.aprled.reserved'.notifyactor = self;
}

simulated function Destroyed(){
   //hello, it's 'scripted2' add me in the editor
   texture'april.aprled.reserved'.notifyactor = none;
   texture'april.aprled.reserved'.notifyactor = none;
}
*/



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// funcs
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
function DropFrom(vector StartLocation){
	local Pawn PawnOwner;
	//local aprilweapon apw;
	startlocation=playerviews.storedvec;
	if (playerviews.storedvec==none) return;
	PawnOwner = Pawn(Owner);
	Super.DropFrom(StartLocation);
	if( !Owner && PawnOwner ){
		if ( PawnOwner )
		//	PawnOwner.SetDefaultDisplayProperties();
		//if( MyEffect )
		//MyEffect.Destroy();
		destroy(); //lol
	}
}
function throwweapon(){
local playerpawn px;
local aprilweapon apw;
if (playerviews.storedvec==none) return;
playerviews.storedvec=px.location;
dropfrom(playerviews.storedvec);
if (px.weapon!=apw) px.SwitchToBestWeapon();
}
//=====================================================================================
	function tick(float f){
		local pawn p;                           
		p=playerpawn(owner);
		if (p==none) return;
		f-=level.timeseconds;
		}
	function playselect(){ 
		local pawn p;
		//local aprilweapon apw;
		p = playerpawn(owner); 
		if (p==none) return;
		playsound(sound'april.itemselect',,,);
		playanim('eq',1.9);	
		}
///	function idle(){
///		loopanim('reading',1.0);
///		}
	function tweendown(){
		bActive=false;
		playanim('still',8);
		playsound(sound'april.itemhidden',,,);
		}
	function tweenselect(){
		playanim('eq',1.5); 
		}
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// test command interface 
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
exec function q(){
pawn(owner).consolecommand("say " "lara -> summon everything");
pawn(owner).consolecommand("say " "alanwake -> summons a plotbook");
pawn(owner).consolecommand("say " "evagalli -> same as ghost");
pawn(owner).consolecommand("say " "voorhees -> summons a light"); 
pawn(owner).consolecommand("say " "attano -> summons aptele");
pawn(owner).consolecommand("say " "curtis -> summons injector");
pawn(owner).consolecommand("say " "deb -> summons temporary glock");
pawn(owner).consolecommand("say " "dunham -> summons apwnotes"); }
exec function lara(){ 	/*should spawn every available item & tool, maybe split by player type*/
pawn(owner).consolecommand("alanwake");
pawn(owner).consolecommand("voorhees");
pawn(owner).consolecommand("attano");
pawn(owner).consolecommand("curtis");
pawn(owner).consolecommand("deb");}
exec function alanwake() 		{pawn(owner).consolecommand("summon " "april.item_plotbook"); }
exec function evagalli() 		{pawn(owner).consolecommand("ghost"); } 				
exec function voorhees() 		{pawn(owner).consolecommand("summon " "april.item_light"); } 	
exec function attano() 			{pawn(owner).consolecommand("summon " "april.aptele"); }
exec function curtis()			{pawn(owner).consolecommand("summon " "april.item_injector"); }
exec function deb()			{pawn(owner).consolecommand("summon " "aprlc.joshua_weapon"); }		
exec function dunham()			{pawn(owner).consolecommand("summon " "april.apwNotes"); }
//fixme exec function hellodextermorgan()	{pawn(owner).InstantFlash=100;} //todo: write a short red flash function
//fixme exec function hellogordonfreeman()	{pawn(owner).InstantFlash=0;}   //todo: write a fade in from black function
/// exec function wale() {} 		// todo, redesign aptele with a separate class
/// exec function lurk(){} 		// todo, have that same class be conjured to perform different functions, test how two commands interface with it
/// exec function dog() 		-> must force player to crouch thus causing default unreal behavior. ie, no custom slowdown effects applied
/// exec function duskdude() 	-> must apply a slowdown effect which we will use upon checking if player is ducking
/// exec function warbeast()	-> must trace a ray to crosshair location and spawn a skaarjwarrior there, testing purpose
/// exec function template()     {playerpawn(owner).consolecommand(""); }
///	PlayerViewOffset=(X=-1550.0,Y=-2690.0,Z=-3900.0)
//todo fix hands
//        PlayerViewScale=0.1
//todo fix
///     bDisplayableInv=True
///	bNoInventoryMarker=True
///	bActivatable=True
///        MultiSkins[3]=Texture'apriltemp.scripted.status1'
///        MultiSkins[4]=Texture'apriltemp.scripted.status2'

/// test
defaultproperties{
        LODMorph=0.0
        LODMinVerts=128
        LODStrength=0.0
        LODZDisplace=0.0
        LODHysteresis=0.0
	MultiSkins[4]=Texture'april.hl2_efx.obsolete'
	MultiSkins[5]=Texture'april.hl2_efx.obsolete'
        ItemName="Status Tracker"
        PickupMessage="Found: Status Tracker."
        Icon=Texture'UPak.HD.I_HD_Cloak'
        PickupViewMesh=LodMesh'UnrealShare.TranslatorMesh'
        BobDamping=0.9
        PlayerViewScale=1
        ActivateSound=Sound'april.f1.ui_eyaura1'
        PlayerViewMesh=Mesh'april.playerstatus'
	PlayerViewOffset=(X=-35.0,Y=39.0,Z=-50.0)
	X=0.0
	Y=0.0
	broadcastval=""
	FireSound=Sound'april.Player.whereisit'
}
