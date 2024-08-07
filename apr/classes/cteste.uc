class cteste expands decoration;

#exec MESH MODELIMPORT STATICMESH MODELFILE="models\ctest.obj" NAME="ctest" PACKAGE="apr"
#exec TEXTURE IMPORT FILE="textures\temp\appalfixed.png" NAME="appalfixed" PACKAGE="apr" MIPS=1 FLAGS=0 BTC=3

var float timer_rot;
var float rot_yaw, rot_rll;

function tick(float f){
  local rotator tmp_rot;
  timer_rot -= f;
  if(timer_rot > 0) return;
  rot_yaw += 1092; // = 360drg fullrot in 60 frames, or 65536/60 = 1092
  rot_rll -= 1092; // = 360drg fullrot in 60 frames, or 65536/60 = 1092
  timer_rot = 0.01667; // = 1 sec cycle, e g 1/60 = 0.016667 sec/frame
  if(rot_yaw > 65536) rot_yaw = rot_yaw % 65536; // keep only division remaining, kick non-meaning fullrots,
  if(rot_rll > 65536) rot_rll = rot_rll % 65536; // e g 70620 = 5084 because 70620-(65536*any_amount)=5084
  tmp_rot = self.rotation;  // do actual shit
  tmp_rot.yaw = rot_yaw;
  tmp_rot.roll = rot_rll; /// test
  setrotation(tmp_rot);
}

defaultproperties{
        bstatic=false
        AmbientGlow=254
        DrawType=DT_Mesh
        Mesh=StaticMesh'AA.ctest'
	MultiSkins[0]=Texture'apr.appalfixed'
}