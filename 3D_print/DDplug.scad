$fn=60; hull(){
translate([0,0,150])scale([1,1,1])sphere(d=15);//top
translate([0,0,120])sphere(d=38); }// first ball
cylinder(130,15,15,center=false); //shaft
translate([0,0,70])sphere(d=38); // sec. ball
translate([0,0,11])scale([1.3,1.3,0.7])sphere(d=40); //bottom