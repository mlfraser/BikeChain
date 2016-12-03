//pinch: distance between cylinders
pinch = 12.7;
//roller_dia: diameter of ring
roller_dia = 7.77;
//inner_plate: distance between inner plates
inner_plate=6.35;


difference(){
    cylinder(h=inner_plate - .5, d=roller_dia, $fn=360);
    cylinder(h=inner_plate - .5, d=roller_dia - 1.8, $fn=360);
}