// ==============================================================================================
// april core hud class, it handles everything canvas-related, debug included :)
// ==============================================================================================
class aprilhud expands HUD; 
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// q1: how do we get rid of that copyright notice in the top-left corner of the screen?
// a1: no way that I know of, it goes away after some time though.
// q2: how do i force a string to print itself onto the screen continuously (via timer updates?)
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

/// same as set timer and sleep but with a bit of delay added
/**
function wait(	float delay,
		float seconds,
		coerce string func, 
		optional bool repeat,
		optional bool logge){
	settimer(delay,false);
	if (timercounter==seconds+delay);
	settimer(seconds,repeat,func);
	if (logge!=0) log("Delay: "$delay);
	}
/// convertes (almost) any value into delay amount. use with vect coords
function until(	coerce string val,
		coerce string funk, 
		optional bool logged, 
		optional bool repeat){
	settimer(float(val),false, funk);
	if (logged!=0) log("Value: "$val);
	}
*/
///var(MagicNumbers) string ct1,ct2;
///var(MagicNumbers) int ct3;

//maybe disregard this one completely in favor of personal user interfaces, here's their table from memory:
//	april  -> (plotbook disregarded) replaced with Caller Saving Interface(F1) Reloadice(F2) and Playerswitch(F3)
//	joshua -> (Q) akimbo controls - maybe adv weaponswitching? must include working sliding conditions & powerup ctls
//	rachel -> (W) wirelink (nearly perfect setup, but needs a view model, also needs rendermode switches)
//	imogan -> (E) maybe use that reference item after all, if not, use a generic monitor interface
defaultproperties{}
