difference(){
scale([2,1,1]) cylinder(5,d=60,d=60,center=false);
translate([0,0,3]) scale([1.6,0.8,0.8]) cylinder(10,d=60,d=60,center=false);
}
translate([-35,-10,2]) linear_extrude(4,center=false) text("SLUT",20,style=block);