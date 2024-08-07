// =======================================================================================================================
// sensenet - sensor network for scanning nodes, created dynamically for various... informative purposes
// =======================================================================================================================

class sensenet expands dynamiczoneinfo;
var sensenet senseradio;
/**	scan zone for various objects and their related data
        let's say i have a scan tool interacting with a pathnode,
        depending on type given to sensenet, user gets relevant data
        if item is being scanned we give its objectname, maybe event/tag also
        if it's a translator event, we relay data related to that translatorevent
        so... this should be in a weapon, shouldn't it? yes.. but sensenet zone 
        settings will determine what kind of scan information that weapon will receive.
        sensenet might also be useful to scriptedpawns and aidirect if the player has 
        done something to 'set it off' in some way. ex: player walks into sensenet zone,
        players current info is read by aidirect to determine scriptedpawns' next action
	another example. player fires a weapon within sensenet zone, it registers the type
	of projectile fired, and uses that to determine ... loudness of the fired weapon, why not.
	then we use that info to alert scriptedpawns incase the weapon was too loud. yes i stole 
	that idea from dx (acoustic sensor), but the main idea is that sensenet allows scanned 
	objects and scanners to interact, depending on type of sensenet we can vary resolution/quality 
	of scanned data, depending on who enters and leaves the zone we can determine who to give that 
	data and when. since this class is a DYNAMICzoneinfo we can use it for weapon functions as well: 
	i fired a weapon, sensenet is created and given instructions as a zone, player carries that zone
	like a wettener (hi bleeder) until primary fire function is drained or turned off or whatever 
	todo:
	erictool -> read zone name, read zone skyzone tag
	*/
///event BeginEvent();
///event EndEvent();
defaultproperties{
        bhidden=false
        LifeSpan=0.8
	bNoDelete=false
        bStatic=false
}