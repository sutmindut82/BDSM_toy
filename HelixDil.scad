$fn=90; hight = 140; wide=25; helixR=5; ball=25;
for (i = [0:120:360]){ //go up with 360
rotate([0,0,i])linear_extrude
(height=hight-ball,center=false,twist =300)
translate([wide-helixR,0,0])circle(r = helixR);}
cylinder(hight-ball,r=wide-helixR,r=wide-helixR,center=false);
translate([0,0,hight-ball])scale([1,1,1.3])sphere(ball);