//****cam
$vpt = [ 11.59, -33.44, 56.08 ];
$vpr = [70,200,90]; //70,210,90
$vpd = 600;

//model
$fn=90; pipeangle =-70; pipe=[0,40,25];
difference()
{
//solid**
union(){
hull()
{
scale([1.5,2,1])cylinder(3,40,40,center=false);
scale([0.5,1.3,0.5])translate([0,20,30])sphere(r=40);
}//*hull end
translate(pipe)rotate([-pipeangle,0,0])cylinder(150,10,10,center=false);//pipe
}//remove**
scale([0.9,0.9,0.9])union(){
hull()
{
scale([1.7,2,1])cylinder(3,40,40,center=false);
scale([0.4,1.3,0.5])translate([0,20,30])sphere(r=40);
}
translate([-100,30,-238])rotate([0,90,0])scale([1,1.1,1])cylinder(200,260,260,$fn=500,center=false); //buttomroleoff
}//*hull end
translate(pipe)rotate([-pipeangle,0,0])cylinder(200,8,8,center=false);//pipe
}//diff end