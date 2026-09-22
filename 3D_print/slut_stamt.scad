//********************stamp*****************
translate([-14,-12,0]) cube([230,70,5], center);
#linear_extrude(height = 15) text("SLUT",60,font="tex gyre chorus");
//*****************stampholder**************
difference(){
translate([-14,-125,0]) cube([230,85,14], center);
union(){
    #translate([-15,-118,5]) cube([234,70,6], center);
      translate([-15,-114,5]) cube([234,60,10], center);
    }
}