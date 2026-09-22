PPr = 20; tall = 40; //only use increment by 10 for tall value
for (i = [0:10:tall]) 
{
translate([0,0,i])rotate_extrude(convexity = 10, $fn=100)
translate([PPr, 0, 0])circle(r = 3, $fn = 100); 
}
for (j = [0:30:360]) 
{
rotate([0,0,j])translate([PPr,0,0])cylinder(tall,d=5,$fn=70,center=false);  
}