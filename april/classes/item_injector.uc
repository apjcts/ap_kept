class item_injector expands weapon;
#exec AUDIO IMPORT FILE="..\april\sounds\injector\pu_medkit.wav" NAME="usage" GROUP="Injector"
//#exec AUDIO IMPORT FILE="..\apSp\Sounds\Injector\injectnoise.wav" NAME="injectnoise" GROUP="Injector"
//#exec AUDIO IMPORT FILE="..\apSp\Sounds\Injector\injectnoise.wav" NAME="injectnoise" GROUP="Injector"
//var float bobtime;
/*function postbeginplay(){
local playerpawn ply;
if (ply==none) return;
}*/
//var() sound usagecue;

function playselect() {
local pawn p;
p=playerpawn(owner);
if (p==none) return;
goto  bastardbitch;

bastardbitch:
PlaySound(sound'usage',SLOT_NONE);
//todo: add code for playing injector animations once mesh imported
}                                                                  

//spawnsetup(){}
//animplay_testanim(){}
//prep_soundfeedback(){}
//prep_effectswitch(){}
//post_modifyplayer(){}
//post_dropinjector(){}

defaultproperties
{
}
