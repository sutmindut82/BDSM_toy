$fn=50;
//Kugeln
hull(){
translate ([0,0,160]) sphere (d=10);
translate ([0,0,140]) sphere (d=20);
}
hull(){
translate ([0,0,140]) sphere (d=10);
translate ([0,0,110]) sphere (d=25);
}
hull(){
translate ([0,0,110]) sphere (d=10);
translate ([0,0,80]) sphere (d=32);
}
hull(){
translate ([0,0,80]) sphere (d=10);
translate ([0,0,40]) sphere (d=40);
}
//Basis
hull(){
translate ([-25,0,0]) cylinder (d=25, h=1);
translate ([25,0,0]) cylinder (d=25, h=1);
translate ([0,0,10.1]) cylinder (d=25,h=5);
}
//Stiel
hull(){
translate ([0,0,10]) cylinder(d=25, h=1);
translate ([0,0,40]) sphere (d=20);
}