/** 	1	EditPackages=april
	2	EditPackages=aprlc
	3	EditPackages=aprngc
	4	EditPackages=aprng		
	5	EditPackages=apr	*/
// ==========================================================
// IDS - Interface Displau System (c) apjcts, 2024
// using this class with aprilgameinfo causes an err, NG only
// ==========================================================
class ids expands unrealhud; /// was child to aprilhud
///------------------------------------------------------------------------------------------------------------------------------------------------------------
/// ui sprites: 
///#exec import texture file="tex\sprite\01.png"		 name="fx01"		group="fx" 	btc=1 
///#exec import texture file="tex\sprite\02.png"		 name="fx02"		group="fx" 	btc=1 
///#exec import texture file="tex\sprite\03.png"		 name="fx03"		group="fx" 	btc=1 
///#exec texture import file="textures/ui/ComBG.png"		 name="ComBg"		group="ui" 	btc=3 
///#exec texture import file="textures/ui/ComBG2.png"		 name="ComBg2"		group="ui" 	btc=3 
///#exec texture import file="textures/ui/ComElements.png"	 name="ComElms"		group="ui" 	btc=3 
///------------------------------------------------------------------------------------------------------------------------------------------------------------
/// ui hud:
#exec texture import file="textures/ui/ammotest.png"		 name="ammotest"	group="ui" btc=3 
#exec texture import file="textures/ui/ComBGFram.png"		 name="ComBGFrgm"	group="ui" btc=3 
#exec texture import file="textures/ui/ComElements2.png"	 name="ComElms2"	group="ui" btc=3 
#exec texture import file="textures/ui/sigil.png"		 name="sigiltest"	group="ui" btc=3 
#exec texture import file="textures/ui/ui_bgtest.png"		 name="bgtest"		group="ui" btc=3 
#exec texture import file="textures/ui/itemhd.png"		 name="item2"		group="ui" btc=3
#exec texture import file="textures/ui/item2hd.png"		 name="item2"		group="ui" btc=3
#exec texture import file="textures/ui/maptopo2.png"		 name="maptopotest"	group="ui" btc=3
/// #exec texture import file="textures/ui/"		 name=""		group="ui" btc=3
/// #exec texture import file="textures/ui/"		 name=""		group="ui" btc=3
/// #exec texture import file="textures/ui/"		 name=""		group="ui" btc=3

/// digital clock
#exec texture import file="textures/digitBlue/dgtA.png"	  name="digit_A"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtB.png"   name="digit_B"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtC.png"   name="digit_C"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtCs.png"  name="digit_cs"         group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtD.png"   name="digit_D"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtE.png"   name="digit_E"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtL.png"   name="digit_L"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtO.png"   name="digit_O"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtX0.png"  name="digit_0"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtX1.png"  name="digit_1"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtX2.png"  name="digit_2"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtX3.png"  name="digit_3"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtX4.png"  name="digit_4"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtX5.png"  name="digit_5"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtX6.png"  name="digit_6"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtX7.png"  name="digit_7"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtX8.png"  name="digit_8"          group="ui_digits" btc=3
#exec texture import file="textures/digitBlue/dgtX9.png"  name="digit_9"          group="ui_digits" btc=3
/// ui sounds:
#exec audio import file="sounds/DDAverted.wav"		 name="DDAverted"	group="logx"  
#exec audio import file="sounds/MS_Edit.wav"             name="ms_edit"		group="logx"
#exec audio import file="sounds/MS_Click.wav"            name="ms_click"	group="logx"




///------------------------------------------------------------------------------------------------------------------------------------------------------------
var string logxdata, logxdata2;
///var name logxdobjname;
///#exec audio import file="sounds/gsbutton06.ogg"	 name="gsbutton"	group="logx"  package="apr"
	function postbeginplay(){
		///SetTimer(8,true,'eh');
		///SetTimer(32,true,'ah');
		///if (TimerCounter>7.9) eh();
		///if (TimerCounter>3.9) ah();
		super.postbeginplay();
		}
	/**
	function eh(){
		local pawn p;
		p=playerpawn(owner);
		logx(p.name,false,true);
		}
	function ah(){
		local pawn p;
		p=playerpawn(owner);
		logx(p.name,true,false);
		}
        */
//-------------------------------------------------------------------------------------------------------------------------------------------------------------        
        function postrender(canvas c){
        	local pawn p;
        	local bool drawreticle; // todo make me toggleable and move me to global scope
        	///local float x,y;
        	local string a, b;
        	local vector plvect;
        	local rotator plrot;
        	local coords pcc;
        	p=pawn(owner);
        	plvect=p.location;
        ///	bdrawone=false;
        ///	pl
        ///	setup the canvas:
        ///	if (p!=none){
	///	c.Reset();
	///	c.bNoSmooth = (Class'HUD'.Default.HudScaler==1.f);
        ///	c.reset();
	///	c.bNoSmooth=false;
	///	c.setdrawcolorRGB(255,255,255);
	///	c.fontscale=c.default.fontscale;
	///	return; ///and GTFO, bitch.
		///	----------------------------------------------------------------------
		//	prep the screen	
			c.SetDrawColorRGB(128,255,255);
			c.FontScale=2.5; //test 
			c.font=Font'april.NouveauIBM';
        		c.bNoSmooth=true;
        	///	x=c.clipx/2;
        	///	y=c.clipy/2;
        	///	p.tag='april'; ///teste
        	///	}
        	// 	todo align xy properly depending on setres
        	///	c.SpaceX=calcpos(x);
        	///	c.SpaceY=calcpos(y);
        	///	if (p.velocity.z!=0) log(p.velocity.z,p.tag);
        	///	a=string(p.velocity);
        	///	b=string(p.tag);
        	///	logx(p.velocity,true); 
 		/// 	-----------------------------------------------------------------------       		
 		// 	do actual screenspace prep
 			plrot=c.GetCameraRotation();
 			plvect=c.GetCameraLocation();
 			drawreticle=true;
 			if (drawreticle==true) c.setpos(c.sizex/2-12,c.sizey/2); c.drawtext(".");
 			c.setpos(c.sizex/2,c.sizey/2+40);       c.drawtext("position: "$plvect);
 			c.setpos(c.sizex/2,c.sizey/2+80);       c.drawtext("rotation: "$plrot);
			c.setpos(20, 20); 		
			/**
			c.DrawTileClipped(	texture 'aprlc.aprlctex.AllHudOverlays' ,
						2048/8, 	 	///	X size?
						2048/8, 		///	Y 
						2048,       	///	U posi
						-1024,       	///	V posi
						2048,    	/// 	U clip plane?
						2048,     	/// 	V clip plane? 
						0		/// 	flag
						);		
			*/
			/*
			c.DrawTile(	texture 'aprlc.aprlctex.AllHudOverlays' ,
					2048/2, 	///	X size?
					2048/2, 	///	Y 
					2048+512,       ///	U posi
					512,       	///	V posi
					2048,    	/// 	U clip plane?
					4096,     	/// 	V clip plane? 
					0		/// 	flag
					);		
			*/
			///c.style=2;
			///c.setdrawcolorrgb(255,255,255);		///get out
		//c.reset();
        	// !!note: apex of jump seems to always be p.velocity.z=0;
        	/// what if i were to track: z<0.0001 and -0.0001<z ?
        	///c.setpos(x+40,y+40); c.drawtext(logxobjname);
        	}
///        function float calcpos(float x){ local float spx, spy; spx=spx/2=x; return x; }
///        function float calcpos(float y){ local float spx, spy; spx/2=y; return y; }
///-------------------------------------------------------------------------------------------------------------------------
	///someday. there'd be a monument for all the stupid shit i thought of.
	function string logx	(coerce string data, optional bool sfx, optional bool spcl){
	local string typstr,typstr2, temp;	///max msg capacity. there used to be length aswel
	local int decis;
	typstr=data;
	decis=rand(1);          /// creates a number pool with 2 possible options 
	sfx=false;			// turned off until i think of some way to delay these, at least spcl scope works
	///if (sfx==true){		if (decis>0.55) PlaySound(sound'april.items_F3.key1');
	///			if (decis<0.55) PlaySound(sound'april.items_F3.key2');
	///			if (decis==1) PlaySound(sound'apr.logx.ms_click');	
	///			} /// notifies with a random noise from a shuffled pool
	temp=data; 
	if (spcl==true) {	/**PlaySound(sound'apr.logx.ddaverted');*/	}
	if (typstr!=none) { logxdata=typstr; return typstr; }
	if (typstr!=data) { data=typstr2; logxdata2=typstr2; return typstr2; }
	}
	                                        