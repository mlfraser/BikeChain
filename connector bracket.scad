//pinch: distance between cylinders
pinch = 12.7;
//roller_dia: diameter of ring
roller_dia = 7.77;
//inner_plate: distance between inner plates
inner_plate=6.35;


difference() {
    union() {

    translate([-pinch/2,0,0])cylinder(d=roller_dia + 2, h=1, $fn=360);
    translate([pinch/2,0,0])cylinder(d=roller_dia + 2, h=1, $fn=360);
   
  
        
    //curve between circles
    translate([0,5.3,0])rotate([0,0,225])difference(){
    cube([roller_dia/1.5,roller_dia/1.5,1]);
    translate([0,0,-.5])cylinder(d=roller_dia-1, h=2, $fn=360);
    }
    
    
    //curve between circles
    rotate([0,0,180])translate([0,5.3,0])rotate([0,0,225])difference(){
    cube([roller_dia/1.5,roller_dia/1.5,1]);
    translate([0,0,-.5])cylinder(d=roller_dia-1, h=2, $fn=360);
    }

}

translate([pinch/2,0,-.5])
    cylinder(d=roller_dia - 2, h=3, $fn=360);
translate([-pinch/2,0,-.5])
    cylinder(d=roller_dia - 2, h=3, $fn=360);
}