// Straight piece for supporting the middle of cage wall

difference() {
    union() {
        translate([0,10,10]) cube( [20,40,20], center=true );    
        rotate([0,0,90]) translate([0,10,10]) cube( [20,40,20], center=true );    
    }

    // channel
    translate([0,17,15]) cube( [ 7,41,11], center=true );
    rotate([0,0,90]) translate([0,17,15]) cube( [ 7,41,11], center=true );

    // outside bezel
    translate([13.5,10,10]) rotate([0,-8,0]) cube( [10,41,30], center=true );
    rotate([0,0,-90]) translate([13.5,-10,10]) rotate([0,-8,0]) cube( [10,41,30], center=true );

    // inside bezel
     translate([-40,10,0]) rotate([8,8,0]) cube( [30,30,30], center=false );
}

