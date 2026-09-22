intersection(){$fn=90;
union(){ //spades
//if you in to spades
#scale(4,4,1)
    {   
        difference(){ 
                union() {
                rotate([0,0,45]) cube(10,center=true);
                translate([4,4,-5])cylinder(10,d=10,center=false);
                translate([-4,4,-5])cylinder(10,d=10,center=false);
                        }
                rotate([180,0,0])translate([-4,-5,-6])linear_extrude(12)text("Q",font="Comic Sans MS:style=Bold",7,size=7);
                    }
    }//scale end
//hearts to spades down under
difference()
{
    translate([0,40,0])cube([30,24,40], center=true);
    union()
    {
        translate([-15,33,-25])cylinder(50,d=25, center=false);
        translate([15,33,-25])cylinder(50,d=25, center=false);
    }
}
}
translate([0,12,-50])sphere(50);
}