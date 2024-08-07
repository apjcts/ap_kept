/** 	1	EditPackages=april
	2	EditPackages=aprlc
	3	EditPackages=aprngc
	4	EditPackages=aprng		
	5	EditPackages=apr	*/
// ================================================================================================================================
// New Game Hand = works in accordance with April Player Pawn, Weap & Gameinfo. Extends Object to provide utility via children
// ================================================================================================================================
class newgamehand expands object nousercreate; 
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// NewGame, Responsiveness - various funcs given by aprilplayerpawn and aprilweapon + canvas ui & impact effects
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/waterentermix.ogg" 	name="WaterEnterMix" 			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/waterjmpsma.ogg" 	name="WaterJumpSmall" 			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/waterjmpbig.ogg" 	name="WaterJumpHigh" 			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/1shot_beep_02.ogg" 	name="1shot_beep_02"			group="NewGame" package="aprlc"         
#exec audio import file="sounds/newgame/3IMPFHT3.ogg" 		name="3IMPFHT3"				group="NewGame" package="aprlc"        
#exec audio import file="sounds/newgame/AMMO1.ogg" 		name="AMMO1"				group="NewGame" package="aprlc"         
#exec audio import file="sounds/newgame/ARM.ogg" 		name="ARM"				group="NewGame" package="aprlc"        
#exec audio import file="sounds/newgame/BATDIE3.wav" 		name="BATDIE3"				group="NewGame" package="aprlc"             
#exec audio import file="sounds/newgame/case_unlock.ogg" 	name="case_unlock"			group="NewGame" package="aprlc"         
#exec audio import file="sounds/newgame/cash.ogg"              	name="cash"				group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/CHACHING.ogg"          	name="CHACHING"				group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/chargeloop.wav"        	name="chargeloop"			group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/DETECT.ogg"            	name="DETECT"				group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/doomsday_warhead.ogg"  	name="doomsday_warhead"			group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/elevbell1.wav"         	name="elevbell1"			group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/explo1.ogg"            	name="explo1"				group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/explo2.ogg"            	name="explo2"				group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/explo4fx1.ogg"         	name="explo4fx1"			group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/explo4fx2.ogg"         	name="explo4fx2"			group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/fallbreak.ogg"         	name="fallbreak"			group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/flight_01.wav"         	name="flight_01"			group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/fly_end_01.wav"        	name="fly_end_01"			group="NewGame" package="aprlc"   
#exec audio import file="sounds/newgame/GARGBLST.wav"          	name="GARGBLST"				group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/gravity_switch.ogg"    	name="gravity_switch"			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/hit1.wav"              	name="hit1"				group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/item_acquired.ogg"     	name="Acquired"				group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/item_info_mouseover.ogg"       name="MouseOver" 		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/lowammo3.wav"                  name="LowAmmo3"			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/minexp.ogg"                    name="MineExp" 			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/phaser.ogg"                    name="Phaser"			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/pickup_key_1.ogg"              name="PickupKey1" 		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/pickup_key_2.ogg"              name="PickupKey2"		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/pickup_key_3.ogg"              name="PickupKey3" 		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/putaway_01.wav"                name="PutAway"			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/raise_01.wav"                  name="Raise1" 			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/rayzap.ogg"                    name="RayZapped"			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/recharge.ogg"                  name="Recharge" 			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/ringing.ogg"                   name="Ringing"			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/rivet.ogg"                     name="Rivet" 			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/rivete.ogg"                    name="Rivete"			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/SHELL1.ogg"                    name="Shell1" 			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/SHELL2.ogg"                    name="Shell2"			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/ShieldImpact1.ogg"             name="ShieldImpact1" 		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/ShieldImpact2.ogg"             name="ShieldImpact2"		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/SIZZLE.ogg"                    name="Sizzle" 			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/SPLAT_01.ogg"                  name="Splat1"			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/SPLAT_02.ogg"                  name="Splat2" 			group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/spotactive.ogg"                name="SpotActiveLoop"		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/spotdisable.ogg"               name="SpotDisabled" 		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/spotmalfunc.ogg"               name="SpotMalfunction"		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/STABINTOFLESH1.ogg"            name="StabIntoFlesh1" 		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/STABINTOFLESH3.ogg"            name="StabIntoFlesh3"		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/st_takehealth.ogg"             name="HealthDrain" 		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/suitcharge1.ogg"               name="SuitCharge"		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/suitchargeno1.ogg"             name="SuitChargeNone" 		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/TRANGTRANSPORTER.ogg"          name="Transporter"		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/VOMIT.wav"                     name="BloatedProjectile" 	group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/ZombieCharge.ogg"              name="ZombieCharge" 		group="NewGame" package="aprlc"
#exec audio import file="sounds/newgame/taunt_knuckle_crack.ogg"       name="DukeHands" 		group="NewGame" package="aprlc"
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// Scripted Pawns, Blood 2 Fanatic
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/fanatic/DEATH3.ogg" 		name="Died1" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/DEATH6.ogg" 		name="Died2" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/DEATH7.ogg" 		name="Died3" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/FEAR2.ogg" 		name="Fear2" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/FEAR3.ogg" 		name="Fear3" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/IDLE1.ogg" 		name="Idle1" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/IDLE2.ogg"		name="Idle2" group="Fan"
#exec audio import file="sounds/newgame/fanatic/IDLE4.ogg"          	name="Idle4" group="Fan"
#exec audio import file="sounds/newgame/fanatic/SCREAM1.ogg" 		name="Yell1" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/SCREAM3.ogg" 		name="Yell3" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/SPOT2.ogg" 		name="Spot2" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/SPOT3.ogg" 		name="Spot3" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/SPOT4.ogg" 		name="Spot4" group="Fan" 
#exec audio import file="sounds/newgame/fanatic/SPOT5.ogg" 		name="Spot5" group="Fan" 
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// Airlock 
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/airlock/bigdoors_02.ogg" 		name="BigDoors2" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/close_1s_01.ogg" 		name="DoorClose0" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/door_close.ogg" 		name="DoorClose1" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/door_close2.ogg" 		name="DoorClose2" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/door_movement_1_2s_01.ogg" 	name="DoorMovemt1" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/door_movement_1_2s_02.ogg" 	name="DoorMovemt2" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/door_movement_1_2s_03.ogg" 	name="DoorMovemt3" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/door_open.ogg"	 		name="DoorOpen1" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/door_open2.ogg" 		name="DoorOpen2" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/hugedoor_01_open.ogg" 		name="HugeDoors" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/lock_0_75s_01.ogg" 		name="Lock1" 		group="Airlock"
#exec audio import file="sounds/newgame/airlock/lock_0_75s_02.ogg" 		name="Lock2" 		group="Airlock"
#exec audio import file="sounds/newgame/airlock/lock_0_75s_03.ogg" 		name="Lock3" 		group="Airlock"
#exec audio import file="sounds/newgame/airlock/malfunction_01.ogg" 		name="LockMalfunc1" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/malfunction_02.ogg" 		name="LockMalfunc2" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/malfunction_03.ogg" 		name="LockMalfunc3" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/malfunction_04.ogg" 		name="LockMalfunc4" 	group="Airlock"
#exec audio import file="sounds/newgame/airlock/secret_door_0_5s_01.ogg" 	name="UACDoorHidden" 	group="Airlock"
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// Ambient, both looped & oneshot 
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/ambient/alienthrob.ogg" 		name="AlienThrobNoise" 		group="AmbientLooped"
#exec audio import file="sounds/newgame/ambient/banner.ogg" 			name="BannerShuffly" 		group="AmbientLooped"
#exec audio import file="sounds/newgame/ambient/castleclose.ogg" 		name="CastleDoorClose" 		group="AmbientOneShot"
#exec audio import file="sounds/newgame/ambient/castleopen.ogg" 		name="CastleDoorOpen" 		group="AmbientOneShot"
#exec audio import file="sounds/newgame/ambient/continuouschain.ogg" 		name="ChainHolder" 		group="AmbientLooped"
#exec audio import file="sounds/newgame/ambient/explosion01.ogg" 		name="Rubbleplode" 		group="AmbientOneShot"
#exec audio import file="sounds/newgame/ambient/foghorn.ogg" 			name="BoatFogHorn" 		group="AmbientOneShot"
#exec audio import file="sounds/newgame/ambient/glassfx1.ogg" 			name="GlassBreak1" 		group="AmbientOneShot"
#exec audio import file="sounds/newgame/ambient/glassfx2.ogg" 			name="GlassBreak2" 		group="AmbientOneShot"
#exec audio import file="sounds/newgame/ambient/hydraulics.ogg" 		name="Hydraulio" 		group="AmbientOneShot"
#exec audio import file="sounds/newgame/ambient/lockbreak.ogg" 			name="LockBreak" 		group="AmbientOneShot"
#exec audio import file="sounds/newgame/ambient/lockpick.ogg" 			name="LockPicke" 		group="AmbientOneShot"
#exec audio import file="sounds/newgame/ambient/minecar.ogg" 			name="MineCar" 			group="AmbientLooped"
#exec audio import file="sounds/newgame/ambient/rugshuffle.ogg" 		name="RugShuffle" 		group="AmbientLooped"
#exec audio import file="sounds/newgame/ambient/transportersteady.ogg" 		name="TransporterReady" 	group="AmbientLooped"
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// Residual Effects, Body Impact 
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/impacts/body_big_01.wav" 		name="BodyBig1" 		group="ResidualFx"
#exec audio import file="sounds/newgame/impacts/body_big_02.wav" 		name="BodyBig2" 		group="ResidualFx"
#exec audio import file="sounds/newgame/impacts/body_big_03.wav" 		name="BodyBig3" 		group="ResidualFx"
#exec audio import file="sounds/newgame/impacts/body_big_04.wav" 		name="BodyBig4" 		group="ResidualFx"
#exec audio import file="sounds/newgame/impacts/body_big_05.wav" 		name="BodyBig5" 		group="ResidualFx"
#exec audio import file="sounds/newgame/impacts/body_sm_01.wav" 		name="BodySma1" 		group="ResidualFx"
#exec audio import file="sounds/newgame/impacts/body_sm_02.wav" 		name="BodySma2" 		group="ResidualFx"
#exec audio import file="sounds/newgame/impacts/body_sm_03.wav" 		name="BodySma3" 		group="ResidualFx"
#exec audio import file="sounds/newgame/impacts/body_sm_04.wav" 		name="BodySma4" 		group="ResidualFx"
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// Residual Effects, Water Exit FX  
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/residua/drip_01.WAV" name="Drip0" group="ResidualFx"
#exec audio import file="sounds/newgame/residua/drip_02.WAV" name="Drip1" group="ResidualFx"
#exec audio import file="sounds/newgame/residua/drip_03.WAV" name="Drip2" group="ResidualFx"
#exec audio import file="sounds/newgame/residua/drip_04.WAV" name="Drip3" group="ResidualFx"
#exec audio import file="sounds/newgame/residua/drip_05.WAV" name="Drip4" group="ResidualFx"
#exec audio import file="sounds/newgame/residua/drip_06.WAV" name="Drip5" group="ResidualFx"
#exec audio import file="sounds/newgame/residua/drip_07.WAV" name="Drip6" group="ResidualFx"
#exec audio import file="sounds/newgame/residua/drip_08.WAV" name="Drip7" group="ResidualFx"
#exec audio import file="sounds/newgame/residua/drip_09.WAV" name="Drip8" group="ResidualFx"
#exec audio import file="sounds/newgame/residua/drip_10.WAV" name="Drip9" group="ResidualFx"
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// Findable Heads-Up-Display Systems, Hazardous Environment Warning System 
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/hudvoc1/armor_gone.wav" 	 name="ArmorGone"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/beep.wav" 		 name="Beepo"		group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/biohazard_detected.wav"  name="Biohazard"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/chemical_detected.wav" 	 name="Chemicals"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/flatline.wav" 		 name="Flatlined"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/health_critical.wav" 	 name="HLCritical"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/health_dropping.wav" 	 name="HLDropping"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/health_dropping2.wav" 	 name="HLDropping2"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/hev_logon.ogg" 		 name="Logon"		group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/major_fracture.wav" 	 name="MajFracture"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/major_lacerations.wav" 	 name="MajLaceratio"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/minor_fracture.wav" 	 name="MinFracture"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/minor_lacerations.wav" 	 name="MinLaceratio"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/near_death.wav" 	 name="NearDeath"	group="Hud_Fvox"
#exec audio import file="sounds/newgame/hudvoc1/radiation_detected.wav"  name="Radiation"	group="Hud_Fvox"
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// Findable Heads-Up-Display Systems, Standard Issue Biosuit Messaging System
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/hudvoc2/batteryrecharging.wav" 		name="BatteryRecharge" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/biohazard_detected.wav" 	name="FoundBiohazard" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/evacuate_area.wav" 		name="EvacuationNotice" 	group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/gpsdown.wav" 			name="GpsJustDied" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/health_critical.wav" 		name="HealthCritical" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/health_dropping.wav" 		name="HealthDropped" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/health_dropping2.wav" 		name="HealthDropped2"		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/heat_damage.wav" 		name="ExtremeHeat" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/internal_bleeding.wav" 		name="InternalBleed" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/lightbatterylife.wav" 		name="LightBatterySource" 	group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/light_gone.wav" 		name="LightBatteryNone" 	group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/lowoxygen.wav" 			name="LowOxygen" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/major_fracture.wav" 		name="MajorFracture" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/major_lacerations.wav" 		name="MajorLacer" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/minor_lacerations.wav" 		name="MinorLacer" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/near_death.wav" 		name="NearDying" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/nightvisionactivated.wav" 	name="Nightvis" 		group="Hud_BioSuit"
#exec audio import file="sounds/newgame/hudvoc2/seek_medic.wav" 		name="SeekMedic"		group="Hud_BioSuit"
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// UAC 
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/uac/AmorShard.ogg" 			name="AmorShard"		group="UAC"
#exec audio import file="sounds/newgame/uac/ArchTeleport2.ogg"          	name="ArchTeleport2"            group="UAC"
#exec audio import file="sounds/newgame/uac/Armor.ogg"                  	name="Armor"                    group="UAC"
#exec audio import file="sounds/newgame/uac/Back.ogg"                   	name="Back"        		group="UAC"
#exec audio import file="sounds/newgame/uac/Beep.ogg"                   	name="Beep"                     group="UAC"
#exec audio import file="sounds/newgame/uac/BulletCasing1.ogg"          	name="BulletCasing1"            group="UAC"
#exec audio import file="sounds/newgame/uac/BulletCasing2.ogg"          	name="BulletCasing2"            group="UAC"
#exec audio import file="sounds/newgame/uac/BulletCasing3.ogg"          	name="BulletCasing3"            group="UAC"
#exec audio import file="sounds/newgame/uac/Crate1.ogg"                 	name="Crate1"                   group="UAC"
#exec audio import file="sounds/newgame/uac/Crate2.ogg"                 	name="Crate2"                   group="UAC"
#exec audio import file="sounds/newgame/uac/GaussPrecisionDown.ogg"     	name="GaussPrecisionDown"       group="UAC" 
#exec audio import file="sounds/newgame/uac/GCSiegeDownSimpler.ogg"     	name="GCSiegeDownSimpler"       group="UAC" 
#exec audio import file="sounds/newgame/uac/grenade_launcher-explosion3.ogg"    name="GL_Explosion3"            group="UAC"
#exec audio import file="sounds/newgame/uac/GrenArm.ogg"                        name="GrenArm"                  group="UAC"
#exec audio import file="sounds/newgame/uac/GrenBounce.ogg"                     name="GrenBounce"               group="UAC"
#exec audio import file="sounds/newgame/uac/GrenRegen.ogg"                      name="GrenRegen"                group="UAC"
#exec audio import file="sounds/newgame/uac/GrenThrow.ogg"                      name="GrenThrow"                group="UAC"
#exec audio import file="sounds/newgame/uac/HealthMed.ogg"                      name="HealthMed"                group="UAC"
#exec audio import file="sounds/newgame/uac/HealthSmall.ogg"                    name="HealthSmall"              group="UAC"
#exec audio import file="sounds/newgame/uac/Jump.ogg"                           name="Jump"                     group="UAC"
#exec audio import file="sounds/newgame/uac/Land1.ogg"                          name="Land1"                    group="UAC"
#exec audio import file="sounds/newgame/uac/Land2.ogg"                          name="Land2"                    group="UAC"
#exec audio import file="sounds/newgame/uac/LowHealth.ogg"                      name="LowHealth"                group="UAC"
#exec audio import file="sounds/newgame/uac/Mega.ogg"                           name="Mega"                     group="UAC"
#exec audio import file="sounds/newgame/uac/MouseHover.ogg"                     name="MouseHover"               group="UAC"
#exec audio import file="sounds/newgame/uac/NavigateKeys.ogg"                   name="NavigateKeys"             group="UAC"
#exec audio import file="sounds/newgame/uac/OpenHoloMenu.ogg"                   name="OpenHoloMenu"             group="UAC"
#exec audio import file="sounds/newgame/uac/Pistol2ChargeLoop.ogg"              name="Pistol2ChargeLoop"        group="UAC"
#exec audio import file="sounds/newgame/uac/PistolChargeLoop.ogg"               name="PistolChargeLoop"         group="UAC"
#exec audio import file="sounds/newgame/uac/PistolChargeUp.ogg"                 name="PistolChargeUp"           group="UAC"
#exec audio import file="sounds/newgame/uac/PlasmaAltFireReady.ogg"             name="PlasmaAltFireReady"       group="UAC"
#exec audio import file="sounds/newgame/uac/plasmacrash.ogg"                    name="plasmacrash"              group="UAC"
#exec audio import file="sounds/newgame/uac/PlasmaFire.ogg"                     name="PlasmaFire"               group="UAC"
#exec audio import file="sounds/newgame/uac/RLLocked.ogg"                       name="RLLocked"                 group="UAC"
#exec audio import file="sounds/newgame/uac/Select.ogg"                         name="Select"                   group="UAC"
#exec audio import file="sounds/newgame/uac/Slider.ogg"                         name="Slider"                   group="UAC"
#exec audio import file="sounds/newgame/uac/SwitchWeapon.ogg"                   name="SwitchWeapon"             group="UAC"
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// Capitalism
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/capital/BORK98.ogg"                   	name="Bork98"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/BORKXP.ogg"                   	name="BorkXP"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/buysnd.ogg"                   	name="BuySound"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/chatsnd.ogg"                   	name="ChatSound"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/dlgvoice.ogg"                   name="DlgVoic"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/DSITEMUP.ogg"                   name="DsItemUp"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/failinv.ogg"                   	name="FailInven"		group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/failuse.ogg"                   	name="FailUse"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/findsecret.ogg"                 name="SecretFind"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/GFRAG.ogg"                   	name="gFrag"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/invsel.ogg"                   	name="InvSel"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/ITEMTHRW.ogg"                   name="ItemThrow"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/menuclose.ogg"                  name="MenuClose"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/menuscroll.ogg"                 name="MenuScroll"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/menuset.ogg"                   	name="MenuSet"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/menutab.ogg"                   	name="MenuTab"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/openkbase.ogg"                  name="Openkbase"             	group="Commerce_Main"
///#exec audio import file="sounds/newgame/capital/overkill/"                   name=""             		group="Commerce_CheekyBreeky"
#exec audio import file="sounds/newgame/capital/resel.wav"                   	name="ReSell"             	group="Commerce_Main"
#exec audio import file="sounds/newgame/capital/safe1.ogg"                   	name="Safe1"             	group="Commerce_Main"
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// Capitalism, Voices
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/capital/uivoices/DSNOPE.ogg"      	name="dsNope"            	group="Commerce_Voices"
#exec audio import file="sounds/newgame/capital/uivoices/EMONE.ogg"      	name="eMone"            	group="Commerce_Voices"
#exec audio import file="sounds/newgame/capital/uivoices/GAMELOAD.ogg"      	name="GmLoad1"            	group="Commerce_Voices"
#exec audio import file="sounds/newgame/capital/uivoices/preview.ogg"      	name="Previewer"            	group="Commerce_Voices"
#exec audio import file="sounds/newgame/capital/uivoices/RECSCRAP.ogg"      	name="recScrap"            	group="Commerce_Voices"
#exec audio import file="sounds/newgame/capital/uivoices/sewercount.ogg"      	name="sewercount1"            	group="Commerce_Voices"
#exec audio import file="sounds/newgame/capital/uivoices/SHITPRST.ogg"      	name="ShitPrst"            	group="Commerce_Voices"
#exec audio import file="sounds/newgame/capital/uivoices/WOW.ogg"      		name="WOW"            		group="Commerce_Voices"
#exec audio import file="sounds/newgame/capital/uivoices/YAY.ogg"      		name="YAY"            		group="Commerce_Voices"
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// voyage infernal sounds
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/french/BOTLSML.wav" 		name="BOTLSML" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/button1.wav"   		name="button1" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/button2.wav"   		name="button2" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/button3.wav" 		name="button3" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/button4.wav" 		name="button4" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/button5.wav"  		name="button5" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/button7.wav"		name="button7" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/miss1.wav"		name="miss1" 	group="FrenchSoundSet" 	
#exec audio import file="sounds/newgame/french/miss2.wav"		name="miss2" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/slide1.wav" 		name="slide1" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/slide2.wav"  		name="slide2" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/slide3.wav"  		name="slide3" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/vesthup.wav" 		name="vesthup" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/vestlup.wav" 		name="vestlup" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/VIALUP.wav"  		name="VIALUP" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/VIAR2UP.wav" 		name="VIAR2UP" 	group="FrenchSoundSet" 
#exec audio import file="sounds/newgame/french/VIARUP.wav"    		name="VIARUP" 	group="FrenchSoundSet" 
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
/// NewGame, Weapons: 
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/weap/loadshell.ogg"    		name="LoadShell" 	group="NewGame_Weapons" 
#exec audio import file="sounds/newgame/weap/newstuff.ogg"    		name="srdlc" 		group="NewGame_Weapons" 
#exec audio import file="sounds/newgame/weap/newstuffs.ogg"    		name="srdlc2" 		group="NewGame_Weapons" 
#exec audio import file="sounds/newgame/newproj/bBounce1.ogg"    	name="BulletBounced" 	group="NewGame_Projectiles" 
#exec audio import file="sounds/newgame/newproj/bBounce2.ogg"    	name="BulletBounced2" 	group="NewGame_Projectiles" 
#exec audio import file="sounds/newgame/newproj/bBounce3.ogg"    	name="BulletBounced3" 	group="NewGame_Projectiles" 
#exec audio import file="sounds/newgame/newproj/bBounceEnd.ogg"    	name="BulletBounceEnd" 	group="NewGame_Projectiles" 
#exec audio import file="sounds/newgame/newproj/bEjected.ogg"    	name="BulletEjectedx" 	group="NewGame_Projectiles" 
#exec audio import file="sounds/newgame/newproj/impact_metal.ogg"    	name="ImpactMetal" 	group="NewGame_Projectiles" 
#exec audio import file="sounds/newgame/newproj/POTTERY.ogg"    	name="PotteryBreak" 	group="NewGame_Projectiles" 
#exec audio import file="sounds/playerweapon/move1.ogg"                 name="weapmove1" 	group="NewGame_Weapons"
#exec audio import file="sounds/playerweapon/move2.ogg"                 name="weapmove2" 	group="NewGame_Weapons"
#exec audio import file="sounds/playerweapon/move3.ogg"                 name="weapmove3" 	group="NewGame_Weapons"
#exec audio import file="sounds/playerweapon/move4.ogg"                 name="weapmove4" 	group="NewGame_Weapons"
#exec audio import file="sounds/playerweapon/move5.ogg"                 name="weapmove5" 	group="NewGame_Weapons"
#exec audio import file="sounds/playerweapon/moveturn.ogg"              name="weapmvturn" 	group="NewGame_Weapons"
#exec audio import file="sounds/playerweapon/moveturn2.ogg"             name="weapmvturn2" 	group="NewGame_Weapons"
#exec audio import file="sounds/playerweapon/pistol_shoot.wav"          name="sr2sidearm" 	group="NewGame_Weapons"
#exec audio import file="sounds/playerweapon/zoomer.ogg"                name="duskzoom" 	group="NewGame_Weapons"
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
/// Levels: Classic Styleguide, Looped
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/lvls/classic_looped/citadel_ambient_scream_loop1.wav"   name="citadel_ambient_scream_loop1" group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/citadel_ambient_voices1.wav"    	name="citadel_ambient_voices1" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/citadel_drone_loop3.wav"    	name="citadel_drone_loop3" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/citadel_drone_loop4.wav"    	name="citadel_drone_loop4" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/citadel_drone_loop5.wav"    	name="citadel_drone_loop5" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/citadel_drone_loop6.wav"    	name="citadel_drone_loop6" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/combine_shield_loop3.wav"    	name="combine_shield_loop3" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/field_loop2.wav"    		name="field_loop2" 		group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/machine_moving_loop3.wav"    	name="machine_moving_loop3" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/manhack_machine_loop1.wav"    	name="manhack_machine_loop1" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/swamp_frogs_loop2.wav"    		name="swamp_frogs_loop2" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/teleport_rings_loop2.wav"    	name="teleport_rings_loop2" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/toxic_slime_loop1.wav"    		name="toxic_slime_loop1" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/tunnel_wind_loop1.wav"    		name="tunnel_wind_loop1" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/waterleak_loop1.wav"    		name="waterleak_loop1" 		group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/water_rivulet_loop2.wav"    	name="water_rivulet_loop2" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/zapper_ambient_loop1.wav"    	name="zapper_ambient_loop1" 	group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/aheli_rotor_loop1.wav"    		name="ahelirotor" 		group="LVL_Classic_Looped" 
#exec audio import file="sounds/newgame/lvls/classic_looped/aheli_rotor_muffle_loop1.wav"    	name="ahelirotormuffled" 	group="LVL_Classic_Looped" 
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
/// Levels: Classic Styleguide, OneShot
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/lvls/classic_oneshot/citadel_hub_ambience1.wav"    	name="cithubambience" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/gunship_distant1.wav"    		name="gunshipdist" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/headcrab_canister_ambient1.wav"    name="canister_amb1" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/headcrab_canister_ambient2.wav"    name="canister_amb2" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/headcrab_canister_ambient5.wav"    name="canister_amb5" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/heli_distant1.wav"    		name="heli_dist" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/heli_pass2.wav"    		name="heli_pass2" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/heli_pass_distant1.wav"		name="heli_pass_dist" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/heli_pass_quick2.wav"    		name="heli_pass_quick" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/inside_battle_zombie1.wav"    	name="bgzombie1" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/inside_battle_zombie3.wav"    	name="bgzombie3" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/playground_memory.wav"    		name="playgroundmemory" 	group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/reverberatedbreathing1.wav"    	name="bgbreathing1" 		group="LVL_Classic_OneShot" 
#exec audio import file="sounds/newgame/lvls/classic_oneshot/reverberatedbreathing2.wav"        name="bgbreathing2" 		group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/thumper_shutdown1.wav"             name="thumpshutd" 		group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/thumper_startup1.wav"              name="thumpstart" 		group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/thunder1.wav"                      name="hqthunder1" 		group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/thunder2.wav"                      name="hqthunder2" 		group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/thunder3.wav"                      name="hqthunder3" 		group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/thunder4.wav"                      name="hqthunder4" 		group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_looped/tone_warehouse.wav"                 name="insanewarehouse" 		group="LVL_Classic_Looped"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/toxic_slime_sizzle1.wav"           name="bio_sizzle1" 		group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/toxic_slime_sizzle3.wav"           name="bio_sizzle3" 		group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/toxic_slime_sizzle4.wav"           name="bio_sizzle4" 		group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/train_horn_distant1.wav"           name="train_horn_dist" 	group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/zombie2.wav"                       name="bgzombie2" 	group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/zombie4.wav"                       name="bgzombie4" 	group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/zombie7.wav"                       name="bgzombie7" 	group="LVL_Classic_OneShot"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp1.wav"                     name="bgexp01" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp10.wav"                    name="bgexp10" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp11.wav"                    name="bgexp11" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp2.wav"                     name="bgexp02" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp3.wav"                     name="bgexp03" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp4.wav"                     name="bgexp04" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp5.wav"                     name="bgexp05" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp6.wav"                     name="bgexp06" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp7.wav"                     name="bgexp07" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp8.wav"                     name="bgexp08" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/xplo/exp9.wav"                     name="bgexp09" 		group="LVL_Classic_OneShot_bgExplo"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/strange_talk11.wav"		name="strangetalk11" 	group="LVL_Classic_OneShot_Abstract"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/strange_talk4.wav"            name="strangetalk4" 	group="LVL_Classic_OneShot_Abstract"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/strange_talk5.wav"            name="strangetalk5" 	group="LVL_Classic_OneShot_Abstract"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/strange_talk6.wav"            name="strangetalk6" 	group="LVL_Classic_OneShot_Abstract"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/strange_talk7.wav"            name="strangetalk7" 	group="LVL_Classic_OneShot_Abstract"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/strange_talk8.wav"            name="strangetalk8" 	group="LVL_Classic_OneShot_Abstract"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/strange_talk9.wav"		name="strangetalk9" 	group="LVL_Classic_OneShot_Abstract"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/teleport_mechanism_windup1.wav"  name="tpwndup2" 	group="LVL_Classic_OneShot_Teleport"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/teleport_mechanism_windup3.wav"  name="tpwndup3" 	group="LVL_Classic_OneShot_Teleport"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/teleport_mechanism_windup4.wav"  name="tpwndup4" 	group="LVL_Classic_OneShot_Teleport"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/teleport_weird_voices1.wav"      name="tpvoice1" 	group="LVL_Classic_OneShot_Teleport"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/teleport_weird_voices2.wav"      name="tpvoice2" 	group="LVL_Classic_OneShot_Teleport"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grvy/teleport_winddown1.wav"          name="wnddown"  	group="LVL_Classic_OneShot_Teleport"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grim/town_child_scream1.wav"          name="child1" 	group="LVL_Classic_OneShot_TownStuff"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grim/town_child_scream2.wav"          name="child2" 	group="LVL_Classic_OneShot_TownStuff"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grim/town_child_scream3.wav"          name="child3" 	group="LVL_Classic_OneShot_TownStuff"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grim/town_scared_sob1.wav"            name="scaredsob1" 	group="LVL_Classic_OneShot_TownStuff"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grim/town_scared_sob2.wav"            name="scaredsob2" 	group="LVL_Classic_OneShot_TownStuff"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grim/town_scared_sob3.wav"            name="scaredsob3" 	group="LVL_Classic_OneShot_TownStuff"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grim/town_scared_sob4.wav"            name="scaredsob4" 	group="LVL_Classic_OneShot_TownStuff"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grim/town_zombie_call1.wav"           name="zombcall1" 	group="LVL_Classic_OneShot_TownStuff"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grim/town_zombie_call2.wav"           name="zombcall2" 	group="LVL_Classic_OneShot_TownStuff"
#exec audio import file="sounds/newgame/lvls/classic_oneshot/grim/town_zombie_call3.wav"           name="zombcall3" 	group="LVL_Classic_OneShot_TownStuff"
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
/// Levels: Creaky, OneShot
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/bump1.wav"                       name="bump1" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/bump2.wav"                       name="bump2" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/bump3.wav"                       name="bump3" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/bump4.wav"                       name="bump4" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/bump5.wav"                       name="bump5" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/bump6.wav"                       name="bump6" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/metal1.wav"                      name="NHmetal1" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/metal3.wav"                      name="NHmetal3" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/metal4.wav"                      name="NHmetal4" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/metal6.wav"                      name="NHmetal6" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/metal7.wav"                      name="NHmetal7" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/metal8.wav"                      name="NHmetal8" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/cartrap_explode_impact2.wav"     name="cartrap" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/creaking.wav"                    name="creaking" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/creaking2.wav"                   name="creaking2" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/creaking3.wav"                   name="creaking3" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/creaking4.wav"                   name="creaking4" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/metal_stress7.wav"               name="metal_stress7" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/metal_stress8.wav"               name="metal_stress8" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/metal_stress9.wav"               name="metal_stress9" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/shipgroan5.wav"                  name="shipgroan5" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/shipgroan6.wav"                  name="shipgroan6" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/shipgroan7.wav"                  name="shipgroan7" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/squeeks2.wav"                    name="squeeks2" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wall_move2.wav"                  name="wall_move2" 		group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak1.wav"                 name="wood_creak01" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak10.wav"                name="wood_creak10" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak11.wav"                name="wood_creak11" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak12.wav"                name="wood_creak12" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak2.wav"                 name="wood_creak02" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak3.wav"                 name="wood_creak03" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak4.wav"                 name="wood_creak04" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak5.wav"                 name="wood_creak05" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak6.wav"                 name="wood_creak06" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak7.wav"                 name="wood_creak07" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak8.wav"                 name="wood_creak08" 	group="LVL_Creaky_OneShot"
#exec audio import file="sounds/newgame/lvls/creaky_oneshot/wood_creak9.wav"                 name="wood_creak09" 	group="LVL_Creaky_OneShot"
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
/// Levels: Nature, Looped
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/lvls/nature_looped/lake_water.wav"			name="lake_water"      		group="LVL_Nature_Looped"
#exec audio import file="sounds/newgame/lvls/nature_looped/wasteland_wind.wav"  		name="wasteland_wind"           group="LVL_Nature_Looped"
#exec audio import file="sounds/newgame/lvls/nature_looped/water_flow_loop1.wav"        	name="flow_loop"                group="LVL_Nature_Looped"
#exec audio import file="sounds/newgame/lvls/nature_looped/water_in_boat1.wav"          	name="in_boat"                  group="LVL_Nature_Looped"
#exec audio import file="sounds/newgame/lvls/nature_looped/water_run1.wav"              	name="water_run1"               group="LVL_Nature_Looped"
#exec audio import file="sounds/newgame/lvls/nature_looped/wind_tunnel1.wav"            	name="wind_tunnel"              group="LVL_Nature_Looped"
#exec audio import file="sounds/newgame/lvls/train_looped/razor_train_wheels_loop1.wav"		name="tr_wheels_loop1"		group="LVL_Trains_l" 
#exec audio import file="sounds/newgame/lvls/train_looped/train_freight_loop1.wav"		name="freight_loop1"		group="LVL_Trains_l" 
#exec audio import file="sounds/newgame/lvls/train_looped/train_freight_loop3.wav"		name="freight_loop3"		group="LVL_Trains_l" 
#exec audio import file="sounds/newgame/lvls/train_looped/train_int.wav"			name="train_int"		group="LVL_Trains_l" 
#exec audio import file="sounds/newgame/lvls/train_looped/train_wheels_overhead_loop1.wav"	name="tr_overhead_loop1"	group="LVL_Trains_l" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainrattle02.ogg"			name="trainrattle02"		group="LVL_Trains_o" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainrattle03.ogg"			name="trainrattle03"		group="LVL_Trains_o" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainrattle06.ogg"			name="trainrattle06"		group="LVL_Trains_o" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainrattle07.ogg"			name="trainrattle07"		group="LVL_Trains_o" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainrattle09.ogg"			name="trainrattle09"		group="LVL_Trains_o" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainrattleheavy.ogg"		name="trainrattleheavy"		group="LVL_Trains_o" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainrattleheavy2.ogg"		name="trainrattleheavy2"	group="LVL_Trains_o" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainrattleheavy3.ogg"		name="trainrattleheavy3"	group="LVL_Trains_o" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainthud01.ogg"			name="trainthud01"		group="LVL_Trains_o" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainthud02.ogg"			name="trainthud02"		group="LVL_Trains_o" 
#exec audio import file="sounds/newgame/lvls/train_oneshot/trainthud04.ogg"			name="trainthud04"		group="LVL_Trains_o" 
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
/// Movers
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
#exec audio import file="sounds/newgame/mvrs/bigstop1.wav"                       	name="bigstop1" 		group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/door_metal_large_chamber_close1.wav"        name="chamber_close1" 		group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/elevator_move_loop2.wav"                    name="elevator_move_loop2" 	group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/elevator_start1.wav"                       	name="elevator_start1" 		group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/elevator_stop1.wav"                       	name="elevator_stop1" 		group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/hall_elev_door.wav"                       	name="hall_elev_door" 		group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/hall_elev_stop.wav"                       	name="hall_elev_stop" 		group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/handle_pushbar_locked1.wav"			name="handle_pushbar_locked1" 	group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/handle_pushbar_open2.wav"			name="handle_pushbar_open2" 	group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/heavymove1.wav"                       	name="heavymove1" 		group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/platstop1.wav"                       	name="platstop1" 		group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/railstop1.wav"                       	name="railstop1" 		group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/tram_move.wav"                       	name="tram_move" 		group="hlMovers"
#exec audio import file="sounds/newgame/mvrs/wood_stop2.wav"                       	name="wood_stop2" 		group="hlMovers"
/**
#exec audio import file="sounds/newgame/lvls/classic_looped/"    		name="" 		group="NewGame_" 
#exec audio import file="sounds/newgame//"    		name="" 		group="NewGame_" 
#exec audio import file="sounds/newgame//"    		name="" 		group="NewGame_" 
#exec audio import file="sounds/newgame//"    		name="" 		group="NewGame_" 
#exec audio import file="sounds/newgame//"    		name="" 		group="NewGame_" 
#exec audio import file="sounds/newgame//"    		name="" 		group="NewGame_" 
*/
///#exec audio import file="sounds/newgame/capital/overkill/"                   name=""             group="uiStores"
//// --------------	music handler queue handling 
struct terrortrax {	var music 	mt_current, 
					mt_previous, 
					mt_next;
			var sound 	jing_current, 
					jing_previous, 
					jing_next;
			var string 	lbl_current, 
					lbl_previous, 
					lbl_next,
					desc_current,
					desc_previous,
					desc_next; 
			var int 	randall, 
					pitchford; 	
			var float 	randxl, 
					randxxl; 		};
var terrortrax 		msx_primary, 	msx_secondary;

/**	I just thought of something. Every game, (that is, every table game - like, say, poker) has not only itself and the players, it also has a HAND being
	dealt to each player depending on how match is played and how cards are shuffled. So, what if we applied a similar approach with april's core design?
	since newgamehand is part of an abstract class with a great deal of flexibility, I could technically set up its children - where each acts as a kind 
	of ambassador to each class Unreal already has. If we need something done to the inventory, we mirror a class that expands inventory, and call local
	functions that address the game's current hand so it can mutate accordingly. During each session, and each time the game is launched, this actor's 
	child resets - thus causing a factory reset in various systems: findable locations, goal information, pawn data (patrols, conversations, events) etc...
	
	but, by providing autosave triggers in maps, we could theoretically save that data and have it used for creating semi-deterministic playstyle hinges 
	throughout the campaign. If, for example, a series of levels is completed in a certain way, - this actor is updated to respond accordingly just be 
	fore we switch to a new area, in which an autosave trigger is fired - causing all of that data to be embedded along with the save file. currently i 
	just need a setup for interactable consoles that make use of autosave triggers - should be doable with firetrucks but yyeeeeeah it's a dependency.
	would be nicer to have my own class mirrors for every occasion, but i'm not equipped with years of coding experience. so firetrucks substitute it is

	[x] <- this actor. top of the tree. shuffles the hand each time level starts. must preserve its data if the game is saved
	 |
	 |-[x] <- goal handler, once the game loads it gives out tasks decided by its parent. if its inventory -> fetch it, if its a pawn -> hunt it down
	 |  |-[x] goaltopo actors placed in the map itself, should have properties for specifying player target objects for triggering shifts in goal dynamics
	 |
	 |-[x] <- pawn direct, depending on NGhand's decisions provides a set of goals for scriptedpawns to follow. Obviously requires a subclass with a link
	 |  |----[x] <- radiolinked pawn instance with a setting for randomized squad bundles / dialogue (if present) / patrols, events, etc (if present)
	 |
	 |-[x] <- itemdirect, handles inventory contents of decorative objects / stuffed owned by scriptedpawns / conditions for error margin xchg dynamics
	 
*/

                                            
                                            