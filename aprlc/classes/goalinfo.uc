class goalinfo expands info config(APRLANG_UnifiedGoalData);	
// UGD provides info for various goal-related distractions
struct ugdt 	{	var string thoughts[4];		};
///struct ugdp 	{	var string pointers[4];		};
///struct ugds 	{	var string sidegoal[4];		};
///struct ugdr 	{	var string randhint[4];		};
var ugdt april, joshua; /*ugd_rachel, ugd_leslie, ugd_imogan, ugd_billie, ugd_ryan, ugd_anthony, ugd_tracy*/
//thoughts only for now, declare the rest later
//=============================================================================================================
//langdata

var(APRIL_LanguageData) globalconfig string AprilThoughts[4], JoshuaThoughts[4];
///var(APRIL_LanguageData) globalconfig string AprilPointers[4], JoshuaPointers[4];
///var(APRIL_LanguageData) globalconfig string AprilSidegoal[4]; JoshuaSidegoal[4];
///var(APRIL_LanguageData) globalconfig string AprilRandhint[4]; JoshuaRandhint[4];

/** fine, no beginplay setup 
function postbeginplay(){
local pawn p;
if (p!=none) //shit, but does it fix?
april.thoughts(0)=AprilThoughts(0);
april.thoughts(1)=AprilThoughts(1);
april.thoughts(2)=AprilThoughts(2);
april.thoughts(3)=AprilThoughts(3);
joshua.thoughts(0)=JoshuaThoughts(0);
joshua.thoughts(1)=JoshuaThoughts(1);
joshua.thoughts(2)=JoshuaThoughts(2);
joshua.thoughts(3)=JoshuaThoughts(3);
}*/

/* todo: proper task algo
function givetask(){}
function systemwipetasks(){}
function takeawaytask(){}
function marktaskdone(){}
function marktaskfail(){}
*/



defaultproperties{
AprilThoughts(0)="In my restless dreams..."
AprilThoughts(1)="I see that town..."
AprilThoughts(2)="Silent Hill."
AprilThoughts(3)="You promised you'd take me there someday."
JoshuaThoughts(0)="This is my rifle."
JoshuaThoughts(1)="There are many like it, but this one is mine."
JoshuaThoughts(2)="Without me, my rifle is useless."
JoshuaThoughts(3)="Without my rifle, I am useless."
}

