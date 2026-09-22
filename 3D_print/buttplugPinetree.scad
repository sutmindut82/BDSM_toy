//Diameter of head (widest part)
headWidth = 20; $fn=80; //Height of head (determines taper)
headHeight = 50; //Length of neck (thin part after head)
neckLength = 40; //Diameter of neck (thin part after head)
neckWidth = 10; //Don't edit below this line!
baseWidth = max(1.5*neckWidth, 1.2*headWidth);
baseHeight = 5;
headTop = min(3, headWidth/2);
hull()
{
translate([0, 0, neckLength + headHeight-(headTop/2)])
sphere(headTop);

translate([0,0,neckLength - 3])
scale([1, 1, 0.4])
sphere(headWidth);
}
cylinder(h = neckLength, r1 = neckWidth, r2 = neckWidth, center = false); // rod
difference(){
scale([1, 1, 0.7])sphere(baseWidth);
rotate([180,0,0])cylinder(baseWidth*2,d1= baseWidth*2,d2= baseWidth*2,center=false);
}