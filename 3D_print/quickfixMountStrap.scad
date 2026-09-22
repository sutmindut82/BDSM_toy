$fn = 60; bace= 70; baceh=4; // add munt holes before print
for (z = [baceh:11:70]) {
hull(){translate([0,0,z+10]) sphere(d=15);
translate([0,0,z]) cylinder(0.1,d=5,d=20,center= false);}}
cylinder(baceh,d=bace,d=bace,center = false);