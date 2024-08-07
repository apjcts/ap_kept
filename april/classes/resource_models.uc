class resource_models expands actor nousercreate;
// ANOTHER dummy actor for importing shit? ap how many needless files will you create? 
// as many as needed for when this u file grows into sizes bigger than unreal can handle
// keeping all imports in one file would be kind of messy.. and there'd be more risk of losing data
// but avoiding RISKS is only a practice reserved for LOSERS. april.u must contain EVERYTHING.... while 
// classes inside april.u will nicely compartmentalize their imports, the way god ( that is, I ) have intended.
//MESH MODELIMPORT STATICMESH MODELFILE="D:\___april\tempobjmylevel\movers_rotor.obj" NAME="movers_rotor" PACKAGE="aaa"
//"..\april\tempobjmylevel\movers_rotor.obj" NAME="movers_rotor" PACKAGE="aaa"
#exec MESH MODELIMPORT STATICMESH MODELFILE=models_obj\interior_doorframfix.obj name="int_doorframetest" group=module_general

defaultproperties
{
}
