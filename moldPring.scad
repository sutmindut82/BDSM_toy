fine=60; top=10; fillhole=3; key=7; t=30;//in radius awg
difference(){
cylinder(top,t+15,t+15,center=false,$fn=fine); //mold holder
union(){
translate([0,t+15,0])
cube([key,key,20],center=true); // key lock
translate([0,-t-15,0])
cube([key,key,20],center=true); // key lock
cylinder(20,t-8,t-8);//mold poor
translate([0,0,top])
rotate_extrude(convexity = 10, $fn = fine)
translate([t, 0, 0])
circle(r = 5, $fn = fine);
translate([7+t,0,top])rotate([0,90,0])
cylinder(40,fillhole/2,10);//mold poor
for (i = [0:36:360]) {
rotate([0,0,i])translate([t+5,0,top])
sphere(5,$fn=fine); //ball
}}}
//modify as you will