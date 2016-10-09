difference(){
union(){
#translate([-15,-50,0]) square(30,center=false);
translate([185,40,0]) circle(d=400);
translate([-185,40,0]) circle(d=400);
}
union(){
translate([185,40,0]) circle(d=300);
translate([-185,40,0]) circle(d=300);
   translate([-34,-40,0]) circle(d=6);
   translate([34,-40,0]) circle(d=6);
   translate([-410,0,0]) square(810,center=false);
   translate([250,-400,0]) square(400,center=false);
   translate([-650,-400,0]) square(400,center=false);
    hull(){
   translate([-0,-70,0]) circle(d=45);
   translate([-12,-100,0]) circle(d=45);    
   translate([12,-100,0]) circle(d=45); 
        }
}}//end diff