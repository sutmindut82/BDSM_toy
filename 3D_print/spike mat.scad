pinspace = 6;
pinh = 7;
pinlow =3;
boxx = 198; //box mm
boxy = 198; //box mm
fine = 30;

//-------------------------------------------
//////box/////
difference()
{
cube([boxx,boxy,5]);
translate([2,2,2])
cube([boxx-4,boxy-4,10]);
}
////////pin/////

for (x=[pinspace:pinspace:boxy-pinspace]) //y size
{

for (i=[pinspace:pinspace:boxx-pinspace]) //x size
{
translate([i,x,2])
//--------------------------------------------
//////type//// activate only one figure

cylinder(pinh,pinlow,0,$fn =fine);
//cube([pinlow,pinlow,pinh]);

//// or///

/*union()
{
difference()
{
sphere(pinh,$fn=30);
translate([-pinh,-pinh,-pinh])
cube([pinh2,
pinh*2,pinh]);
}
}
*/
//---------------------------------------------
} //x-loop
} //y-loop