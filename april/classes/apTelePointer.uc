class apTelePointer expands TazerProj;
var vector xpos;
// todo emitter fx for pointing indicator, airphys indicator, waterphys indicator, unreachable indicator
function Explode(vector HitLocation,vector HitNormal)
{
  PlaySound(ImpactSound, SLOT_Misc, 0.5,,, 0.5+FRand());  
  if (Damage > 60) Spawn(class'RingExplosion2',,, HitLocation+HitNormal*8,rotator(HitNormal)); 
  Spawn ( class 'PawnTeleportEffect',,, Instigator.Location );  
  Spawn ( class 'PawnTeleportEffect',,, Location );  
  Instigator.SetLocation(Location);      
  Destroy();
}

defaultproperties
{
	XPos=(X=0.0,Y=0.0,Z=0.0)
}
