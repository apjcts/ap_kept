class item_light_proj expands MapProjector;
//var PlayerPawn AttachTo;
//var() float ScaleMultiplier;
//var() float MaxScale;
//var float actualscale;

/*
simulated function Tick(float DT) {
        local vector HitLocation, HitNormal, TraceEnd;
        local float Distance;
	SetLocation(Instigator.Location);
	SetRotation(Instigator.ViewRotation);
	DeattachPrjDecal();
	AttachPrjDecal();

        if(AttachTo != none)
        {
                SetLocation(AttachTo.location);
                SetRotation(AttachTo.ViewRotation);
                TraceEnd = location + vector(rotation)*1000000000;
                Trace(HitLocation, HitNormal, TraceEnd, location, false);
                Distance=vsize(location - HitLocation);
 
                //AttachTo.ClientMessage(Distance@"      "@HitLocation);
                if(0.03 + (0.0015*Distance)*ScaleMultiplier < MaxScale)
                {
                        actualscale += 0.2*((0.0015*Distance)*ScaleMultiplier - actualscale);
                }
                        //ProjectorScale = 0.03 + (0.0015*Distance)*ScaleMultiplier;
                else
                        actualscale = MaxScale;
                ProjectorScale = actualscale;
                AttachPrjDecal();
        }
}
*/

defaultproperties
{
}
