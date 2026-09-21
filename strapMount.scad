straponhole = 50; belt =70; buttstrap =100; thiknes= 4; //up to 20mm or 2cm
difference()
{
union(){
hull(){
translate([-belt,30,0])scale([0.4,2,1])cylinder(thiknes,20,20,center=false); //Left
translate([belt,30,0])scale([0.4,2,1])cylinder(thiknes,20,20,center=false); //Right
translate([0,-buttstrap,0])cylinder(thiknes,20,20,center=false); //Buttom
}
}

union(){
translate([-(belt-10),27,-1])scale([0.3,1.5,1])cylinder(20,20,20,center=false); //L-belt
translate([(belt-10),27,-1])scale([0.3,1.5,1])cylinder(20,20,20,center=false); //R-belt
translate([0,0,-1])cylinder(20,d=straponhole,center=false); //strapon
translate([0,-(buttstrap-10),-1])scale([0.7,1.5,1])cylinder(20,d=25,center=false); //buttstrap
}

}