$fn=60;
bulD=15; bulL=50; ropeD=20; wallT=4; // all in mm
//bullVib
difference()
{
union(){
rotate([-90,0,0])
cylinder(bulL,d=bulD+(2*wallT),center=false);
sphere(d=bulD+wallT*2);
}
rotate([-90,0,0])cylinder(bulL+2,d=bulD,center=false);
sphere(d=bulD);
}
//rope R
translate([(0.5*(ropeD+wallT))+
(0.5*(bulD+wallT)),0,0])difference()
{
rotate([-90,0,0])cylinder(bulL,d=ropeD+(2*wallT),center=false);
rotate([-90,0,0])cylinder(100+2,d=ropeD,center=false);
translate([-0.5*(ropeD+(wallT*2)),-1,0])
cube([ropeD+(3*wallT),100,ropeD], center=false);
}
//**rope L
translate([-(0.5*(ropeD+wallT))
-(0.5*(bulD+wallT)),0,0])difference()
{
rotate([-90,0,0])cylinder(bulL,d=ropeD+(2*wallT),center=false);
rotate([-90,0,0])cylinder(100,d=ropeD,center=false);
translate([-0.5*(ropeD+(wallT*4)),-1,0])cube([ropeD+(3*wallT),100,ropeD], center=false);
}