//=============================================================================
// Play Music Once. Self-explanatory. Stolen from [The Descent] 
// Probably written by SteadZ or EBD but I could be wrong... 
// It should've been called lifesaver.uc because that is exactly what it is!
//=============================================================================
class playmusiconce expands Triggers; 
var() music Song;
var() float SongDuration;
var float startTime;
var bool bActive;

function Trigger( actor Other, pawn EventInstigator ){
	//local PlayerPawn P;
	local Pawn A;
	Level.Song = Song;
	Level.SongSection = 0;
	A = Level.PawnList;
	While ( A != None ){
		if ( A.IsA('PlayerPawn') )
			PlayerPawn(A).ClientSetMusic(Song, 0, 0, MTRAN_Instant);
		A = A.nextPawn;
	}
	bActive = true;
	startTime = Level.TimeSeconds;
	Disable( 'Trigger' );
}
function Tick(float deltaTime){
	//local PlayerPawn P;
	local Pawn A;
	if(bActive){
		if(Level.TimeSeconds>=startTime+SongDuration){
			if(Level.Song==Song && Level.SongSection==0){
				A = Level.PawnList;
				While ( A != None ){
					if ( A.IsA('PlayerPawn') )
						PlayerPawn(A).ClientSetMusic(none, 255, 255, MTRAN_FastFade);
					A = A.nextPawn;
				}
				bActive = false;
			}
			else
				bActive = false;
		}
	}
}

defaultproperties
{
	SongDuration=0.0
	StartTime=0.0
	Song=None
	bActive=False
}
