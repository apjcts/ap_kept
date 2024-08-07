//=============================================================================
// Translator.
//=============================================================================
class item_plotbook extends translator;

//todo: figure out how the how to get rid of console notices. UNIVERSAL TRANSLATOR in top right corner looks annoying! ANNOYING!
/* todo: clean this up
#exec AUDIO IMPORT FILE="Sounds\Pickups\HEALTH1.wav" NAME="HEALTH1" GROUP="Pickups"
#exec Texture Import File=Textures\HD_Icons\I_HD_Translator.bmp Name=I_HD_Translator Group="HD" Mips=Off
#exec TEXTURE IMPORT NAME=I_Tran FILE=Textures\HUD\i_TRAN.pcx GROUP="Icons" MIPS=OFF HD=I_HD_Translator
#exec MESH IMPORT MESH=TranslatorMesh ANIVFILE=Models\tran_a.3d DATAFILE=Models\tran_d.3d X=0 Y=0 Z=0 MLOD=1
// todo: custom model to replace this
#exec MESH LODPARAMS MESH=TranslatorMesh STRENGTH=0.1 MINVERTS=28 MORPH=0.0 ZDISP=4000.0
#exec MESH ORIGIN MESH=TranslatorMesh X=5 Y=0 Z=0 YAW=0
#exec MESH SEQUENCE MESH=TranslatorMesh SEQ=All    STARTFRAME=0  NUMFRAMES=1
#exec TEXTURE IMPORT NAME=JTranslator1HD FILE=Models\tran.pcx GROUP="HD"
#exec TEXTURE IMPORT NAME=JTranslator1 FILE=Models\tran_old.pcx GROUP="Skins" HD=JTranslator1HD
#exec MESHMAP SCALE MESHMAP=TranslatorMesh X=0.04 Y=0.04 Z=0.08
#exec MESHMAP SETTEXTURE MESHMAP=TranslatorMesh NUM=1 TEXTURE=JTranslator1 TLOD=10
#exec TEXTURE IMPORT NAME=TranslatorHUDHD FILE="Textures\HUD\HDTranslator.dds" GROUP="HD" FLAGS=131074 MIPS=0
#exec TEXTURE IMPORT NAME=TranslatorHUD3 FILE=models\TRANHUD3.pcx GROUP="Icons" FLAGS=2 MIPS=OFF HD=TranslatorHUDHD


function AssignMessage( TranslatorEvent E, bool bFirstMessage ){
	Hint = E.Hint;
	bShowHint = False;
	if( Len(E.Message) )	{
		NewMessage = E.Message;
		if( bFirstMessage )		{
			bNewMessage = true;
			Pawn(Owner).ClientMessage(E.M_NewMessage);
		}
		else		{
			bNotNewMessage = true;
			Pawn(Owner).ClientMessage(E.M_TransMessage);
		}
	}
	else	{
		bNewMessage = true;
		Pawn(Owner).ClientMessage(E.M_HintMessage);
	}
}

function UntouchMessage( TranslatorEvent E ){
	bNewMessage = False;
	bNotNewMessage = False;
	if( IsInState('Activated') ) GoToState('Deactivated');
}

// 227g: Moved Translator draw code from HUD to here.
simulated function DrawTranslator( Canvas Canvas )
{
	local float TempX,TempY;
	local string CurrentMessage;
	local byte i;

	Canvas.bCenter = false;
	TempX = Canvas.ClipX;
	TempY = Canvas.ClipY;
	if ( bShowHint && Len(Hint)!=0 )
		CurrentMessage = HintString@Hint;
	else CurrentMessage = NewMessage;
	Canvas.Style = ERenderStyle.STY_Masked;

	if( TranslatorScale<=1.f )
	{
		Canvas.SetPos(Canvas.ClipX/2-128, Canvas.ClipY/2-68);
		Canvas.DrawIcon(LowResHUD, 1.0);
		Canvas.SetOrigin(Canvas.ClipX/2-110,Canvas.ClipY/2-52);
		Canvas.SetClip(225,110);
		Canvas.SetPos(0,0);
		Canvas.Font = Canvas.MedFont;
	}
	else
	{
		Canvas.SetPos(Canvas.ClipX/2-128*TranslatorScale, Canvas.ClipY/2-68*TranslatorScale);
		Canvas.DrawTile( HiResHUD, TranslatorScale*256.f, TranslatorScale*256.f, 0, 0, HiResHUD.USize, HiResHUD.VSize );
		if( TranslatorScale<1.3f )
			Canvas.Font = Canvas.MedFont;
		else
		{
			if( TranslatorScale<=1.7f )
				i = 0;
			else if( TranslatorScale<=2.35f )
				i = 1;
			else if( TranslatorScale<=4.25f )
				i = 2;
			else i = 3;
			if( LoadedFonts[i]==None )
			{
				LoadedFonts[i] = Font(DynamicLoadObject(FontNames[i],Class'Font'));
				if( LoadedFonts[i]==None )
					LoadedFonts[i] = Canvas.MedFont;
			}
			Canvas.Font = LoadedFonts[i];
			Canvas.DrawColor = MakeColor(0,255,0);
		}
		Canvas.SetOrigin(Canvas.ClipX/2-100*TranslatorScale,Canvas.ClipY/2-52*TranslatorScale);
		Canvas.SetClip(205*TranslatorScale,110*TranslatorScale);
		Canvas.SetPos(0,0);
	}
	Canvas.Style = 1;
	Canvas.DrawText(CurrentMessage, False);
	Canvas.ClipX = TempX;
	Canvas.ClipY = TempY;
	Canvas.Font = Canvas.MedFont;
	Canvas.DrawColor = MakeColor(255,255,255);
}
*/
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// if it looks like a translator, it's a translator (obviously)
// but what if it were also a TRANSLOCATOR? EH? EVER THINK OF THAT? (no)
// ideally this actor should be april's entire heads up display. Everything
// must be drawn via scripted texture on the mesh this thing will have. Also,
// activating an item via F2 should uhh include aprilweapon into consideration.
// we can't have four hands show up while this item is displayed now, can we?
//
// todo: steal doom3 pda function and put them here somehow, 
// I'm off to PRETEND to be reading Penumbra source code!
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/* todo: rename this shit
var globalconfig float TranslatorScale;
var string FontNames[4];
var font LoadedFonts[4];
var() texture HiResHUD,LowResHUD;

var() localized string NewMessage;
var localized string Hint,HintString;
var bool bNewMessage, bNotNewMessage, bShowHint, bCurrentlyActivated;
*/

function AssignMessage( TranslatorEvent E, bool bFirstMessage ){
	Hint = E.Hint;
	bShowHint = False;
	if( Len(E.Message) )	{
		NewMessage = E.Message;
		
		if( bFirstMessage )		{
			bNewMessage = true;
			Pawn(Owner).ClientMessage(E.M_NewMessage);
		}
		else		{
			bNotNewMessage = true;
			Pawn(Owner).ClientMessage(E.M_TransMessage);
		}
	}
	else	{
		bNewMessage = true;
		Pawn(Owner).ClientMessage(E.M_HintMessage);
	}
}

function UntouchMessage( TranslatorEvent E ){
	bNewMessage = False;
	bNotNewMessage = False;
	//if( IsInState('Activated') ) GoToState('Deactivated'); FUCK OFF, this was always annoying in unreal! user can deactivate these
}

simulated function DrawTranslator( Canvas Canvas ){
	local float TempX,TempY;
	local string CurrentMessage;
	//local byte i; unused, GET OUT of my compilation log!
	Canvas.bCenter = false;
	TempX = Canvas.ClipX;
	TempY = Canvas.ClipY;
	if ( bShowHint && Len(Hint)!=0 )
		CurrentMessage = HintString@Hint;
	else CurrentMessage = NewMessage;
	Canvas.Style = ERenderStyle.STY_Masked;
	// prep done, thus custom messaging begun (maybe)
	if (bactive!=false) canvas.setpos(tempx,tempy); canvas.drawtext("=++++++++++++++++++++++++++++++++++++++++++++++++="); //todo: test me, fix me, whatever
	/* 
	if( TranslatorScale<=1.f )	{
		Canvas.SetPos(Canvas.ClipX/2-128, Canvas.ClipY/2-68);
		Canvas.DrawIcon(LowResHUD, 1.0);
		Canvas.SetOrigin(Canvas.ClipX/2-110,Canvas.ClipY/2-52);
		Canvas.SetClip(225,110);
		Canvas.SetPos(0,0);
		Canvas.Font = Canvas.MedFont;
	}
	else	{
		Canvas.SetPos(Canvas.ClipX/2-128*TranslatorScale, Canvas.ClipY/2-68*TranslatorScale);
		Canvas.DrawTile( HiResHUD, TranslatorScale*256.f, TranslatorScale*256.f, 0, 0, HiResHUD.USize, HiResHUD.VSize );
		if( TranslatorScale<1.3f )
			Canvas.Font = Canvas.MedFont;
		else		{
			if( TranslatorScale<=1.7f )
				i = 0;
			else if( TranslatorScale<=2.35f )
				i = 1;
			else if( TranslatorScale<=4.25f )
				i = 2;
			else i = 3;
			if( LoadedFonts[i]==None )			{
				LoadedFonts[i] = Font(DynamicLoadObject(FontNames[i],Class'Font'));
				if( LoadedFonts[i]==None )
					LoadedFonts[i] = Canvas.MedFont;
			}
			Canvas.Font = LoadedFonts[i];
			Canvas.DrawColor = MakeColor(0,255,0);
		}
		Canvas.SetOrigin(Canvas.ClipX/2-100*TranslatorScale,Canvas.ClipY/2-52*TranslatorScale);
		Canvas.SetClip(205*TranslatorScale,110*TranslatorScale);
		Canvas.SetPos(0,0);
	} */ 
//      done? smack that bitch up to where it originally was
	Canvas.Style = 1; //todo: look this up
	Canvas.DrawText(CurrentMessage, False);
	Canvas.ClipX = TempX;
	Canvas.ClipY = TempY;
	Canvas.Font = Canvas.MedFont;
	Canvas.DrawColor = MakeColor(255,255,255);
}

defaultproperties
{
	NewMessage="April's Plotbook"
	PickupMessage="Press F2 to activate the Plotbook"
	ItemName="Plotbook"
	bRotatingPickup=True
}
