$fn=70; // change the size you want the button hole is 20mm
module binder() //elastic binder
{
hull(){
translate([0,0,0])cylinder(5,d=4,center=false);
translate([0,30,0])cylinder(5,d=4,center=false);
}}
difference(){

hull(){ //backplane
translate([0,0,0])cylinder(4,d=20,center=false);
translate([0,40,0])cylinder(4,d=20,center=false);
translate([40,-20,0])cylinder(4,d=20,center=false);
translate([80,0,0])cylinder(4,d=20,center=false);
translate([80,40,0])cylinder(4,d=20,center=false);
}
translate([-3,10,0])binder();
translate([83,10,0])binder();
translate([40,-12,0])cylinder(6,d=20,center=false);// pee hole size
}

difference(){ //pee holder
translate([40,20,0])scale([1.3,1.5,2])sphere(d=60);
scale([0.9,0.9,0.9])translate([44,20,0])scale([1.3,1.5,2])sphere(d=60);
translate([0,30,-60])cube([100,100,150], center=false);
translate([0,-30,-60])cube([100,100,60], center=false);
}
