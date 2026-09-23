$fn=70; this is for 2D cutout
//heart
difference()
{  
    union()
    { 
    rotate([0,0,45]) square(10,center=true);
    translate([4,4,0])circle(d=10);
    translate([-4,4,0])circle(d=10);
    }
translate([-4,-1,0])text("Q",7);
}//end diff heart
translate([0,8,0])difference(){
 //circle(d=4);  circle(d=2); // heartseye
    }
 //hearts tail
 difference()
 {
    translate([0,7,0])square(10,center=true);
    union()
    {
        square(13,center=true);
        translate([-7,7,0])circle(d=12);
        translate([7,7,0])circle(d=12);   
    }
 }//end diff tail