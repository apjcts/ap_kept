class item_light_beam expands flashlightbeam;
// i got interesting new errors to appear!
// hijacked more rlcoop code to see how it may be useful
// will need to decypher more in the future, for now am tired

//more rlcoop code to decipher and sift through. ugh. good thing i'm not a coder.

/*
var bool bInit;

var playerpawn AttachTo;
var() float ScaleMultiplier;
var() float MaxScale;
var float actualscale;
 
simulated function Tick( float Delta ){
        local vector HitLocation, HitNormal, TraceEnd;
        local float Distance;
        if(AttachTo != none){
                SetLocation(attachto.location);
                SetRotation(attachto.ViewRotation);
                TraceEnd = location + vector(rotation)*1000000000;
                Trace(HitLocation, HitNormal, TraceEnd, location, false);
                Distance=vsize(location - HitLocation);
 
                AttachTo.ClientMessage(Distance@"      "@HitLocation);
                if(0.03 + (0.0015*Distance)*ScaleMultiplier < MaxScale)
                {
                        actualscale += 0.2*((0.0015*Distance)*ScaleMultiplier - actualscale);
                }
                //ProjectorScale = 0.03 + (0.0015*Distance)*ScaleMultiplier;
                else
                        actualscale = MaxScale;
                //ProjectorScale = actualscale;
                //AttachPrjDecal();
        }
}
*/

defaultproperties
{
	LifeSpan=0.1
}
