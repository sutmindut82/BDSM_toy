//hand for spanking scale it up down edit to your needs
module finger(fx,fy,fz)
{
hull(){
translate([fx,fy,fz])circle(8);
translate([fx,fy+70,fz])circle(8);}
}
hull(){
scale([1,0.8,1])circle(d=80);
scale([1,0.3,1])translate([0,150,0])circle(d=80);
}
finger(32,20,0);finger(10,35,0);finger(-10,45,0);
finger(-32,35,0);rotate([0,0,20])finger(-29,20,0);