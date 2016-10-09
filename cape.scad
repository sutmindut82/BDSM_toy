difference(){
union(){
union(){hull(){translate([0,-400,0]) square(80,center=true); circle(d=260);}} //head
for(X = [-50,50]){translate([X,-400,0]) union(){ union(){scale([1,1.5,1]){circle(d=110);}}}}
}
union()
{union(){circle(d=200);}} //head
for(X = [-50,50]){translate([X,-400,0]) union(){ union(){#scale([1,1.5,1]){circle(d=70);}}}}
}