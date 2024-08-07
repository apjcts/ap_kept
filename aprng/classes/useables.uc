// =======================================================================================================================
// useables - classic unreal items + a foundation built around multiple usage modes = convoluted item useability  :)
// =======================================================================================================================
class useables expands pickup; //parent class of all useables 
//todo test ui and finish erictool manipulator
struct radiolinks{  	var class <aprng> 	weap,          			/// interlinks for my own obj manip
						weap2, weap3;			/// infinite headache exploit :)
			var name 	nm1,nm2,nm3, 
					evt, tag;
			var object 	link1,link2, 
					link3,link4;		}; 
struct flatvecs {	var vector2d fv1, fv2, fv3, fv4;			/// hud 2d data in 3dspace 
			var plane test, test2;			};      
struct playback	{	var sound sfx[8]; var music cue[4];		};	/// sound playback
struct uitex	{	var texture tex[4],texl[8]/*, texxl[16]*/;	};	/// texture sets for all the ads :)
struct activators{	var bool bPrimary, bSecondary, bThird;		}; 	/// for bExtra1,2 and 3 respectively
struct ctrls {		var actor	target;
			///var name 	ev, tg;
			var byte	i;
			var int 	ix;
			var float	ixl;		};
///-----------------------------------------------------------------------------------------------------------------
///var pointer tmp1; var object tmp2;
///function IO_