// just add your own feature
//ring********************
$fn=100;
difference(){
scale([2,2,0.8])sphere(10);
union()
{
translate([-22,-22,3])cube([42,42,8]);
translate([-22,-22,-10])cube([42,42,8]);
scale([1.8,1.8])sphere(10);

}

}
//shaft************
difference(){
rotate([0,5,0])cylinder(12,d=37);
union()
{
rotate([0,5,0])cylinder(12,d=34);
translate([-22,-22,16])rotate([0,25,0])cube([44,44,20]);
translate([-22,-22,-10])cube([42,42,8]);
scale([1.8,1.8])sphere(10);

}

}
//top-ring********************
translate([0,0,7])rotate([0,25,0])difference(){
scale([2,2,0.4])sphere(10);
union()
{
translate([-14,-22,-20])rotate([0,-25,0])cube([42,42,8]);
translate([-22,-22,3])cube([42,42,8]);
translate([-22,-22,-10])cube([42,42,8]);
//scale([1.8,1.8])sphere(10);
translate([0,0,-5])rotate([0,5,0])cylinder(12,d=34);
translate([-20,-0,-3])rotate([45,-25,0])cube([7,5,5]);

}

}
//balls**************
translate([-16.7,3,10])rotate([0,90,0])cylinder(2,d=5);
translate([-16.7,-3,10])rotate([0,90,0])cylinder(2,d=5);
translate([-14.5,3,10])scale([0.4,1,1])sphere(2.7);
translate([-14.5,-3,10])scale([0.4,1,1])sphere(2.7);