pokehole = 10; //radius
egsize = 40;  //radius;
fine = 60;   //corners number of fragments

//****************************
difference()
{
union()
{
hull(){
scale([1,1,1.5])
sphere(egsize,$fn=fine);
}
translate([0,0,-egsize*1.5])scale([1.2,1.2,1])
cylinder(egsize/3,egsize+2,egsize*0.4,$fn=fine);

}//union

union()
{
scale([0.85,0.85,-1.5])
sphere(egsize,$fn=fine);

translate([0,0,-egsize*1.5])
cylinder(egsize*3,pokehole,pokehole,center=false,$fn=fine);
translate([0,0,-egsize*1.5-1])
cylinder((egsize/3),egsize+2,egsize*0.5,center=false,$fn=fine);
}
}//diff