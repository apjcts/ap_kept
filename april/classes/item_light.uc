class item_light expands flashlight;
//#exec AUDIO IMPORT FILE="..april\sounds\apjFlashlight\flash_active.wav"  NAME="lightson"  PACKAGE="april" GROUP="lightitem" 
//#exec AUDIO IMPORT FILE="..april\sounds\apjFlashlight\flash_inactive.wav" NAME="lightsoff" PACKAGE="april" GROUP="lightitem" 
#exec AUDIO IMPORT FILE="..\april\sounds\extras\item_flashlight_on1.wav" NAME="lightson" GROUP="lightitem"
#exec AUDIO IMPORT FILE="..\april\sounds\extras\item_flashlight_off1.wav" NAME="lightsoff" GROUP="lightitem" 
//var item_light_beam sNew;
//var item_light_proj pr;
//rlcoop code, beloved tick functions!
//todo figure out projector trickery
///function activated(){ 	//this is untested
///local playerpawn px;
///if (px==none) return;
///if (bactive) spawn (class 'april.fslite',px.location);
///}
defaultproperties
{
	ExpireMessage="The batteries have drained..."
	ActivateSound=Sound'april.lightitem.lightson'
	DeActivateSound=Sound'april.lightitem.lightsoff'
	PickupMessage="You picked up the military light"
	ItemName="Military Light"
	LightBrightness=40
	LightHue=30
	LightSaturation=200
	LightRadius=8
}
