//like this https://i.ebayimg.com/images/g/tG8AAOSwoFVaemVJ/s-l300.jpg
$fn=60;
rotate_extrude(convexity = 10, $fn = 100)
translate([25, 0, 0])
circle(r = 5, $fn = 100);

difference(){
hull(){
translate([0,0,70])rotate([90,0,0])cylinder(15,d1=57,d2=57,center=true);
cube([57,15,3], center=true);
}

hull(){
translate([0,0,70])rotate([90,0,0])cylinder(18,d1=44,d2=44,center=true);
cube([43,15,3], center=true);
}
translate([0,0,95])cylinder(15,d1=6,d2=6,center=true);
}