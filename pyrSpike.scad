for(j=[1:5:50]){translate([-j,j,0]) //out loop "Lenght"
for(i=[1:5:25]){	translate([i,i,0]) //inner loop "Wide"
cylinder(3,5,0.1,center=false,$fn=4);}}