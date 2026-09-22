mytext = "BITCH"; textsize = 40; myfonts="plaster"; //download this font or use your own
roundnes = 50; widebat =30; longbat = 300;
difference(){
hull(){
translate([0,-widebat,0]) circle(d=roundnes);
translate([0,widebat,0]) circle(d=roundnes);
translate([longbat,-widebat,0]) circle(d=roundnes);
translate([longbat,widebat,0]) circle(d=roundnes);
translate([-75,-20,0]) square([120,40],center=false);
}
union(){
translate([(longbat/2)-roundnes,-roundnes/3,0])
text(mytext,textsize,font=myfonts);
}}
translate([-190,0,0]) circle(d=70);
translate([-165,-20,0]) square([130,40],center=false);
