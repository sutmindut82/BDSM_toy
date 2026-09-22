difference() //feel free to change or make your own
{
union(){
cylinder(7,d=20,center=false); //outer circle
rotate([0,0,-10])translate([5,0,0])cube([5,40,7], center=false);
rotate([0,0,10])translate([-10,0,0])cube([5,40,7], center=false);
}
union(){
cylinder(7,d=15,center=false); // inner size
translate([-2,-10,0])cube([4,10,7], center=false); //cut out
}
}