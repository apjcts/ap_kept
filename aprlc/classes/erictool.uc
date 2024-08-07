class erictool expands aprwpnbase;
// debug tool
// apply randomized effects onto the player depending on dice roll
// dice roll -> frand -> log a value from rand
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var pawn px;
var apmatrix 	apax, apbx, apcx;
var stitches 	pfire, afire;
var pointers 	horizontal, vertical;
var indices	keydata, tempstat;
var vecs	pv;
var counters	fired;
var actor	lnk;
var float storedcount, margin;
var vector emptyvec, emplemon;

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	function playselect(){ 			//assign defaults on playselect, shithack but i don't see much reason for creating other weapons rn
		local playerpawn px;
		lnk=none; 
		px=playerpawn(owner);	
		apax.range1=0.15;	
		apbx.range1=0.45;	
		apcx.range1=0.75;
		//stop getting stuck in this item, please.
		//if(px.pendingweapon!=none) tweendown();
		}

function OwnerJumped(){		
		local int counter;
		local playerpawn px;
		counter++; 
		if (px.physics!=phys_falling) counter--;
		if ((px.physics!=phys_walking)&&(px.physics!=phys_swimming))SetTimer(0.65,false);
		log(TimerCounter);
		log(counter);
	        }
	function timer(){
        	local bool ena, ena2;
        	local byte amt;
		local pawn p;
		p=playerpawn(owner);
		if ((timercounter>0.001)&&(p.physics!=phys_walking)){
			amt++;
			log("ena1a"$ena$"  ena1b"$ena2);
			///if(amt==1) ena=true;
			///if (ena2==true) JumpEnhance(ena,amt);
			if ((p.physics!=phys_swimming)&&(p.physics==phys_falling)&&(p.physics!=phys_walking)){
				//if(amt>3) ena=false;
				///ena=true;
				///fallprotect(ena, ena2);
				///JumpEnhance(ena,amt*10);
				FallProtect(ena,ena2);
				///log("ena2a: "$ena$"  ena2b: "$ena2);
				}			
			if (TimerCounter>0.0015) amt+=2; ena=true; ena2=false;
			if ((timercounter>=0.005)&&(p.physics==phys_falling)){ 
///					if ((ena==false)&& (ena2==false))
					log("ena3a: "$ena$"  ena3b: "$ena2);		
				}///0.005
			if ((timercounter>=0.006)||(p.physics==phys_swimming) ) ena=false;ena2=false; ///ena=false; ena2=false;		
			if ((timercounter>=0.009))  FallProtect(ena2,ena);
		}///>0.001
}///timer

/*			if (p.physics!=phys_walking){
					amt++;
					ena=false;
					if ( (p.physics!=phys_walking) && (p.physics==phys_falling) || (p.velocity.z>0) ){ 
					//amt=0;
					//ena=false;
					//log(ena);
					//log(amt);
					//FallProtect();
					JumpEnhance(ena,amt);
					//amt++;
					}
		//JumpEnhance(ena,amt);
			if (amt>1){
					if ( (amt<4) &&(p.physics==phys_walking) && (p.physics!=phys_swimming)){
					ena=false;
					amt=0;
					//JumpEnhance(ena,amt);	
			        	log(ena);
			        	log(amt);
			        	}
				if ( (amt<3) &&(p.physics!=phys_walking) && (p.physics!=phys_swimming)){
					//JumpEnhance(ena,amt);	
			        	FallProtect();
					if ( (ena==true) && (amt>4) && (p.physics==phys_walking) || (p.physics==phys_swimming) ) {
						ena=false;
			        		amt=0;
			        		}
					amt+=1;  
					ena=true;
			        }///amt<3
			}///amt>1	
		}///amt>0
	}///amt==0
*/
	
	
	
	function tick(float i){
	///	local pawn p;
		local playerpawn px;
		local string dda;
		local bool aprjj;
		local int ifx;
        ///	local float e; // clampe leftover
		ifx=int(i)/int(clampe(i) );
		px=playerpawn(owner);	
		if ( (px.bfire!=0) &&	(px.physics!=phys_walking) || (px.physics!=phys_swimming)) {}
		dda=string(aprjj);
	}

	function float clampe(float e){
		e+=0.0000;	/// yeah
		if (e>0.9999) return int(e); 
		}

	function EricToolResetStrings(){        
		tempstat.str1="m1";	
		tempstat.str2="m2";	
		tempstat.str3="both";	
		tempstat.str4="none";
		keydata.str1="off";	
		keydata.str2="off";	
		keydata.str3="off";	
		keydata.str4="off";
		}
/// 
/// 
/// 
/// 
/// 
/// 
/// 

	function FALLPROTECT(optional bool jbaj, optional bool oncond/*just broken a jump*/){
		local pawn p;
		///local name storedname;
		///local erictool wh;
		///local jmpzone jaz;
		///local vector pos, opos;
		///local rotator angl;
	/// 	initsetup
	p=playerpawn(owner); 
	level.timeseconds = storedcount;
	margin = float (storedcount~=level.timeseconds);
	///if (p.physics==phys_walking)  JumpEnhance(jbaj,p.velocity.z);
	///god this piece of shit is so unpredictable
	///if (timercounter>=0.1){ 
	if ((timercounter<=0.6)&&(p.physics!=phys_falling)) JumpEnhance(); 	
	if ((timercounter<=0.6)&&(timercounter>0.65)&&(p.physics==phys_falling)){ 	
	///if ((oncond==true)&&(jbaj==true)){
		///captureposi(opos);
		playsound(sound'april.player_extras.djumpfallphys');
		emplemon.z=emptyvec.z+margin;
		emplemon=emptyvec;
		p.velocity.z=float(emptyvec.z~=margin+20);
		/*
		log("p.velocityvec: "$p.velocity);
		log(" --------------fallprotect shits------");
		log("storedcounter: "$storedcount);
		log("given tmargin: "$margin);
		log("storedempvect: "$emplemon);
		log("emptyvec z ax: "$emptyvec.z);
		log("jmpzn_taglink: "$jaz.taglink);
		log("--------------------------------------");
		dumpall();
		*/
		} /// not without restoring it
		emptyvec=emplemon; 
		margin=0;
		p.velocity.z=p.default.velocity.z;
	}

	
	
	
	function updateHL(){
	local int i;
	///range1, range2, range3, newrange, temp1, temp2, temp3
	//apax.newrange-=level.timeseconds;
	for	(i=0; i>254; i++){
			apax.range1+=level.timeseconds/0.2;
			apax.range2-=level.timeseconds/0.2;
			apax.temp1=0.025+apax.range1;
			apax.temp2=0.05+apax.newrange;
			apax.temp3=0.1+apax.newrange;
			apax.newrange=i-level.timeseconds/2;
			}
	/**************************/	}


///function playselect(){	EricToolResetStrings();	}
function dumpall(){
log("======================================");
///log(apax.range1);
///log(apax.range2);
///log(apax.range3);
///log(apax.temp1);
///log(apax.temp2);
///log(apax.temp3);
///log(apax.newrange);
}
function postrender(canvas c){
	c.font=Font'april.NouveauIBM';
	updateHL(); //wasn't postrender as frequent as tick()?
	if (px.baltfire){	c.setpos(00,10); 	c.drawtext(tempstat.str2);
				c.setpos(00,20); 	c.drawtext("secondary:");	
	c.setpos(400,140);	c.drawtext(hl_tut1);	c.setpos(440,140);	c.drawtext(apax.range1);	
	c.setpos(400,240);	c.drawtext(ff_tut1);    c.setpos(440,240);	c.drawtext(apax.range2);
	/**
	c.setpos(400,160);	c.drawtext(hl_tut2);	c.setpos(400,260);c.drawtext(ff_tut2);
	c.setpos(400,180);	c.drawtext(hl_tut3);	c.setpos(400,280);c.drawtext(ff_tut3);
	c.setpos(400,200);	c.drawtext(hl_tut4);	c.setpos(400,300);c.drawtext(ff_tut4);
	c.setpos(400,220);	c.drawtext(hl_tut5);	c.setpos(400,320);c.drawtext(ff_tut5);
	*/
	/**
	ff_tut1, ff_tut2, ff_tut3, ff_tut4, ff_tut5,	
	lc_tut1, lc_tut2, lc_tut3, lc_tut4, lc_tut5,	
	iv_tut1, iv_tut2, iv_tut3, iv_tut4, iv_tut5,	
	uc_tut1, uc_tut2, uc_tut3, uc_tut4, uc_tut5;	*/	
	}///---------------------------------------------------------------------------------------------------------
	if (px.bfire) 	{	c.setpos(00,10); 	c.drawtext(tempstat.str1);
				c.setpos(00,30); 	c.drawtext(apax.newrange);	
        			c.setpos(0,40);  	c.drawtext("primary key");
	}///---------------------------------------------------------------------------------------------------------
        if (!px.bfire) {        c.setpos(0,10);  c.drawtext(tempstat.str4);
        			c.setpos(0,40);  c.drawtext(" ");					
	}///---------------------------------------------------------------------------------------------------------
        if ((!px.bfire) && (!px.baltfire)){ 	c.setpos(0,40); 
        					c.drawtext(" "); ///tempstat.str1	
        keydata.str1="on";	keydata.str2="on";		keydata.str3="on";	keydata.str4="on";
        c.setpos(0,140); 	c.drawtext(keydata.str1);	c.setpos(120,140); 	c.drawtext(apax.range1);
        c.setpos(0,160); 	c.drawtext(keydata.str2);	c.setpos(120,160); 	c.drawtext(apax.range2);
        c.setpos(0,180); 	c.drawtext(keydata.str3);	c.setpos(120,180); 	c.drawtext(apax.newrange);
        c.setpos(0,200); 	c.drawtext(keydata.str4);	c.setpos(120,200); 	c.drawtext(apax.temp1);		
        }///---------------------------------------------------------------------------------------------------------
}


function JUMPENHANCE(optional bool allowed, optional byte allowedbyte){ 	
	local pawn p;
	local byte i, j;
	local jmpzone dada;
	local float f; // function fire() leftover
	p=playerpawn(owner);
	if (p==none) return;
	i=fired.x1;
	j=0;
	///dumpall(); 					///	debug: don't play with log enabled lol
///	for (p.bfire=0;p.bfire!=0;p.bfire+=1) {
		for (i=0;i<9;i++){
		pv.loc1=p.location; pv.rot1=p.viewrotation;
		///f+=0.001;
		///log("pawn.bfire:"$p.bfire);
		if (i<=1){	//spawn (class'aprng.jmpzone',p,'tmpsens',pv.loc1, pv.rot1);
				///log("i: "$i);
				///log("j: "$j);
				j=0;
				}
///----------------------------------------------------------------------------------------------------------------------		
		if ( (i<=2) &&(allowed!=0) &&(allowedbyte > 4) ){      dada = spawn (class'aprlc.jmpzone',p,'tmpsens',pv.loc1, pv.rot1);	}
///----------------------------------------------------------------------------------------------------------------------		
		for(i=2;i<=9;i++){	///foreach TouchingActors( class<sensenet> tsn, instigator);
					f+=1;	
					if (f>7) { 	///log("antispamtest"); log("dada:"$dada); 
							/// custom lifespan makes a visible zone disappear :)
							dada.lifespan=dada.default.lifespan+=float(0.$max(f/2,f+j));	
							j+=2; ///log ("lifespan"$dada.lifespan);
							///f-=4;
							}
				///	log("F: "$f);	
					}
		///if (tsn.jmpzone.tag=='tmpsens') log("sensenet");
		}

	///---------------------------------------------------------------------------------------------------------
	///SpawnClass, SpawnOwner, SpawnTag, SpawnLocation, SpawnRotation, SpawnInstigator, Template, bNoCollisionFail 
	/**
	local int i;
            	for (i=0;i>255;i++) {
			if (pfire.first) 	apax.range1=i;
			                 	apax.range2=apax.newrange;
						apax.temp1=level.timeseconds;
			///log(pfire.first);
	}*/
	///pfire.first=false;
}
function fire (float f){ }

function altfire(float af) {	
	///cls();
        ///local float e; // clampe leftover
	EricToolResetStrings();
        ///setmyfuckingtimerthen(e, true);
	///fallprotect();
	///JumpCorrect();
}

/**
	this 	property
	was 	taken by
	the 	parking
	spc 	department
*/
///function timer(){}
function cls(){
	//=============================================
	apax.range1=0; apbx.range1=0; apcx.range1=0;
	apax.range2=0; apbx.range2=0; apcx.range2=0;
	apax.range3=0; apbx.range3=0; apcx.range3=0;
	//=============================================
	apax.temp1=0; apbx.temp1=0; apcx.temp1=0;
	apax.temp2=0; apbx.temp2=0; apcx.temp2=0;
	apax.temp3=0; apbx.temp3=0; apcx.temp3=0;
	//=============================================
	pfire.first=false;	afire.first=false;
	pfire.second=false;	afire.second=false;
	pfire.third=false;	afire.third=false;
	//=============================================
	keydata.str1="range1";	keydata.str3="newrange";		
	keydata.str2="range2";	keydata.str4="temp1";
}
exec function diceroll(){
	local float i, j, decis,decis2;
		i=frand();
		j=frand();
		decis=int(i+j);
		decis2=int(level.timeseconds);
		if (level.timeseconds-apax.range1>0.2) {	
			decis=apax.newrange;
			decis2=apax.temp1;  
			}///----------------------------
	}
/// 	[07/29/2024] removed from dfprps due to child dependence
///		Icon=Texture'aprng.drawtiles.seltest'
///		StatusIcon=Texture'aprng.drawtiles.seltestgold'
defaultproperties{
	bDisplayableInv=True
	InventoryGroup=1
	ItemName="JumpEnhance"
	PickupMessage="You got the Jump Enhancement Module"
	ActivateSound=Sound'april.aprw_glock.glock_reload3' 
	DeActivateSound=Sound'april.aprw_glock.glock_reload7' 
}