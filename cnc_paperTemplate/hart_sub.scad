$fn=70;
scale(4,4,1){
difference(){  union(){
rotate([0,0,45]) square(10,center=true);
translate([4,4,0])circle(d=10);
translate([-4,4,0])circle(d=10);}
translate([-6,1,0])text("SUB",4,font="plaster");}
translate([0,8,0])difference(){
 circle(d=4);  circle(d=2); }}