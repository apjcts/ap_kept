class player_april expands player_apparent;



/*  fuck this, use firetrucks event associator instead
function GrabDecoration(){
	local vector dummy, X,Y,Z, Start, HL,HN;
	local actor A,B;
	local inventory inv;
	local int TakenAmmo;
	local int NumWeapons;
	local Ammo NewAmmo;
	//local Weapon DualWep;
	local playerpawn P;
	local int SlotsUsed;
	Super.GrabDecoration(); 
	if(CarriedDecoration!=None){ 
		//test
		if(Weapon.IsInState ('Idle') ) Weapon.PlayAnim('Pickup', 2.0, 0.05); return; }
	GetAxes(ViewRotation,X,Y,Z);
	Start=Location+BaseEyeHeight*vect(0,0,1);
	A = Trace(dummy,dummy, Start+MeleeRange*X, Start, True, vect(5,5,5));
	if(Inventory(A)==None) return;
// removed a LOT of junk from here
// too many brackets in rlcoop code!
}*/
//      April Speeds:
//	GroundSpeed=200.0
//	WaterSpeed=150.0
//	AirSpeed=400.0
//	AccelRate=1900.0
//	JumpZ=290.0
//	AirControl=450.0
//	WalkingPct=1.4

defaultproperties
{
	CarcassType=Class'UnrealShare.FemaleOneCarcass'
	Health=50
	GroundSpeed=225.0
	WaterSpeed=85.0
	AirSpeed=400.0
	AccelRate=1200.0
	JumpZ=920.0
	AirControl=1200.0
	WalkingPct=1.5
	BaseEyeHeight=30.0
	MenuName="April"
	CollisionRadius=12.0
	CollisionHeight=40.0
	Buoyancy=132.0
}
