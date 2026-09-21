eye =10; head =100; body=100; ear=8;
difference(){
union(){
circle(d=head);//head
translate([-body,0,0])scale([2,1,1])circle(d=body);//body
translate([50,20,0])rotate([0,0,20])circle($fn=3,d=ear+30); //ear
translate([50,-20,0])rotate([0,0,-20])circle($fn=3,d=ear+30);
}
union()
{
translate([50,-20,0])rotate([0,0,-20])circle($fn=3,d=ear);//Right ear
translate([50,20,0])rotate([0,0,20])circle($fn=3,d=ear);

translate([20,20,0])rotate([0,0,20])circle(d=eye); //eye
translate([20,-20,0])rotate([0,0,20])circle(d=eye);

circle($fn=3,d=10); //nose
}
}