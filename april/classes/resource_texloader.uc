class resource_texloader expands actor nousercreate;
///dummy actor for importing core texes, 
///i'm just too lazy to guess how many 
///unrealed will eat without error, 
///there seems to be a batch limit
///..\april\textures\w2reduced\
///D:\q\coreimages\importready\
/**
w2texes are impossible to identify... cry about it! unrealed has preview for a reason
note to self: tabs in path break the parser - so keep those columns just the way they are
another note to self: apparently quotations are not necessary, interesting...
3 sets should be more than enough, the package is huge already...
".. but YOURE the one who loaded it with SOUNDS and TEXTURES" - I hear you say!
well... I've got only two words for you pal. COMPLETE INDEPENDENCE.
[done] todo prep hl2 tex for import purposes 
*/                                                                                                      
//TODO add RE8 textures, slice them into re_material groups
//todo: re8 tex collection, mw2 tex collection
//--------------------------------------------------------------------------------------------------------------------------------------------core materials
#exec texture import file=textures\core\logocredit2.png 			name=credits2 		group=core 		btc=1
#exec texture import file=textures\core\logocredit2a.png 			name=credits2a 		group=core 		btc=1
#exec texture import file=textures\core\healthtrack.png 			name=healthtrack 	group=core 		btc=1
#exec texture import file=textures\aprled\util_reserved.png 			name=reserved 		group=aprled 		btc=1
#exec texture import file=textures\aprled\util_zoneslice.png			name=zoneslice		group=aprled		btc=1
//--------------------------------------------------------------------------------------------------------------------------------------------half-life 2, efx
#exec texture import file=textures\hl2\efx\shadgrimgrvycat.png		name=shadgrimgrvycat		group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\comshieldwall.png		name=comshieldwall		group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\640hud7.png			name=640hud7			group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\bills01a.png                 name=bills01a                   group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\bills02a.png                 name=bills02a                   group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\bills03a.png                 name=bills03a                   group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\bills04a.png                 name=bills04a                   group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\bills05a.png                 name=bills05a                   group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\blood1.png                   name=blood1                     group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\blood2.png                   name=blood2                     group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\blood3.png                   name=blood3                     group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\blood4.png                   name=blood4                     group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\blood5.png                   name=blood5                     group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\bloodstain_003.png           name=bloodstain_003             group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\bloodstain_003b.png          name=bloodstain_003b            group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\bloodstain_101.png           name=bloodstain_101             group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\blueblackflash.png           name=blueblackflash             group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\blueshaft1.png               name=blueshaft1                 group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\d_icons.png                  name=d_icons                    group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\debris_concrete001a.png      name=debris_concrete001a        group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\decalgraffiti031a.png        name=decalgraffiti031a          group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\decalgraffiti036a.png        name=decalgraffiti036a          group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\decalgraffiti061a.png        name=decalgraffiti061a          group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\fire_cloud1.png              name=fire_cloud1                group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\fire_cloud2.png              name=fire_cloud2                group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\flamelet1.png                name=flamelet1                  group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\flamelet2.png                name=flamelet2                  group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\flamelet3.png                name=flamelet3                  group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\flamelet4.png                name=flamelet4                  group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\flamelet5.png                name=flamelet5                  group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\flashlight_border.png        name=flashlight_border          group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\flashlight001.png            name=flashlight001              group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\glow_test01.png              name=glow_test01                group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\hud1.png                     name=hud1                       group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\muzzleflash1.png             name=muzzleflash1               group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\muzzleflash2.png             name=muzzleflash2               group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\muzzleflash3.png             name=muzzleflash3               group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\muzzleflash4.png             name=muzzleflash4               group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\obsolete.png                 name=obsolete                   group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\orangeflare1.png             name=orangeflare1               group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\orangeglow1.png              name=orangeglow1                group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\physcannon_bluecore1b.png    name=physcannon_bluecore1b      group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\physcannon_blueglow.png      name=physcannon_blueglow        group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\physring1.png                name=physring1                  group=hl2_efx		btc=1
#exec texture import file=textures\hl2\efx\redflare.png                 name=redflare                   group=hl2_efx		btc=1
//--------------------------------------------------------------------------------------------------------------------------------------------- hl2, brick
#exec texture import file=textures\hl2\brick\brickfloor001a.png                 name=brickfloor001a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall001a.png                  name=brickwall001a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall003a.png                  name=brickwall003a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall009a.png                  name=brickwall009a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall014a.png                  name=brickwall014a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall014b.png                  name=brickwall014b	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall014c.png                  name=brickwall014c	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall014d.png                  name=brickwall014d	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall014e.png                  name=brickwall014e	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall014f.png                  name=brickwall014f	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall014l.png                  name=brickwall014l	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall017a.png                  name=brickwall017a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall017b.png                  name=brickwall017b	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall020a.png                  name=brickwall020a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall021a.png                  name=brickwall021a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall031a.png                  name=brickwall031a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall031b.png                  name=brickwall031b	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall031d.png                  name=brickwall031d	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall031g.png                  name=brickwall031g	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall032a.png                  name=brickwall032a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall034a.png                  name=brickwall034a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall034b.png                  name=brickwall034b	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall034c.png                  name=brickwall034c	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall034d.png                  name=brickwall034d	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall034e.png                  name=brickwall034e	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall034f.png                  name=brickwall034f	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall037a.png                  name=brickwall037a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall037c.png                  name=brickwall037c	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall037d.png                  name=brickwall037d	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall038c.png                  name=brickwall038c	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall040b.png                  name=brickwall040b	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall040c.png                  name=brickwall040c	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall044a.png                  name=brickwall044a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall045a.png                  name=brickwall045a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall045c.png                  name=brickwall045c	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall045d.png                  name=brickwall045d	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall045f.png                  name=brickwall045f	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall045i.png                  name=brickwall045i	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall045j.png                  name=brickwall045j	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall045k.png                  name=brickwall045k	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall046a.png                  name=brickwall046a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall048a.png                  name=brickwall048a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall048b.png                  name=brickwall048b	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall048c.png                  name=brickwall048c	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall048d.png                  name=brickwall048d	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall048e.png                  name=brickwall048e	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall048f.png                  name=brickwall048f	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall048g.png                  name=brickwall048g	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall048h.png                  name=brickwall048h	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall048i.png                  name=brickwall048i	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall049a.png                  name=brickwall049a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall049b.png                  name=brickwall049b	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall049c.png                  name=brickwall049c	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall049d.png                  name=brickwall049d	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall049e.png                  name=brickwall049e	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall052b.png                  name=brickwall052b	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall052c.png                  name=brickwall052c	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall053a.png                  name=brickwall053a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall053d.png                  name=brickwall053d	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall053e.png                  name=brickwall053e	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall055a.png                  name=brickwall055a	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall055b.png                  name=brickwall055b	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall055d.png                  name=brickwall055d	group=hl2_brick		btc=1
#exec texture import file=textures\hl2\brick\brickwall055e.png                  name=brickwall055e	group=hl2_brick		btc=1
//-------------------------------------------------------------------------------------------------------------------------------------------- hl2 build 1st
#exec texture import file=textures\hl2\build\building_skybridge_template001a.png	name=building_skybridge_template001a	group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_skybridge_template001b.png                   name=building_skybridge_template001b		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_skybridge_template001c.png                   name=building_skybridge_template001c		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template001a.png                             name=building_template001a      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template001b.png                             name=building_template001b      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template001d.png                             name=building_template001d      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template001f.png                             name=building_template001f      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template001h.png                             name=building_template001h      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template001i.png                             name=building_template001i      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template001k.png                             name=building_template001k      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002a.png                             name=building_template002a      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002b.png                             name=building_template002b      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002c.png                             name=building_template002c      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002d.png                             name=building_template002d      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002e.png                             name=building_template002e      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002f.png                             name=building_template002f      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002g.png                             name=building_template002g      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002h.png                             name=building_template002h      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002i.png                             name=building_template002i      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002j.png                             name=building_template002j      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002k.png                             name=building_template002k      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002l.png                             name=building_template002l      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002m.png                             name=building_template002m      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002n.png                             name=building_template002n      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002o.png                             name=building_template002o      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template002p.png                             name=building_template002p      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003a.png                             name=building_template003a      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003b.png                             name=building_template003b      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003c.png                             name=building_template003c      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003d.png                             name=building_template003d      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003e.png                             name=building_template003e      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003g.png                             name=building_template003g      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003h.png                             name=building_template003h      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003i.png                             name=building_template003i      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003j.png                             name=building_template003j      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003k.png                             name=building_template003k      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003l.png                             name=building_template003l      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003n.png                             name=building_template003n      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template003o.png                             name=building_template003o      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template004a.png                             name=building_template004a      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template004b.png                             name=building_template004b      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template004c.png                             name=building_template004c      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template004d.png                             name=building_template004d      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template004e.png                             name=building_template004e      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template004f.png                             name=building_template004f      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template004g.png                             name=building_template004g      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template004h.png                             name=building_template004h      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template004i.png                             name=building_template004i      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005a.png                             name=building_template005a      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005b.png                             name=building_template005b      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005c.png                             name=building_template005c      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005d.png                             name=building_template005d      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005e.png                             name=building_template005e      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005f.png                             name=building_template005f      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005g.png                             name=building_template005g      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005h.png                             name=building_template005h      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005i.png                             name=building_template005i      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005j.png                             name=building_template005j      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template005l.png                             name=building_template005l      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template006a.png                             name=building_template006a      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template006b.png                             name=building_template006b      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template007a.png                             name=building_template007a      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template007b.png                             name=building_template007b      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template007c.png                             name=building_template007c      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template007d.png                             name=building_template007d      		group=hl2_build		btc=1
#exec texture import file=textures\hl2\build\building_template007f.png                             name=building_template007f      		group=hl2_build		btc=1
//-------------------------------------------------------------------------------------------------------------------------------------------- build 2nd half
#exec texture import file=textures\hl2\build\building_template007h.png                             name=building_template007h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template007i.png                             name=building_template007i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template007j.png                             name=building_template007j	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template007l.png                             name=building_template007l	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template007m.png                             name=building_template007m	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template009e.png                             name=building_template009e	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template010a.png                             name=building_template010a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template010b.png                             name=building_template010b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template010c.png                             name=building_template010c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template010g.png                             name=building_template010g	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template010h.png                             name=building_template010h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template010i.png                             name=building_template010i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template011b.png                             name=building_template011b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template011c.png                             name=building_template011c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template011d.png                             name=building_template011d	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template011e.png                             name=building_template011e	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template011f.png                             name=building_template011f	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template011g.png                             name=building_template011g	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template011h.png                             name=building_template011h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template011i.png                             name=building_template011i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template011m.png                             name=building_template011m	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012a.png                             name=building_template012a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012b.png                             name=building_template012b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012c.png                             name=building_template012c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012d.png                             name=building_template012d	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012e.png                             name=building_template012e	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012f.png                             name=building_template012f	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012g.png                             name=building_template012g	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012h.png                             name=building_template012h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012i.png                             name=building_template012i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012j.png                             name=building_template012j	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012k.png                             name=building_template012k	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012l.png                             name=building_template012l	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template012n.png                             name=building_template012n	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013a.png                             name=building_template013a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013b.png                             name=building_template013b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013c.png                             name=building_template013c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013d.png                             name=building_template013d	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013e.png                             name=building_template013e	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013f.png                             name=building_template013f	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013g.png                             name=building_template013g	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013h.png                             name=building_template013h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013j.png                             name=building_template013j	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013k.png                             name=building_template013k	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013l.png                             name=building_template013l	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013m.png                             name=building_template013m	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013n.png                             name=building_template013n	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template013o.png                             name=building_template013o	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014a.png                             name=building_template014a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014b.png                             name=building_template014b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014e.png                             name=building_template014e	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014f.png                             name=building_template014f	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014g.png                             name=building_template014g	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014h.png                             name=building_template014h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014i.png                             name=building_template014i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014j.png                             name=building_template014j	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014k.png                             name=building_template014k	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014l.png                             name=building_template014l	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014n.png                             name=building_template014n	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template014o.png                             name=building_template014o	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template015a.png                             name=building_template015a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template015b.png                             name=building_template015b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template015c.png                             name=building_template015c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template015e.png                             name=building_template015e	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template015f.png                             name=building_template015f	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template015g.png                             name=building_template015g	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template015h.png                             name=building_template015h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template015i.png                             name=building_template015i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template017b.png                             name=building_template017b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template017c.png                             name=building_template017c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template017e.png                             name=building_template017e	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template017j.png                             name=building_template017j	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template017k.png                             name=building_template017k	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template017n.png                             name=building_template017n	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template017o.png                             name=building_template017o	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template019a.png                             name=building_template019a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template019c.png                             name=building_template019c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template019d.png                             name=building_template019d	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template019f.png                             name=building_template019f	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template019h.png                             name=building_template019h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template019k.png                             name=building_template019k	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template020b.png                             name=building_template020b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template020c.png                             name=building_template020c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template020d.png                             name=building_template020d	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template020e.png                             name=building_template020e	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template020g.png                             name=building_template020g	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template020h.png                             name=building_template020h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template021a.png                             name=building_template021a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template021b.png                             name=building_template021b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template021c.png                             name=building_template021c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template021d.png                             name=building_template021d	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template021e.png                             name=building_template021e	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template021f.png                             name=building_template021f	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template021h.png                             name=building_template021h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template021i.png                             name=building_template021i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template021j.png                             name=building_template021j	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022a.png                             name=building_template022a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022b.png                             name=building_template022b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022c.png                             name=building_template022c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022d.png                             name=building_template022d	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022e.png                             name=building_template022e	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022f.png                             name=building_template022f	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022g.png                             name=building_template022g	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022h.png                             name=building_template022h	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022i.png                             name=building_template022i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022j.png                             name=building_template022j	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template022k.png                             name=building_template022k	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template024a.png                             name=building_template024a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template025m.png                             name=building_template025m	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template027a.png                             name=building_template027a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template027b.png                             name=building_template027b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template027c.png                             name=building_template027c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template027i.png                             name=building_template027i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template027k.png                             name=building_template027k	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template027n.png                             name=building_template027n	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template028a.png                             name=building_template028a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template028b.png                             name=building_template028b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template028c.png                             name=building_template028c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template028d.png                             name=building_template028d	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template028f.png                             name=building_template028f	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template028g.png                             name=building_template028g	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template028i.png                             name=building_template028i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template028j.png                             name=building_template028j	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029a.png                             name=building_template029a	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029b.png                             name=building_template029b	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029c.png                             name=building_template029c	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029d.png                             name=building_template029d	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029f.png                             name=building_template029f	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029g.png                             name=building_template029g	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029i.png                             name=building_template029i	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029j.png                             name=building_template029j	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029o.png                             name=building_template029o	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029p.png                             name=building_template029p	group=hl2_build2	btc=1
#exec texture import file=textures\hl2\build\building_template029r.png                             name=building_template029r	group=hl2_build2	btc=1
//---------------------------------------------------------------------------------------------------------------------------------------------- trainstation
#exec texture import file=textures\hl2\build\building_trainstation_template001a.png                name=building_trainstation_template001a		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template001b.png                name=building_trainstation_template001b		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template001c.png                name=building_trainstation_template001c		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template001d.png                name=building_trainstation_template001d		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template001e.png                name=building_trainstation_template001e		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002b.png                name=building_trainstation_template002b		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002c.png                name=building_trainstation_template002c		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002d.png                name=building_trainstation_template002d		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002e.png                name=building_trainstation_template002e		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002f.png                name=building_trainstation_template002f		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002g.png                name=building_trainstation_template002g		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002i.png                name=building_trainstation_template002i		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002j.png                name=building_trainstation_template002j		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002k.png                name=building_trainstation_template002k		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002o.png                name=building_trainstation_template002o		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002p.png                name=building_trainstation_template002p		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002q.png                name=building_trainstation_template002q		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template002r.png                name=building_trainstation_template002r		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template003a.png                name=building_trainstation_template003a		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_template003b.png                name=building_trainstation_template003b		group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_truss_template001a.png          name=building_trainstation_truss_template001a	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_truss_template001b.png          name=building_trainstation_truss_template001b	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_truss_template001c.png          name=building_trainstation_truss_template001c	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_truss_template001d.png          name=building_trainstation_truss_template001d	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_truss_template001e.png          name=building_trainstation_truss_template001e	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_truss_template001f.png          name=building_trainstation_truss_template001f	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_truss_template001g.png          name=building_trainstation_truss_template001g	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_truss_template001h.png          name=building_trainstation_truss_template001h	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_window001a.png                  name=building_trainstation_window001a        	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_window001b.png                  name=building_trainstation_window001b        	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_window002c.png                  name=building_trainstation_window002c        	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_window002d.png                  name=building_trainstation_window002d        	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\building_trainstation_window002e.png                  name=building_trainstation_window002e        	group=hl2_build_train	btc=1
#exec texture import file=textures\hl2\build\courtyard_template001a.png                            name=courtyard_template001a     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template001b.png                            name=courtyard_template001b     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template001c.png                            name=courtyard_template001c     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template001d.png                            name=courtyard_template001d     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template001e.png                            name=courtyard_template001e     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template001f.png                            name=courtyard_template001f     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template001g.png                            name=courtyard_template001g     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template001h.png                            name=courtyard_template001h     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template001i.png                            name=courtyard_template001i     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template002a.png                            name=courtyard_template002a     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template002b.png                            name=courtyard_template002b     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template002c.png                            name=courtyard_template002c     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template002d.png                            name=courtyard_template002d     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template002e.png                            name=courtyard_template002e     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template002f.png                            name=courtyard_template002f     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template002g.png                            name=courtyard_template002g     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template002j.png                            name=courtyard_template002j     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template002k.png                            name=courtyard_template002k     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template003b.png                            name=courtyard_template003b     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template003c.png                            name=courtyard_template003c     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template003d.png                            name=courtyard_template003d     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template003f.png                            name=courtyard_template003f     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template005a.png                            name=courtyard_template005a     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template005b.png                            name=courtyard_template005b     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template005c.png                            name=courtyard_template005c     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template005f.png                            name=courtyard_template005f     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template005g.png                            name=courtyard_template005g     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template005h.png                            name=courtyard_template005h     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template005i.png                            name=courtyard_template005i     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template006a.png                            name=courtyard_template006a     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template006b.png                            name=courtyard_template006b     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template006d.png                            name=courtyard_template006d     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template006e.png                            name=courtyard_template006e     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template006h.png                            name=courtyard_template006h     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template006i.png                            name=courtyard_template006i     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\courtyard_template006k.png                            name=courtyard_template006k     		group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\roof_template001a.png                                 name=roof_template001a      			group=hl2_build3	btc=1
#exec texture import file=textures\hl2\build\roof_template001b.png                                 name=roof_template001b      			group=hl2_build3	btc=1
//--------------------------------------------------------------------------------------------------------------------------------------------- hl2, concrete
#exec texture import file=textures\hl2\concrete\concreteceiling001a.png		name=concreteceiling0001a	group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concreteceiling002a.png         name=concreteceiling0002a       group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concreteceiling003a.png         name=concreteceiling0003a       group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concreteceiling004a.png         name=concreteceiling0004a       group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor001a.png           name=concretefloor001a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor002a.png           name=concretefloor002a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor002b.png           name=concretefloor002b          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor003c.png           name=concretefloor003c          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor005a.png           name=concretefloor005a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor006a.png           name=concretefloor006a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor007a.png           name=concretefloor007a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor008a.png           name=concretefloor008a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor008b.png           name=concretefloor008b          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor009a.png           name=concretefloor009a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor010a.png           name=concretefloor010a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor010b.png           name=concretefloor010b          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor011a.png           name=concretefloor011a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor012a.png           name=concretefloor012a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor013a.png           name=concretefloor013a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor013b.png           name=concretefloor013b          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor013c.png           name=concretefloor013c          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor014a.png           name=concretefloor014a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor015a.png           name=concretefloor015a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor016a.png           name=concretefloor016a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor018a.png           name=concretefloor018a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor019a.png           name=concretefloor019a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor020a.png           name=concretefloor020a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor020b.png           name=concretefloor020b          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor022a.png           name=concretefloor022a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor023a.png           name=concretefloor023a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor024a.png           name=concretefloor024a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor025a.png           name=concretefloor025a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor026a.png           name=concretefloor026a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor027a.png           name=concretefloor027a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor027b.png           name=concretefloor027b          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor028a.png           name=concretefloor028a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor028c.png           name=concretefloor028c          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor028d.png           name=concretefloor028d          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor030a.png           name=concretefloor030a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor031a.png           name=concretefloor031a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor032a.png           name=concretefloor032a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor033a.png           name=concretefloor033a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor033b.png           name=concretefloor033b          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor033c.png           name=concretefloor033c          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor033k.png           name=concretefloor033k          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor033o.png           name=concretefloor033o          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor033p.png           name=concretefloor033p          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor033q.png           name=concretefloor033q          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor033y.png           name=concretefloor033y          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor034a.png           name=concretefloor034a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor036a.png           name=concretefloor036a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor037a.png           name=concretefloor037a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor037b.png           name=concretefloor037b          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor038a.png           name=concretefloor038a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor038b.png           name=concretefloor038b          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor039a.png           name=concretefloor039a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretefloor039b.png           name=concretefloor039b          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretestair001a.png           name=concretestair001a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretestair002a.png           name=concretestair002a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretestair003a.png           name=concretestair003a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretestair004a.png           name=concretestair004a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretestair005a.png           name=concretestair005a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretestair006a.png           name=concretestair006a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretestair007a.png           name=concretestair007a          group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretetrim001a.png            name=concretetrim001a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall001a.png            name=concretewall001a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall001c.png            name=concretewall001c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall002a.png            name=concretewall002a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall002b.png            name=concretewall002b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall002c.png            name=concretewall002c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall003a.png            name=concretewall003a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall004a.png            name=concretewall004a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall004b.png            name=concretewall004b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall004c.png            name=concretewall004c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall005a.png            name=concretewall005a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall006a.png            name=concretewall006a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall007a.png            name=concretewall007a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall007b.png            name=concretewall007b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall007d.png            name=concretewall007d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall007f.png            name=concretewall007f           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall008a.png            name=concretewall008a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall008b.png            name=concretewall008b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall008c.png            name=concretewall008c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall009a.png            name=concretewall009a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall010a.png            name=concretewall010a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall010b.png            name=concretewall010b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall010c.png            name=concretewall010c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall013a.png            name=concretewall013a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall013b.png            name=concretewall013b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall013d.png            name=concretewall013d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall013f.png            name=concretewall013f           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall013g.png            name=concretewall013g           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall013h.png            name=concretewall013h           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall013m.png            name=concretewall013m           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall015a.png            name=concretewall015a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall015b.png            name=concretewall015b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall015c.png            name=concretewall015c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall015d.png            name=concretewall015d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall015e.png            name=concretewall015e           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall016c.png            name=concretewall016c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall018a.png            name=concretewall018a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall019a.png            name=concretewall019a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall020a.png            name=concretewall020a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall021b.png            name=concretewall021b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall021c.png            name=concretewall021c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall022a.png            name=concretewall022a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall022b.png            name=concretewall022b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall023a.png            name=concretewall023a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall023b.png            name=concretewall023b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall023c.png            name=concretewall023c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall023d.png            name=concretewall023d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall024a.png            name=concretewall024a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall025a.png            name=concretewall025a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026a.png            name=concretewall026a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026b.png            name=concretewall026b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026c.png            name=concretewall026c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026d.png            name=concretewall026d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026e.png            name=concretewall026e           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026f.png            name=concretewall026f           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026g.png            name=concretewall026g           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026h.png            name=concretewall026h           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026i.png            name=concretewall026i           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026j.png            name=concretewall026j           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall026l.png            name=concretewall026l           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall028a.png            name=concretewall028a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall029a.png            name=concretewall029a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall032a.png            name=concretewall032a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall032b.png            name=concretewall032b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall032c.png            name=concretewall032c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall032d.png            name=concretewall032d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall034a.png            name=concretewall034a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall036a.png            name=concretewall036a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall037a.png            name=concretewall037a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall037b.png            name=concretewall037b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall037c.png            name=concretewall037c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall037d.png            name=concretewall037d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall038d.png            name=concretewall038d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall039a.png            name=concretewall039a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall040a.png            name=concretewall040a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall040d.png            name=concretewall040d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall041a.png            name=concretewall041a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall041b.png            name=concretewall041b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall041c.png            name=concretewall041c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall041d.png            name=concretewall041d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall041e.png            name=concretewall041e           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall041f.png            name=concretewall041f           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall041g.png            name=concretewall041g           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall043a.png            name=concretewall043a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall044b.png            name=concretewall044b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall046c.png            name=concretewall046c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall046d.png            name=concretewall046d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall046e.png            name=concretewall046e           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall046g.png            name=concretewall046g           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall046h.png            name=concretewall046h           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall046i.png            name=concretewall046i           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall046j.png            name=concretewall046j           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall047a.png            name=concretewall047a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall047c.png            name=concretewall047c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall049b.png            name=concretewall049b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall051a.png            name=concretewall051a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall052a.png            name=concretewall052a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall053a.png            name=concretewall053a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall054a.png            name=concretewall054a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall055b.png            name=concretewall055b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall055c.png            name=concretewall055c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall058a.png            name=concretewall058a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall059a.png            name=concretewall059a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall059b.png            name=concretewall059b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall059c.png            name=concretewall059c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall059d.png            name=concretewall059d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall059e.png            name=concretewall059e           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall059f.png            name=concretewall059f           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall060c.png            name=concretewall060c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall060f.png            name=concretewall060f           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall061a.png            name=concretewall061a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall061b.png            name=concretewall061b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall062a.png            name=concretewall062a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall063a.png            name=concretewall063a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall064a.png            name=concretewall064a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall064b.png            name=concretewall064b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall064c.png            name=concretewall064c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall064d.png            name=concretewall064d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall065a.png            name=concretewall065a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall065b.png            name=concretewall065b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall065c.png            name=concretewall065c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall066a.png            name=concretewall066a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall070a.png            name=concretewall070a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall071a.png            name=concretewall071a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall071b.png            name=concretewall071b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall071c.png            name=concretewall071c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall071d.png            name=concretewall071d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall071e.png            name=concretewall071e           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall071f.png            name=concretewall071f           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall072a.png            name=concretewall072a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall073a.png            name=concretewall073a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall073b.png            name=concretewall073b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall073c.png            name=concretewall073c           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall073d.png            name=concretewall073d           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall074a.png            name=concretewall074a           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall074b.png            name=concretewall074b           group=hl2_concrete	btc=1
#exec texture import file=textures\hl2\concrete\concretewall074c.png            name=concretewall074c           group=hl2_concrete	btc=1
//--------------------------------------------------------------------------------------------------------------------------------------------- hl2, deco
#exec texture import file=textures\hl2\deco\acousticceiling002a.png		name=acousticceiling002a		group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\carpetfloor001a.png                 name=carpetfloor001a                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\carpetfloor003a.png                 name=carpetfloor003a                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\carpetfloor004a.png                 name=carpetfloor004a                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\carpetfloor006a.png                 name=carpetfloor006a                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\carpetfloor007a.png                 name=carpetfloor007a                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\carpetfloor008a.png                 name=carpetfloor008a                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalcrate001a.png                  name=metalcrate001a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalcrate001b.png                  name=metalcrate001b                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalcrate001c.png                  name=metalcrate001c                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalcrate001d.png                  name=metalcrate001d                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalcrate002a.png                  name=metalcrate002a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalcrate002b.png                  name=metalcrate002b                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalcrate002c.png                  name=metalcrate002c                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalcrate002d.png                  name=metalcrate002d                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalcrate009a.png                  name=metalcrate009a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalduct001a.png                   name=metalduct001a                      group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalduct003a.png                   name=metalduct003a                      group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalduct004a.png                   name=metalduct004a                      group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalfan001a.png                    name=metalfan001a                       group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalfreezerstainless01a.png        name=metalfreezerstainless01a           group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalfridge001a.png                 name=metalfridge001a                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metallockers003a.png                name=metallockers003a                   group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metallockers003b.png                name=metallockers003b                   group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metallockers004a.png                name=metallockers004a                   group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metallockers005a.png                name=metallockers005a                   group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalpanel009a.png                  name=metalpanel009a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalpanel010a.png                  name=metalpanel010a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalpanel011a.png                  name=metalpanel011a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalpanel013b.png                  name=metalpanel013b                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalpanel014a.png                  name=metalpanel014a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalpanel016a.png                  name=metalpanel016a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalpanel016b.png                  name=metalpanel016b                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalpanel017a.png                  name=metalpanel017a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\metalpanel020a.png                  name=metalpanel020a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\papermap002a.png                    name=papermap002a                       group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\papermap003a.png                    name=papermap003a                       group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\paperposter008a.png                 name=paperposter008a                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\plasticceiling001a.png              name=plasticceiling001a                 group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\plasticceiling002a.png              name=plasticceiling002a                 group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\plasticceiling003a.png              name=plasticceiling003a                 group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\rubberfloor004a.png                 name=rubberfloor004a                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\rubberroof001a.png                  name=rubberroof001a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\rubberroof002a.png                  name=rubberroof002a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\signbillboard002a.png               name=signbillboard002a                  group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\signcaution002a.png                 name=signcaution002a                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\signcaution002b.png                 name=signcaution002b                    group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\signstreet001a.png                  name=signstreet001a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\signstreet004a.png                  name=signstreet004a                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\signstreet006b.png                  name=signstreet006b                     group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\tarpaperroof002a.png                name=tarpaperroof002a                   group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\woodcrate003a.png                   name=woodcrate003a                      group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\woodcrate003b.png                   name=woodcrate003b                      group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\woodcrate003d.png                   name=woodcrate003d                      group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\woodcrate004a.png                   name=woodcrate004a                      group=hl2_deco	btc=1
#exec texture import file=textures\hl2\deco\woodcrate004b.png                   name=woodcrate004b                      group=hl2_deco	btc=1
//--------------------------------------------------------------------------------------------------------------------------------------------- hl2, extras
#exec texture import file=textures\hl2\extras\stonefloor006a.png		name=stonefloor006a		group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonefloor006b.png        	name=stonefloor006b             group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonefloor006c.png        	name=stonefloor006c             group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonefloor006d.png        	name=stonefloor006d             group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonefloor006e.png        	name=stonefloor006e             group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonefloor006f.png        	name=stonefloor006f             group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonefloor006h.png        	name=stonefloor006h             group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonefloor011a.png        	name=stonefloor011a		group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall002a.png         	name=stonewall002a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall004a.png         	name=stonewall004a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall005a.png         	name=stonewall005a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall006a.png         	name=stonewall006a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall006b.png         	name=stonewall006b		group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall013a.png         	name=stonewall013a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall016a.png         	name=stonewall016a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall016b.png         	name=stonewall016b              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall017a.png         	name=stonewall017a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall017b.png         	name=stonewall017b              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall017c.png         	name=stonewall017c              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall021h.png         	name=stonewall021h              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall022a.png         	name=stonewall022a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall022b.png         	name=stonewall022b              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall024a.png         	name=stonewall024a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall025a.png         	name=stonewall025a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall025c.png         	name=stonewall025c              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall029a.png         	name=stonewall029a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall029c.png         	name=stonewall029c              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall032a.png         	name=stonewall032a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall033f.png         	name=stonewall033f              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall036b.png         	name=stonewall036b              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall040f.png         	name=stonewall040f              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall044a.png         	name=stonewall044a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall044b.png         	name=stonewall044b              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall044c.png         	name=stonewall044c              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050a.png         	name=stonewall050a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050b.png         	name=stonewall050b              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050c.png         	name=stonewall050c              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050d.png         	name=stonewall050d              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050e.png         	name=stonewall050e              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050f.png         	name=stonewall050f              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050g.png         	name=stonewall050g              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050h.png         	name=stonewall050h              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050i.png         	name=stonewall050i              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050j.png         	name=stonewall050j              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall050k.png         	name=stonewall050k              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall051a.png         	name=stonewall051a              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall051b.png         	name=stonewall051b              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\stonewall051c.png         	name=stonewall051c              group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\storefront_template001a.png  	name=storefront_template001a    group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\storefront_template001b.png  	name=storefront_template001b    group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\storefront_template001c.png  	name=storefront_template001c    group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\storefront_template001d.png  	name=storefront_template001d    group=hl2_extras	btc=1
#exec texture import file=textures\hl2\extras\storefront_template001g.png  	name=storefront_template001g    group=hl2_extras	btc=1
//--------------------------------------------------------------------------------------------------------------------------------------------- hl2, metal
#exec texture import file=textures\hl2\metal\citadel_metalwall063a.png 		name=cit_mtlwl063a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\citadel_metalwall072a.png 		name=cit_mtlwl072a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\citadel_metalwall072b.png 		name=cit_mtlwl072b		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\citadel_metalwall072c.png 		name=cit_mtlwl072c		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\citadel_metalwall077a.png 		name=cit_mtlwl077a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\citadel_metalwall078a.png 		name=cit_mtlwl078a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\citadel_metalwall090a.png 		name=cit_mtlwl090a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\citadel_metalwall091a.png 		name=cit_mtlwl091a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\citadel_metalwall101a.png 		name=cit_mtlwl101a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\citadel_metalwall101b.png 		name=cit_mtlwl101b		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalarch004b.png         		name=metalarch004b		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalbar001a.png          		name=metalbar0001a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalbar001c.png          		name=metalbar0001c		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalceiling005a.png      		name=metalceil005a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalceiling010a.png      		name=metalceil010a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalcombine001.png       		name=metalcombine1		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalcombine002.png       		name=metalcombine2		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalcombinegrate001a.png 		name=metalcmbgrate		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor001a.png         		name=metaldoor001a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor002a.png         		name=metaldoor002a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor003a.png         		name=metaldoor003a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor004a.png         		name=metaldoor004a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor005a.png         		name=metaldoor005a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor006a.png         		name=metaldoor006a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor007a.png         		name=metaldoor007a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor008a.png         		name=metaldoor008a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor009a.png         		name=metaldoor009a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor010a.png         		name=metaldoor010a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor011a.png         		name=metaldoor011a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor013a.png         		name=metaldoor013a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor016a.png         		name=metaldoor016a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor018a.png         		name=metaldoor018a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor028a.png         		name=metaldoor028a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor028b.png         		name=metaldoor028b		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor029a.png         		name=metaldoor029a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor030a.png         		name=metaldoor030a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor032a.png         		name=metaldoor032a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor032b.png         		name=metaldoor032b		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor032c.png         		name=metaldoor032c		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor033a.png         		name=metaldoor033a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor034a.png         		name=metaldoor034a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor035a.png         		name=metaldoor035a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor037a.png         		name=metaldoor037a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor039a.png         		name=metaldoor039a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor041a.png         		name=metaldoor041a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor042a.png         		name=metaldoor042a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor042b.png         		name=metaldoor042b		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor043a.png         		name=metaldoor043a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor044a.png         		name=metaldoor044a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor045a.png         		name=metaldoor045a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor046a.png         		name=metaldoor046a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor052a.png         		name=metaldoor052a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor053a.png         		name=metaldoor053a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor055a.png         		name=metaldoor055a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor059a.png         		name=metaldoor059a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor061a.png         		name=metaldoor061a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor063a.png         		name=metaldoor063a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metaldoor066a.png         		name=metaldoor066a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfence001a.png        		name=metalfence01a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfence003a.png        		name=metalfence03a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfence004a.png        		name=metalfence04a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfence005a.png        		name=metalfence05a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfence007a.png        		name=metalfence07a		group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfireescape002a.png   		name=metalfireescp              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfloor001a.png        		name=metalfloor01a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfloor001b.png        		name=metalfloor01b              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfloor002a.png        		name=metalfloor02a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfloor003a.png        		name=metalfloor03a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfloor005a.png        		name=metalfloor05a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfloor006a.png        		name=metalfloor06a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfloor007a.png        		name=metalfloor07a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfloor008a.png        		name=metalfloor08a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalfloor010a.png        		name=metalfloor10a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgate001a.png         		name=metalgate001a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgate002a.png         		name=metalgate002a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgate004a.png         		name=metalgate004a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgate005a.png         		name=metalgate005a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgate006a.png         		name=metalgate006a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgrate001a.png        		name=metalgrate01a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgrate002a.png        		name=metalgrate02a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgrate008a.png        		name=metalgrate08a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgrate011a.png        		name=metalgrate11a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgrate013a.png        		name=metalgrate13a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgrate013b.png        		name=metalgrate13b              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgrate014a.png        		name=metalgrate14a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgrate016a.png        		name=metalgrate16a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalgrate017a.png        		name=metalgrate17a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalhull002a.png         		name=metalhull002a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalhull003a.png         		name=metalhull003a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalhull005a.png         		name=metalhull005a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalhull010b.png         		name=metalhull010b              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalhull010c.png         		name=metalhull010c              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalhull011f.png         		name=metalhull011f              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalhull013a.png         		name=metalhull013a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalladder001a.png       		name=metalladder00              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipe001a.png         		name=metalpipe001a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipe002a.png         		name=metalpipe002a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipe003a.png         		name=metalpipe003a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipe005a.png         		name=metalpipe005a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipe006a.png         		name=metalpipe006a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipe007a.png         		name=metalpipe007a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipe008a.png         		name=metalpipe008a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipe009a.png         		name=metalpipe009a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipe009b.png         		name=metalpipe009b              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipe010a.png         		name=metalpipe010a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalpipeendcap001a.png   		name=metalpipeendd              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail001a.png         		name=metalrail001a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail002a.png         		name=metalrail002a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail003a.png         		name=metalrail003a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail003b.png         		name=metalrail003b              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail004a.png         		name=metalrail004a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail004b.png         		name=metalrail004b              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail005a.png         		name=metalrail005a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail006a.png         		name=metalrail006a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail009a.png         		name=metalrail009a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail012c.png         		name=metalrail012c              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail013a.png         		name=metalrail013a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail013b.png         		name=metalrail013b              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalrail013c.png         		name=metalrail013c              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalroof002a.png         		name=metalroof002a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalroof003a.png         		name=metalroof003a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalroof004a.png         		name=metalroof004a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalroof005a.png         		name=metalroof005a              group=hl2_metals	btc=1
#exec texture import file=textures\hl2\metal\metalroof006a.png			name=metalroof006a              group=hl2_metals	btc=1
//--------------------------------------------------------------------------------------------------------------------------------------------hl2 glass
#exec texture import file=textures\hl2\glass\combineglass001a.png                  name=combineglass001a           group=hl2_glass	btc=1
#exec texture import file=textures\hl2\glass\glasswindow001b.png                   name=glasswindow001b            group=hl2_glass	btc=1
#exec texture import file=textures\hl2\glass\glasswindow002a.png                   name=glasswindow002a            group=hl2_glass	btc=1
#exec texture import file=textures\hl2\glass\glasswindow002c.png                   name=glasswindow002c            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow002d.png                   name=glasswindow002d            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow002e.png                   name=glasswindow002e            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow005a.png                   name=glasswindow005a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow005b.png                   name=glasswindow005b            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow005c.png                   name=glasswindow005c            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow006b.png                   name=glasswindow006b            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow007a.png                   name=glasswindow007a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow008a.png                   name=glasswindow008a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow008d.png                   name=glasswindow008d            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow009a.png                   name=glasswindow009a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow010a.png                   name=glasswindow010a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow010b.png                   name=glasswindow010b            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow010c.png                   name=glasswindow010c            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow011a.png                   name=glasswindow011a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow014a.png                   name=glasswindow014a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow015a.png                   name=glasswindow015a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow015b.png                   name=glasswindow015b            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow017a.png                   name=glasswindow017a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow018a.png                   name=glasswindow018a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow020a.png                   name=glasswindow020a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow026a.png                   name=glasswindow026a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow028d.png                   name=glasswindow028d            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow029a.png                   name=glasswindow029a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow029c.png                   name=glasswindow029c            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow031b.png                   name=glasswindow031b            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow032a.png                   name=glasswindow032a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow037a.png                   name=glasswindow037a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow037c.png                   name=glasswindow037c            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow041a.png                   name=glasswindow041a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow041b.png                   name=glasswindow041b            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow041c.png                   name=glasswindow041c            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow042a.png                   name=glasswindow042a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow043a.png                   name=glasswindow043a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow044a.png                   name=glasswindow044a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow044b.png                   name=glasswindow044b            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow045a.png                   name=glasswindow045a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow048a.png                   name=glasswindow048a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow055a.png                   name=glasswindow055a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow069a.png                   name=glasswindow069a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow070a.png                   name=glasswindow070a            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindow070c.png                   name=glasswindow070c            group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindowbreak070a.png              name=glasswindowbreak070a       group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\glasswindowbreak070b.png              name=glasswindowbreak070b       group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\reflectiveglass002.png                name=reflectiveglass002         group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\reflectiveglass002i.png               name=reflectivemodulated        group=hl2_glass      btc=1
#exec texture import file=textures\hl2\glass\reflectiveglass003.png                name=reflectiveglass003         group=hl2_glass      btc=1
//--------------------------------------------------------------------------------------------------------------------------------------------w2 texture test
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\brickwall_01a.png" NAME="01a" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\fabric_green_thick_01a.png" NAME="05f" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\brickwall_02a.png" NAME="01b" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\brickwall_02ca.png" NAME="01c" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\brickwall_07a.png" NAME="01d" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\brickwall_09a.png" NAME="01e" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\brickwall_13a.png" NAME="01f" GROUP="w2reduced" 				FLAGS=0 btc=1  
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\brickwall_13_wood_frame_01a.png" NAME="02a" GROUP="w2reduced" 		FLAGS=0 btc=1 
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\bunker_steel_grating_1aa.png" NAME="02b" GROUP="w2reduced" 		FLAGS=0 btc=1 
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\carpet_black_01a.png" NAME="02c" GROUP="w2reduced" 			FLAGS=0 btc=1 
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\carpet_burgundy_01a.png" NAME="02d" GROUP="w2reduced" 			FLAGS=0 btc=1 
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\carpet_red_01a.png" NAME="02f" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_03a.png" NAME="03a" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_05a.png" NAME="03b" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_12a.png" NAME="03c" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_floor_painted_02ca.png" NAME="03d" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_plaster_01a.png" NAME="03e" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_plaster_08a.png" NAME="03f" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_plaster_12a.png" NAME="04a" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_trim_02a.png" NAME="04b" GROUP="w2reduced" 			FLAGS=0 btc=1                                                                                 
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_trim_06ba.png" NAME="04c" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_trim_09b_2a.png" NAME="04d" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\concrete_wall_02ba.png" NAME="04e" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\courthouse_carpet_reda.png" NAME="04f" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\courthouse_trim_04_marblea.png" NAME="05a" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\debris_01_neworleansa.png" NAME="05b" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\diamond_plate_floor_01a.png" NAME="05c" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\dirty_wood_floor_02a.png" NAME="05d" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\domestic_debris_01a.png" NAME="05e" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\floortiles_03da.png" NAME="06a" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\hazard_stripes_polished_concretea.png" NAME="06b" GROUP="w2reduced" 	FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\lightgrey_plastica.png" NAME="06c" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\limestone_wall_01a.png" NAME="06d" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\manhattan_concrete_wall_01a.png" NAME="06e" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\marble_blacka.png" NAME="06f" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\metal_floor_diamond_tile_01a.png" NAME="07a" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\metal_grating_panels_02a.png" NAME="07b" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\metal_vents_01a.png" NAME="07c" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\mg_thickpaint_chippeda.png" NAME="07d" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\mg_thickpaint_yellowa.png" NAME="07e" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\painted_cealing_pannel_01a.png" NAME="07f" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\painted_cealing_pannel_01ba.png" NAME="08a" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\painted_ceiling_paneling_01a.png" NAME="08b" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\painted_industriala.png" NAME="08c" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\painted_metalpainteddirty_whitea.png" NAME="08d" GROUP="w2reduced" 	FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\painted_metalpaintedwhitea.png" NAME="08e" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\painted_mg_metal_painted_yellowa.png" NAME="08f" GROUP="w2reduced" 	FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\painted_painted_bolted_metala.png" NAME="09a" GROUP="w2reduced" 		FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\painted_steelcar_interiorpannel_03ba.png" NAME="09b" GROUP="w2reduced" 	FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\painted_streetcar_interiorpannel_03a.png" NAME="09c" GROUP="w2reduced" 	FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\paint_thick_navya.png" NAME="09d" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\paint_thick_reda.png" NAME="09e" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\panel_ceiling_01a.png" NAME="09f" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\rusted_metal_02a.png" NAME="10a" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\section_f_paint_rusta.png" NAME="10b" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\section_f_pipesa.png" NAME="10c" GROUP="w2reduced" 			FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\w2reduced\steel_brushed_02a.png" NAME="10d" GROUP="w2reduced" 			FLAGS=0 btc=1
//sky texture test, this was loaded into w2reduced because i'm an idiot. good luck changing this without breaking maps :)               
#exec TEXTURE IMPORT FILE="..\april\textures\sky_night01\sky_bk0001.png" NAME="10e" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\sky_night01\sky_dn0001.png" NAME="10f" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\sky_night01\sky_ft0001.png" NAME="11a" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\sky_night01\sky_lf0001.png" NAME="11b" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\sky_night01\sky_rt0001.png" NAME="11c" GROUP="w2reduced" 				FLAGS=0 btc=1
#exec TEXTURE IMPORT FILE="..\april\textures\sky_night01\sky_up0001.png" NAME="11d" GROUP="w2reduced" 				FLAGS=0 btc=1
//others:
//#exec obj load file="..\april\textures\sky_night01\sky_up0001.png" NAME="11d" GROUP="w2reduced" MIPS=1 FLAGS=0 BTC=3
//todo test embed:
//#exec obj load file="..\textures\ninetyportedtex.utx" package="april"
///#exec obj load file="..\april\textures\precompiled\april_core.utx"
///#exec obj load file="..\april\textures\precompiled\april_city.utx"
///#exec obj load file="..\april\textures\precompiled\april_core.utx"
defaultproperties
{
}