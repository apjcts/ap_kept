class actormanage expands actor nousercreate;

//WATERHJCK:
//iterate through every waterzone in the level, replace it with my subclass, (maybe) apply changes depending on player type
//this one is actually for... having a custom sound assigned for when you enter a waterzone. OOP and defaults, what a combo!  

//FFSTATUS:	
//this one is tricky. i see it like this: it spawns at beginplay if no other ffstatus actors are present, then continuously updates itself/
//ideally, this thing should update with the indicator showing how it fluctuates (each tick), but maybe the step can be decreased... or MAYBE
//THIS actor is update once every level change, and it is fed data from fftrack itself to judge how the player should be treated. ai director!
//the idea of fear factor is relatively simple: higher % means less lenient playloop, lower % means more forgiving loop. todo:difficulty manager?

//aidirect:
//to aid the player (and to lessen the predictability) we must have your movements tracked by this actor, for various reasons. upon beginplay, we
//have to iterate through existing actors in the level to see who can be told where player is. at begin play we do nothing and wait for the first 
//interval, we do this action every time that interval passes. once it passes, we look for hostile entities and tell them the player's current 
//position (current, as in: where the player WAS an interval ago / during the previous iteration procedure). The interval value controls relative
//delay with which the monsters can hunt you down, in the perfect world it would also be controlled by ffstatus updates. higher % -> lower delay. 

//randomprp:
//imagine this: a generic decoration node placed in every level like a path node, in defaults we can specify its type: breakable, throwable, volatile.
//this generic actor (preferably guided by aidirect) decides what mesh to give to each of those decoration nodes, while taking their type (and radii) 
//into consideration when spawning decorations. For now i will focus on generic decorations that fit every level. Maybe i will add artset-specific ones.
//the result is that i have several dozen nodes around my level -> each time i level is loaded, props take different appearances. todo:figure out saving  

//saveactor:
//lets a player save at specified locations (caller node -> caller node effect -> caller node notifier). 
//this actor is also invoked whenever a player uses a disposeable quicksave item, saving should be currency.
//todo: figure out how to pry saving out of the game, maybe a custom console is needed for this

//climbnode:
//scans the radius for any player classes, once in radius -> find distance between the node and the player -> force the player to move towards our node while
//scanning for bJumped and phys_falling -> maybe cause it to become phys_spider -> the result must allow climbing if the jump key is being held and only then
//oh, forgot i had this. might be useful to spawn this at aprilweapon0.uc to see how it behaves with info given from this overhead actor. don't fuck this up


//Generics:             common generics powerup tree		(imogan -> relocate / reposition / grapple)
//			21 possible upgrades, 
//			first two categories appear with 2 choices, 9 upgrades max todo, add new symbols
//			third category is related to each player's main weapon type -> 3 steps, each adds one weapon modifier  
//======================================================================================================================================
/* 			jumping/dodging ======================================================================================================================	
			1a,b	longjump, 2x forcedodge 	movedir + duck + jump -> greater X-Y distance / forcedodging twice in a row has no delay
			1c,d	highjump, 2xjump(ffall?)	greater Z axis distance when jumping / jump twice (avoid falling death at terminal velocity)
			1e,f	flydodge, surfacerunner		kids call it `dashing`, dodge in mid-air / jump to run on walls and ceilings (impossible )
			walking/running ======================================================================================================================  	
			2a,b	straferun, 2xwalking(&duck)	faster strafe-running / doubled speeds for walking and ducking, regardless of direction
			2c,d	2xslidemove, fasterfalling	abnormal acceleration for sliding / ducking multiplies falling speed (/by terminal velocity) 
			2e,f	3dfxglide, keenspringbounce	gain some flying physics while holding jump / (while static) duck+jump -> greater Z-distance
			specialweapon: aptele ================================================================================================================
			3a,b	relocate OR grapple		altfire points to a destination, release teleports to it / altfire grapples to any surface 
			3c	reposition			altfire causes pawn to spawn a beacon at current spot, releasing key causes a teleport delay
			3c,d	slowtime OR pawnpull		altfire multiplies time divisor by target distance / greater mass causes beacon inversion 
			3e,f,g	switch, telefrag, connect	switch positions with the target / gib the target / attach up to 4 shared pain stimuli

------------------------------------ 33 symbols total, good enough. vals below determine MP modifiers (if i decide to bother with them)
	note: these are given only once per match
	Upon Spawn	4a,b,c	feigninvis, attach, noftstep	feigning death causes masking, grabbing causes phys_spider , inaudible footsteps while ducking 
	Upon Death	4d,e,f	immediater, selecres, dtwice	revoke a frag to respawn where died, switch places with killer upon dying, fakedie to go invis 
	Upon Respawn	5a,b,c	
	Every ? Frags	5d,e,f
	unfair dice? 
	die instantly? 
	revoke a frag?
	pay 49% health? 
	4x falling speed?
	share healthpool with last killer?	
*/


//TITLE (9 symbols max):
//my body is a template:	
//my goal and algo is my bible:
//my notes are divine, and my
//continued tangents are rare.	
//(must follow this template)