class apwNotes expands weapon;
var float LastTick;
#exec AUDIO IMPORT FILE="..\april\sounds\injector\injectnoise.wav" NAME="injectnoise" GROUP="Injector"

function tick (float t){
if (level.timeseconds - LastTick < 1.0 ) return;
LastTick = Level.Timeseconds;}

function fire( float value) {
bpointing=true;
if (playerpawn(owner) !=none) {
	playerpawn(owner).shakeview(shaketime,shakemag,shakevert);
	owner.playsound(FireSound,slot_none,4.0*pawn(owner).sounddampening); 
	} 
}
// string trunc83r, also coded by std (arleen)
function string trunc8(float intsubj){
local int i;
local string txtsubj;
  txtsubj = string (intsubj);
  i = instr (txtsubj,".");
  if (i==-1) return "";
  txtsubj = left(txtsubj,i);
  return txtsubj;
  }
function postrender (canvas c){
local playerpawn ply;
//local string show_LastTick, show_BobTime;
ply=playerpawn(owner);
if (ply==none) return;
c.font = c.smallfont;
c.setpos (10,10); c.drawtext("time:"); c.setpos (50,10); c.drawtext(trunc8(LastTick));
c.setpos (10,20); c.drawtext("ply.bobtime"); c.setpos (90,20); c.drawtext(trunc8(ply.bobtime));
c.setpos (155,150); c.drawtext("X");c.setpos (150,150); c.drawtext("[ ]");
}

defaultproperties
{
	LastTick=0.0
}
