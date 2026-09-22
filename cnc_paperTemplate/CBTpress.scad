bolthsize=6; penis=30; wide=70; lenght= 90;Tname="TOP"; Bname="SUB";//text
x1=10; x2=wide; y1=10; y2=lenght; //use for bolt
//*************************************************
module plate(nametag)
{
union()
{
difference(){
hull(){//plate
translate([10,lenght,0])circle(d=20);
translate([wide,lenght,0])circle(d=20);
translate([10,10,0])circle(d=20);
translate([wide,10,0])circle(d=20);
}
union(){// bolt + nuts
translate([x1,y1,0])circle(d=bolthsize);
translate([x2,y1,0])circle(d=bolthsize);
translate([x1,y2,0])circle(d=bolthsize);
translate([x2,y2,0])circle(d=bolthsize);
translate([wide/2+18,70,0])rotate([0,0,180])text(nametag,size=10,direction = "ltr");
hull(){//holes for cock and ball to glide
translate([wide/2+5,lenght/3,0])circle(d=penis);//ball+cock glidespace
//translate([65,0,0])square(50);
}}}}}
module highplate()
{
union(){
difference(){
hull(){
translate([0,x1,0])circle(d=20);
translate([0,x2-x1+10,0])circle(d=20);
}//hull
union()
{
translate([penis/(5/2),(wide/2)+5,0])circle(d=penis);
translate([0,y1,0])circle(d=bolthsize);
translate([0,x2-x1+10,0])circle(d=bolthsize);
}}}}
//**********************************
difference(){
plate(Bname);
translate([(wide/2)-(penis/2)+5,0,0])square([penis,(wide/2.3)]);
}
translate([0,y2+12,0])plate(Tname);
translate([x2+25,0,0])highplate();
translate([x2+50,0,0])highplate();
translate([x2+75,0,0])highplate();
translate([x2+100,0,0])highplate();