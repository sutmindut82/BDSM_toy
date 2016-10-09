$fn=70;
scale(4,4,1){
difference(){  union(){
rotate([0,0,45]) square(10,center=true);
translate([4,4,0])circle(d=10);
translate([-4,4,0])circle(d=10);}
translate([-4,-1,0])text("Q",7);
}
translate([0,8,0])difference(){
 //circle(d=4);  circle(d=2); // heartseye
    }}
 //hearts to spades down under
    
 difference(){
 translate([0,35,0])square(30,center=true);
     union()
     {
      translate([-15,33,0])circle(d=25);
      translate([15,33,0])circle(d=25);   
     }
 }