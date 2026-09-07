innersize = 20; screw = 4.2; thick=4;//core in mm
spikes =10; point= 0.4; spikeH=6;// spikes in mm
fine =60; // surface finish

difference(){
union(){
translate([0,0,0]) //mount spike cylender
cylinder(thick*2,innersize/2,innersize/2,center=true,$fn=fine);
//*************************
nspike = 360/spikes; //spikes count
for (x = [-180:nspike:180] )
{
rotate([0,0,x])
translate([0,(innersize)/2,0])//distance
rotate([-90,0,0])
cylinder(spikeH,thick,point,center=false,$fn=fine);//spike
}//end for
//***************************
}//union
translate([0,0,-7]) //holes for cylender screw
#cylinder(thick*4,screw,screw,center=false,$fn=fine);
}