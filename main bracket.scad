//pinch: distance between cylinders
pinch = 12.7;
//roller_dia: diameter of ring
roller_dia = 7.77;
//inner_plate: distance between inner plates
inner_plate=6.35;






difference() {
    union() {

    translate([-pinch/2,0,0])cylinder(d=roller_dia + 5, h=2, $fn=360);
    translate([pinch/2,0,0])cylinder(d=roller_dia + 5, h=2, $fn=360);
   
    //cylinder to stick out
    translate([-pinch/2,0,0])
    cylinder(d=roller_dia - 2.4, h=1+1+inner_plate+1+.2+1.2+2 +2.5, $fn=360);
        
    //curve between circles
    translate([0,7.44,0])rotate([0,0,225])difference(){
    cube([roller_dia/1.5,roller_dia/1.5,2]);
    translate([0,0,-.5])cylinder(d=roller_dia-1, h=3, $fn=360);
    }
    
    
    //curve between circles
    rotate([0,0,180])translate([0,7.44,0])rotate([0,0,225])difference(){
    cube([roller_dia/1.5,roller_dia/1.5,2]);
    translate([0,0,-.5])cylinder(d=roller_dia-1, h=3, $fn=360);
    }

}

//hole in bracket
translate([pinch/2-3.5,0,-.5])
    cylinder(d=roller_dia - 2, h=3, $fn=360);

translate([pinch/2,0,-.5])
    cylinder(d=roller_dia - 3.4, h=3, $fn=360);

//gap in top cylinder
translate([-pinch/2,0,1+1+1+1+inner_plate+1+.2])
difference() {

    cylinder(r=4.5, h=2.4, $fn=360);
translate([0,0,-.5])
    cylinder(d=roller_dia - 3.8, h=3, $fn=360);
    
}
}

