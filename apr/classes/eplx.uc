/** 	if you plan to add or change an actor,
	order packages in this exact order:
	1	EditPackages=april
	2	EditPackages=aprlc
	3	EditPackages=aprngc
	4	EditPackages=aprng		
	5	EditPackages=apr              */
// empty applayer with some overridden controls. an app layer for ap player.... GET IT?
class eplx expands aprlplayerpawn;// obsolete: use aprlplayerpawn instead 	
/// ------------------------------------------------------------------------------------------------------------------------------------------------------------
/// fixed res images of varying quality, in-editor use
///------------------------------------------------------------------------------------------------------------------------------------------------------------
#exec texture import file="textures/fucker/ue5actor.png"	name="ue5bird"	group="fixedres" btc=1
#exec texture import file="textures/fucker/un_cli.png"         	name="climate"  group="fixedres" btc=1
#exec texture import file="textures/fucker/un_en.png"          	name="energy"   group="fixedres" btc=1
#exec texture import file="textures/fucker/un_hl.png"         	name="health"   group="fixedres" btc=1
#exec texture import file="textures/fucker/un_js.png"          	name="justice"  group="fixedres" btc=1
///#exec texture import file="textures/unhinged.png"         	name="aaTitle"  group="fixedres" btc=1 broken
/// ---------------------------------------------------------------------------------------------------------------------------------------------------
/// vfx 
#exec texture import file="textures/fucker/bluepixel.png"		name="bluepixel"	group="aprfx"	btc=1            
#exec texture import file="textures/fucker/ff1.png"             	name="ff1"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff2.png"             	name="ff2"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff3.png"             	name="ff3"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff4.png"             	name="ff4"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff6.png"             	name="ff6"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff7.png"             	name="ff7"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff8.png"             	name="ff8"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff9.png"             	name="ff9"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff9a.png"            	name="ffa"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff9b.png"            	name="ffb"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff9c.png"            	name="ffc"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff9d.png"            	name="ffd"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff9e.png"            	name="ffe"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff9f.png"            	name="fff"		group="aprfx"   btc=1
#exec texture import file="textures/fucker/ff9g.png"            	name="ffg"		group="aprfx"   btc=1
///------------------------------------------------------------------------------------------------------------------------------------------------------------
        struct loope {	var int i, j;                                
        		cpptext{
        				for(i==0;i>255;i++){
        					if (i>int(i-1)) {j=i; }
        				/// 	a for loop that isn't a for loop?
        					else if ((j>0) && (j<255) ) j=i;
        					}
        			}///endcpptext
        		};
        var aprlplayerpawn test;
        var loope loop;
///------------------------------------------------------------------------------------------------------------------------------------------------------------
///		event KillCredit( Actor Other );
///		event Actor SpecialHandling(Pawn Other);
	/**
		function prebeginplay(){}
		function postbeginplay(){
		local pawn p;
	///	local int i;
		p=test;
			if (level.DefaultGameType!=class'aprng.ng') {
				log(level.DefaultGameType);
				}/// test check if gametype don't fit
		SetTimer(0.001,false,'setdefaults'); /// injurednali.uc
        */
        /*
		SetTimer(0.001,false,'setdefaults'); /// injurednali.uc
		SetTimer(0.001,false,'setdefaults'); /// injurednali.uc
		SetTimer(0.001,false,'setdefaults'); /// injurednali.uc
		SetTimer(0.001,false,'setdefaults'); /// injurednali.uc
		SetTimer(0.001,false,'setdefaults'); /// injurednali.uc
		SetTimer(0.001,false,'setdefaults'); /// injurednali.uc
		SetTimer(0.001,false,'setdefaults'); /// injurednali.uc
	*/
	///	StartTimer(1,true);
	///	}
	
	function setdefaults(){}
	///function timer(){
	///if (timercounter>0.001) loopstatus(i);
	///}
 
	///function int loopstatus(int i){
	///local int k;
	///k=i;
	///k=loop.j; log("k: "$k$" j:"$loop.j);
	///return i;
	///}