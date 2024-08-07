class aprwpnbase expands weapon config(APRLANG_aprw_v2); //ALL ini configs are marked in caps
/**
weapon notes: aprilweapon v2
-------------------------------------------------------------------------------------------------------------------	
	primary : engage immediate attack with the primary function
	secondary: prep item for secondary (while m2 is held) primary engages secondary func
	prev/next wpn switch primary function mode while m2 is held
	prev next inv switch secondary functions while m2 is held
	item switch is restricted when m2 is held down with a wpn equipped. 
-------------------------------------------------------------------------------------------------------------------
	item must be active to be unhidden 
	item must be hidden to be switchable
	while item active, prev next inv switch item pages
	while item active, prev next weap switch item functions
	bextra is used for toggling item functions
	bextra2 is used for weap reloading (if m2 held down & ammo full, 
	third weap function mode is toggled: dpx-stunmode, 9mm-bulletswitch) 
-------------------------------------------------------------------------------------------------------------------
	dp is replaced with dpx - Delta quadr. energy projectile weap. 
	automag is replaced with a 9mm sidearm 
	stinger is replaced with a blackpack (organic energy projectile weap) 
	asmd is replaced with aptele. 4 weap total
	MAYBE eightballammo for slot 5 / doom 3 style grenade
	MAYBE W2 rifle for slot 6 OR JUGWPN remake weapon
	MAYBE 
-------------------------------------------------------------------------------------------------------------------
	items:
	status indicator. 3 pages: user info & setup, reloadice, goal info tracking 
	scan mode tool. 3 pages: em field scan, bio elec energy scan, map data scan
	item belt viewer. 4 pages: goal item usage select, readables, listenables, maptopo
-------------------------------------------------------------------------------------------------------------------
*/
// erictool-related schisms
struct counters {	var byte 	x1, x2, x3, x4; 
			var int		xl1, xl2, xl3, xl4; 
			var float	xxl1, xxl2, xxl3, xxl4;	};
struct vecs	{	var vector	loc1, loc2, loc3; 
			var rotator	rot1, rot2, rot3; };
struct apmatrix	{	var travel float range1, 
					 range2, 
					 range3, 
					 newrange, 
					 temp1, 
					 temp2, 
					 temp3;				};
struct stitches {	var travel bool first, second, third;		};
struct pointers {	var float cxy, cxx, ctemp1, ctemp2; 		};
struct indices 	{	var string str1, str2, str3, str4; 		};
struct mc	{	var name  	lTitle1, //lvl title
/**	\-> means mission control*/	lTitle2, //lvl author
					lTitle3, //lvl enter txt
					lTitle4; //pref player amt
			var string	lGoal1, lGoal2, lNotes, lDesc,
					lTitle, lAuth, lEnter, lEnter2;   
			var indices	lExactTime, lExactLocation;
					};
// user currency tracking 
var indices HL, FF, LC, IV, UC; 		//Health Loss , Fear Factor, Lung Capacity, Internal Valium, Universal Currency (for more info see money.uc)
var indices tut1, tut2, tut3, tut4, tut5; 	//money related
var indices deb;
var globalconfig string 	hl_tut1, hl_tut2, hl_tut3, hl_tut4,
				ff_tut1, ff_tut2, ff_tut3, ff_tut4,
				lc_tut1, lc_tut2, lc_tut3, lc_tut4,
				iv_tut1, iv_tut2, iv_tut3, iv_tut4,
				uc_tut1, uc_tut2, uc_tut3, uc_tut4;
var int chargeamt;		/// don't tell anyone 
function postbeginplay(){ //set me up, scotty
//HL: 	initial, counts down until unreal task is killed. 	0.025 deduction once every second
//DM: 	workspace scope, diminished modifiable amount.		(HL*2), 0.5 once every second
//SD: 	level scope modifier, standard modifiable amt.         	((HL*2)+HL) 0.75
//EX: 	sublevel scope modifier, extreme modifiable amt.       	((HL*2)+(HL*2)) 
///hl.str1 = "Health Loss:"; 	ff.str1 = "Fear Factor:"; 	lc.str1 = "Lung Capacity:"; 	iv.str1 = "Internal Valium:"; uc.str1 = "Unreal Component:";	
hl.str1 = "HL:"; 		ff.str1 = "FF:"; 		lc.str1 = "LC:"; 		iv.str1 = "IV:";              uc.str1 = "UC:";	 	
hl.str2 = "|-Diminished:"; 	ff.str2 = "|-Diminished:"; 	lc.str2 = "|-Diminished:"; 	iv.str2 = "|-Diminished:";    uc.str2 = "|-Diminished:";        
hl.str3 = "|-Standard:"; 	ff.str3 = "|-Standard:"; 	lc.str3 = "|-Standard:"; 	iv.str3 = "|-Standard:";      uc.str3 = "|-Standard:";          
hl.str4 = "|-Extreme:";		ff.str4 = "|-Extreme:"; 	lc.str4 = "|-Extreme:"; 	iv.str4 = "|-Extreme:";       uc.str4 = "|-Extreme:";           
// ===========================================================================================================================================================
}
exec function duckhack(){
level.bSupportsRealCrouching=true;	
level.bSupportsCrouchJump=true;
}
exec function inireset(){ /// used in case you screw with my ini data
	local pawn p; p=playerpawn(owner); 
/// 	def. properties can't do shit, so...
	hl_tut1=hl.str1;  	ff_tut1=ff.str1;  
	hl_tut2=hl.str2;        ff_tut2=ff.str2;  
	hl_tut3=hl.str3;        ff_tut3=ff.str3;  
	hl_tut4=hl.str4;        ff_tut4=ff.str4;  
	lc_tut1=lc.str1;  	iv_tut1=iv.str1;  
	lc_tut2=lc.str2;        iv_tut2=iv.str2;  
	lc_tut3=lc.str3;        iv_tut3=iv.str3;  
	lc_tut4=lc.str4;        iv_tut4=iv.str4;  
	uc_tut1=uc.str1;        uc_tut3=uc.str3;  
	uc_tut2=uc.str2;        uc_tut4=uc.str4;  
//=========================================================
	deb.str4="---- lang data has been reset!! -----";
	deb.str1=string(p.name); deb.str2=string(p.weapon);
	deb.str3=string(level.timeseconds); log(deb.str4);
	log(deb.str1); log(deb.str2);log(deb.str3);
	deb.str4="---- -------------------------- -----";
	log(deb.str4); saveconfig();
	}///         \-> Teh Grand Rewriting of Troy (1682)
function fire(float f){
}

function Active(bool ActivationStatus){
	activationstatus=true;
	super.activate();
	}
defaultproperties{}        