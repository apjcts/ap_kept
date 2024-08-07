class ng expands gameinfo; // core game class to go with the rest of the set
var float LastTick;

/// [08/06/2024: minutes ago] 	modeled a testing cube for checking motion with flipped normals
/// -------------------------------------------------------------------------------------------
/**
#exec MESH MODELIMPORT 			MESH=cubetest 		MODELFILE=models\cubetest.psk LODSTYLE=8 X=0 Y=0 Z=0
#exec texture import file=textures\ui\appal2f.png name=appal group=uv btc=3 
#exec MESHMAP NEW MESHMAP=uv_cubetest 	MESH=cubetest 
#exec MESHMAP SETTEXTURE MESHMAP=uv_cubetest 	NUM=0 		TEXTURE=appal 
#exec MESH LODPARAMS 			MESH=cubetest 		STRENGTH=0
#exec MESH ORIGIN 			MESH=cubetest 		X=0 Y=0 Z=0 YAW=0
#exec ANIM IMPORT 			ANIM=cubetest 		ANIMFILE=models\cubetest.psa COMPRESS=1 IMPORTSEQS=0
#exec ANIM SEQUENCE 			ANIM=aa 		SEQ=none STARTFRAME=0 NUMFRAMES=60 RATE=60 group=default
#exec ANIM DIGEST 			ANIM=aa 		VERBOSE 
*/
/// -------------------------------------------------------------------------------------------
/// [08/06/2024: 01:55 am] 	moved appal2 from IDS.UC  
/// [08/06/2024: 02:13 am] 	animating thousands of obj files would be easier than importing this shit

/** 	
a list of things to keep in mind (older data)
	search action -> player's progression is clamped by having to find something of value as determined by goal info
	open environs -> player is able to find and keep actors from each of the sublevels (they must disappear afterward)
	puzzle complexity -> player's inability to finish a puzzle can be exploited with a simulated economy of some kind
---------------------------------------------------------------------------------------------------------------------------------------------------------------	
	AprilDesignGoals, Chapter One: NewGame Type [Sunday, July 2nd, 2024] Written by AP (who the fuck else?)
	==============================================================================================================================
	Let's imagine our future. I think Continuum narrative will do for 2083, maybe add some Dark Matter flavor to it. 
	In any case: microtransaction hell, excessive ad flow, temporarity of everything... oh, and subscription services! 
     	NG - the [new game] gametype, as per modern standard -> starts off with the player exploring a starship in a linear
     	fashion. This invides minimal level design at the cost of having an extensive gameplay model that turns shit levels...
     	into modern, recommended, gift-wrapped (the so-called AAA) packaging. Upon starting a new game: nothing must be 
     	available to the player. Unreal's default gametype gives the player a dispersion pistol and 100 health. Too much. 
     	----------------------------------------------------------------------------------------------------------------------
     	Leslie Maye, being a literal copy of Seven of Nine - is a drone with a neural interface that lets her see a canvas HUD.
     	She is capable of recognizing immediate dangers and seeing goal data (if the level provides it). Another important 
     	detail is to take away control of weaponry by introducing reloadice (one of the core components) into this intro-loop.
     	-----------------------------------------------------------------------------------------------------------------------------------------
     	I guess i owe you an explanation (or two)... might as well, since i'm turning my classes into a monstrocity of a design doc: 
     	Currently considering this for level layout (and subsequent gametype hierarchy):
     		Intro Missions - a linear tutorial sequence with canvas messaging systems. Limited randomization of goal systems (maybe)
     		Intro Away Missions - Goals dictated by deliberate sequences laid out in a level. Infiltrate, gather goal objects, escape. 
     		Interlevels - Ship exploration with no goals (unless provided via custom event actors and such). Technically workspaces.
     	Earthbound Core Missions - Once ship sequence is done. Player crashes (an unreal classic). 1993 Earth begins here: goalinfo handles goals.
     	Earthbound Fields / Workspace Missions	- original earthbound loop design: no hud, no information (unless found), no narr.(unless found)
     	(maybe) Earthbound Post-End Loop - Must include a custom endgame actor to work. Resets gametype to ngp(if there'd be one).
     	Now, back to Leslie Maye (and maybe others) :
     	Maye is a literal prototype, she has no model, so NO MIRRORED SURFACES must be present in level design (at least not in the 
     	ship sequence levels). She also must have some kind of time-delay hack for emulating footstep foley, breating and randomized 
     	event response. This... system must control the audio input given to the player (i am still using april.aprilplayerpawn)
     	So, TLDR: 
     	Shipbound, Earthbound... Maybe include Stationbound gametype. NG is Shipbound -> so the gametype must not rely on levels. Interspace / FieldSpace.
     	APRLC will likely be stationbound: that could mean workspace->away-mission loop, so it's a bridging narrative cycle: Interspace / MissionSpace. 
     	AprilGameInfo is Earthbound -> it was the first class, so it might as well be true gameplay cycle: Interspace / Fieldspace / MissionSpace.
     	TLDR, take two: 
     	Interpsace - regular levels -> no scripted logic or triggers of any kind. Those might as well be DM levels. Gametype doesn't care. Menu Substitute.
     	If it's a linear level with scripted pawns, the gameplay is modified slightly with randomization, depending on map-side actors' default properties.
     	FieldSpace - Same as interspace, except... Gameplay is 'enriched' by adding modular logic and goals to levels WITHOUT custom actors. NG is fieldspace.
     	MissionSpace - this is where most level logic will be concentrated, in this gametype map-side logic and modular logic must collide into a form of...
     	guided meditation as you go through a semi-linear level sequence. Depending on layout (and modular logic of the gametype) your objectives and mission
     	priorities might change. Technically this gametype should be playable in deathmatch or co-op, but adding replication on top of that is NOT a priority. 
     	--------------------------------------------------------------------------------------------------------------------------------------------
     	We are still in the future, so we have to remove the idea of gameplay ownership. Now, you might be wondering.. 'how is that fun?' Well... it's not! 
     	So, instead of explaining, let me switch to another tangent. Consider it a sibling of a subclass of the previous tangent... Ugh, More backtracking. 
     	Backtracking! Enter another pointless tangent! All levels i've played (and enjoyed) are related to backtracking. It's an essential part of both
     	Earthbound and Stationbound design. It must be present in ALL levels and ALL ships... except Intrepid. That ship will remain strictly linear. Anyway, 
     	the goal of each map is to go from point A to point B -> so the job of THIS gametype (ng) is to fill in the gaps of (currently non-existent) level 
     	design skeleton. If you were to play any shooter, what would be the first level you'd see besides main menu background? A tutorial? A linear sequence
     	with a series of goals you'd have to follow? A vast fallout-like map with a bunch of side-goals to explore? I want none of those things, but I also 
     	want them all. A bit of a problem in the executive department there, but I don't care. I am my own design team. NG delivers ALL goals... but they 
     	have to be rotated at random. Entertainment of the user has to rely NOT ONLY on how the level is played, BUT ALSO on how NG determines the mission 
     	layout/priorities/conditions... even potential player strategies! NG should've been called l4d2SP, it's more descriptive than this ENTIRE DOCUMENT. 
     	Since I am planning to use this gametype with Intrepid first, i might as well draw some inspiration from the first elite force game. Same ship, same 
     	gameplay layout: briefing->mission->debriefing. It's ideal for space vessel linear levels. The gameplay loop (iirc) was alot like unreal. The main 
     	difficulty for me (as a level designer) would be to create SEVERAL potential starships like Intrepid. The bigger they are, the less of them I can have.
     	So here's the approximate sequence, improvised right here:  
ShipBound Missions ---------------------------------------------------------------------------------------------------------------------------------------------
     		Intrepid 	- linear tutorial : CargoDeckAndAstrometrics/HolodeckAndEngineering/DeflectorAndItsBowels/BridgeSectionAndOuterHullFinale
     		Relativity	- semi-linear field: JailerMaintenance/TemporalEngineDeck/TemporalCargoDeck/ShipBayFinale
     		Riza (foundry)	- interspace w/events: BoardedShip/CargoSector/CrawlerDeck/MaranthaBoardingPartyEscape
     		Marantha(toxic)	- linear mission: MaranthaResidenceBowels/MaranthaResidence/StationArrivalSequence
StationBound Missions ------------------------------------------------------------------------------------------------------------------------------------------
     		Terra-n'Ark-Nor - StationCargoAndDockingRing/HabitationRingAndMaintenance/OperationsCentreAndComputerCore/StationMainAttraction
     		Nyren (dig)     - BorderVesselDocking/BorderVesselMission
     		Nerys (dug)     - BorderVesselBacktrack/BorderVesselFinal    
     		Brigadoom       - TheaterVesselDocking/TheaterVesselFinal
     	        StatDescent	- OrganicVesselDocking/OrganicVesselBridge/EarthDescentFromOrbit
EarthBound Levels ----------------------------------------------------------------------------------------------------------------------------------------------    	
        	LandingSection	- OrganicShipRuins/BorderVesselRuins/IntrepidRuins/RelativityRuins
        	LakeDistrict	- PlaygroundSector/ParkContraptionSector/LakePrelude/LakeMission
     	        StoreBuilding	- StoreDistrict/ShopCentreRuins/ShopCentreModern/ShopCentreDark
        	FieldDistrict	- HotelPrelude/HotelSurroundings/LiftSection/PrimaryField/ExitPuzzle
        	ChasmDistrict	- ChasmBridge/TheaterRuins/UnderChasm/ChasmTerrainLevel/ExtremePrelude
     	        OccultDistrict	- EyePuzzle/SpiderPuzzle/ObeliskField/FirePuzzle/DaggerPuzzle/Library
     	        FederalBuilding - BuildingGrounds/ParkingBasements/GroundOffices/HighFloorOffices/CoreLift
     	        ExtremeCore	- CoreBridge/CoreAntechamber/CoreFinalefield/CoreSelfDestruct/CoreExitLevel
================================================================================================================================================================
        Notice the earthbound sections missing. This is how badly disorganized my design is.
     	I've already decided to make Intrepid more linear in favor of a single station environment (DS9 has more environment potential) -> For example, 
     	let's imagine we have a series of levels with scripted pawns, a playerstart and an exit. NG must transform this 'boring' blend into AAA blend 
     	-> in our case, a horrible misrepresentation of unreal's true gameplay -> a mockery... But this mockery must be entertaining enough to engage 
     	continuously. My nephew seems to be fascinated with the concept of tower defense gameplay. OK according to wiki, the goal is to stop enemy pawns 
     	from reaching an exit - fuck it, why not. I could probably design a few maps like that.The core loop of april's gameplay must be this. We enter 
     	a workspace environment to set up whatever we need to enter a field mission. Similar to how Voyager's crew has to prepare for their away-missions. 
     	Hell, i could even call it a literal 'away mission'. It's my gametype!  I am not planning editor-side classes yet, so I'll consider using partially 
     	randomized feature flow instead. Maps themselves will likely consist of linear sequences, each corresponding in style to whatever ship we visit. And, 
     	yes. There are several ships. the idea for THIS gametype is to extend some boundaries, causing the player to begin seeking their own goals. Since 
     	this gametype is likely to be used with a futuristic ship environment, we have to work by today's world standards - Intrepid may look like a star-trek
	vessel but it operates on a completely inverted standard. So, without me saying any more nonsense - here are the game type rules: 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	
	Every level is considered a hostile arena, similar to DM maps.
	Every level is assumed to have no triggered events or translator messages of any kind.
	Template level; DmDayBreak - with NG fully functional: every item in the arena becomes a useable tool. NG will assume there are no pathnodes to work
	with, so it will rely on player starts to do all the scripted pawn spawning (with a check for player's position, to avoid a telefrag) upon entering 
	a level player is given a random pre-determined sequence of actions, which are then handed over to aidirect -> whose mission is to stop the player.	
	We'll call those instructions directives. There should be a possible dictionary of at least 32 (preferably 128) possible directives -> each telling 
	aidirect what orders to give to whatever pawn it just established a link with. Pawns themselves don't have any idea on how to follow such directives,
	but they are given a series of commands that LOOK like those directives -> I.E. if the directive for all pawns is to EVADE all pawns will encounter a 
	fearspot if their vicinity to the player is too close. If the directive is CONTROL a certain object, they must guard it somehow etc.
*/
function tick (float t){
	if (level.timeseconds - LastTick < 1.0 ) return;
	LastTick = Level.Timeseconds;
	}
function string trunc8(float intsubj){
	local int i;
	local string txtsubj;
 	txtsubj = string (intsubj);
  	i = instr (txtsubj,".");
  	if (i==-1) return "";
  	txtsubj = left(txtsubj,i);
  	return txtsubj;
  	}
defaultproperties{
	hudtype=class'apr.ids'
	DefaultWeapon=class'apr.aprwx'

}