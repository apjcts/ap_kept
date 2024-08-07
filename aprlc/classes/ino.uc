class ino expands inventory;
// todo post-action cleanup procedure
/// does nothing
	function setup(pawn host, bool ftplay){
	local int d, x; /// decis, and max rand amt
	host=playerpawn(owner);
		if (ftplay==true){
		        x=1; x++; d=rand(x);
			if ((x>d)&&(x>rand(x)) ) /**reset*/ x=0;
			log("ino.d: "$d); log("ino.x: "$x);
			}
		}

/** defaults: 
pickupmessages must be spaced to avoid "Snagged an Item"
*/

defaultproperties{
	PickupMessage=" "

}