class resource_allskies expands actor nousercreate;
/**
#exec texture import file="april\textures\core_skies\sky_evening" 	name="evening_" 	group="skies" mips=1 flags=0 btc=3
#exec texture import file="april\textures\core_skies\sky_evening2" 	name="evening2_" 	group="skies" mips=1 flags=0 btc=3
#exec texture import file="april\textures\core_skies\sky_lake" 		name="lake_" 		group="skies" mips=1 flags=0 btc=3
#exec texture import file="april\textures\core_skies\sky_mist" 		name="mist_" 		group="skies" mips=1 flags=0 btc=3
#exec texture import file="april\textures\core_skies\sky_mountains" 	name="mountains_" 	group="skies" mips=1 flags=0 btc=3
#exec texture import file="april\textures\core_skies\sky_smoke" 	name="smoke_" 		group="skies" mips=1 flags=0 btc=3
#exec texture import file="" name="" group="skies" mips=1 flags=0 btc=3
#exec texture import file="" name="" group="skies" mips=1 flags=0 btc=3
#exec texture import file="" name="" group="skies" mips=1 flags=0 btc=3
#exec texture import file="" name="" group="skies" mips=1 flags=0 btc=3
#exec texture import file="" name="" group="skies" mips=1 flags=0 btc=3
#exec texture import file="" name="" group="skies" mips=1 flags=0 btc=3
#exec texture import file="" name="" group="skies" mips=1 flags=0 btc=3
#exec texture import file="" name="" group="skies" mips=1 flags=0 btc=3
*/
//todo test dependencies
//night
#exec texture import file=textures\sky_night01\sky_bk0001.png  name="evening_back" 	group="sky_night" flags=0 btc=1
#exec texture import file=textures\sky_night01\sky_dn0001.png  name="evening_down" 	group="sky_night" flags=0 btc=1
#exec texture import file=textures\sky_night01\sky_ft0001.png  name="evening_front" 	group="sky_night" flags=0 btc=1
#exec texture import file=textures\sky_night01\sky_lf0001.png  name="evening_left" 	group="sky_night" flags=0 btc=1
#exec texture import file=textures\sky_night01\sky_rt0001.png  name="evening_right" 	group="sky_night" flags=0 btc=1
#exec texture import file=textures\sky_night01\sky_up0001.png  name="evening_up" 	group="sky_night" flags=0 btc=1
//evening
/**
#exec texture import file="..\april\textures\core_skies\sky_evening\evening_skybk.png"  name="evening_back" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_evening\evening_skydn.png"  name="evening_down" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_evening\evening_skyft.png"  name="evening_front" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_evening\evening_skylf.png"  name="evening_left" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_evening\evening_skyrt.png"  name="evening_right" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_evening\evening_skyup.png"  name="evening_up" 	group="skies" flags=0 btc=1
*/
//evening 2                  
#exec texture import file="..\april\textures\core_skies\sky_evening2\evening_sky2bk.png" name="evening2_back"	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_evening2\evening_sky2dn.png" name="evening2_down"   group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_evening2\evening_sky2ft.png" name="evening2_front"  group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_evening2\evening_sky2lf.png" name="evening2_left"   group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_evening2\evening_sky2rt.png" name="evening2_right"  group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_evening2\evening_sky2up.png" name="evening2_up"     group="skies" flags=0 btc=1
//smoke                      
#exec texture import file="..\april\textures\core_skies\sky_smoke\smoke_skybk.png" name="smoke_back"	 	group="sky_smoke" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_smoke\smoke_skydn.png" name="smoke_down"        	group="sky_smoke" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_smoke\smoke_skyft.png" name="smoke_front"       	group="sky_smoke" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_smoke\smoke_skylf.png" name="smoke_left"        	group="sky_smoke" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_smoke\smoke_skyrt.png" name="smoke_right"       	group="sky_smoke" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_smoke\smoke_skyup.png" name="smoke_up"          	group="sky_smoke" flags=0 btc=1
//mountains                  
/**
#exec texture import file="..\april\textures\core_skies\sky_mountains\sky02bk.png" name="mtns_back"		group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_mountains\sky02dn.png" name="mtns_down"        	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_mountains\sky02ft.png" name="mtns_front"       	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_mountains\sky02lf.png" name="mtns_left"        	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_mountains\sky02rt.png" name="mtns_right"       	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_mountains\sky02up.png" name="mtns_up"         	group="skies" flags=0 btc=1
//mist                       
#exec texture import file="..\april\textures\core_skies\sky_mist\sky12bk.png" name="smoke_back"	  	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_mist\sky12dn.png" name="smoke_down"		group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_mist\sky12ft.png" name="smoke_front"     	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_mist\sky12lf.png" name="smoke_left"      	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_mist\sky12rt.png" name="smoke_right"     	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_mist\sky12up.png" name="smoke_up"        	group="skies" flags=0 btc=1
*/
//lake                       
#exec texture import file="..\april\textures\core_skies\sky_lake\night_lakebk.png" name="lake_back"	group="sky_lake" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_lake\night_lakedn.png" name="lake_down"	group="sky_lake" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_lake\night_lakeft.png" name="lake_front"	group="sky_lake" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_lake\night_lakelf.png" name="lake_left"	group="sky_lake" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_lake\night_lakert.png" name="lake_right"	group="sky_lake" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_lake\night_lakeup.png" name="lake_up"	group="sky_lake" flags=0 btc=1
//ocean sky                  
#exec texture import file="..\april\textures\core_skies\sky_ocean\sky20bk.png" name="overcast1_back"  group="sky_ocean" flags=0 btc=1     
#exec texture import file="..\april\textures\core_skies\sky_ocean\sky20dn.png" name="overcast1_down"  group="sky_ocean" flags=0 btc=1     
#exec texture import file="..\april\textures\core_skies\sky_ocean\sky20ft.png" name="overcast1_front" group="sky_ocean" flags=0 btc=1    
#exec texture import file="..\april\textures\core_skies\sky_ocean\sky20lf.png" name="overcast1_left"  group="sky_ocean" flags=0 btc=1     
#exec texture import file="..\april\textures\core_skies\sky_ocean\sky20rt.png" name="overcast1_right" group="sky_ocean" flags=0 btc=1    
#exec texture import file="..\april\textures\core_skies\sky_ocean\sky20up.png" name="overcast1_up"    group="sky_ocean" flags=0 btc=1       
//sunset mountain sky        
#exec texture import file="..\april\textures\core_skies\sky_sunset\sunsetmountainbk.png" name="sunsetmountainback"  group="sky_sunset" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_sunset\sunsetmountaindn.png" name="sunsetmountaindown"  group="sky_sunset" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_sunset\sunsetmountainft.png" name="sunsetmountainfront" group="sky_sunset" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_sunset\sunsetmountainlf.png" name="sunsetmountainleft"  group="sky_sunset" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_sunset\sunsetmountainrt.png" name="sunsetmountainright" group="sky_sunset" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_sunset\sunsetmountainup.png" name="sunsetmountainup"    group="sky_sunset" flags=0 btc=1
//worlds end sky             
/**
#exec texture import file="..\april\textures\core_skies\sky_worldsEnd\Sky_WorldsEnd01BK.png" name="worlds_end_back" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_worldsEnd\Sky_WorldsEnd01DN.png" name="worlds_end_down" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_worldsEnd\Sky_WorldsEnd01FT.png" name="worlds_end_front"	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_worldsEnd\Sky_WorldsEnd01LF.png" name="worlds_end_left" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_worldsEnd\Sky_WorldsEnd01RT.png" name="worlds_end_right"	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_worldsEnd\Sky_WorldsEnd01UP.png" name="worlds_end_up"	group="skies" flags=0 btc=1
*/
//overcast sky               
/**
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast01BK.png" name="overcast1_back"  	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast01DN.png" name="overcast1_down"  	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast01FT.png" name="overcast1_front" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast01LF.png" name="overcast1_left"  	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast01RT.png" name="overcast1_right" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast01UP.png" name="overcast1_up"    	group="skies" flags=0 btc=1
//overcast 2                 
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast02BK.png" name="overcast2_back"  	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast02DN.png" name="overcast2_down"  	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast02FT.png" name="overcast2_front"	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast02LF.png" name="overcast2_left"  	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast02RT.png" name="overcast2_right" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast02UP.png" name="overcast2_up"    	group="skies" flags=0 btc=1
//overcast 3                 
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast03BK.png" name="overcast3_back"  	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast03DN.png" name="overcast3_down"  	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast03FT.png" name="overcast3_front" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast03LF.png" name="overcast3_left"  	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast03RT.png" name="overcast3_right" 	group="skies" flags=0 btc=1
#exec texture import file="..\april\textures\core_skies\sky_overcast\Sky_Overcast03UP.png" name="overcast3_up"    	group="skies" flags=0 btc=1
*/
defaultproperties
{
}
