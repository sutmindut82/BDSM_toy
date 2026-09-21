//***users*** only print in flex/rubber
$fn=100; inner=30; outer=100; Ltube=20; 
//***convert****
inhole=inner/2; outhole=outer/2;//convert to radius
curve=(outhole-inhole); //size of membran
//***code***
difference(){ //***shell***
union()
    {
    rotate_extrude(convexity = 100)
    translate([outhole-(curve/2), 0, 0])
    circle(d = curve);
    cylinder(Ltube,r=outhole,center=false);

    }
union()//***extraxtion
    {
    rotate_extrude(convexity = 100)
    translate([outhole-(curve/2), 0, 0])
    circle(d = curve-2);
    cylinder(Ltube+1,r=(outhole)-2,center=false);
    }
}