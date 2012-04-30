// Straight piece for supporting the middle of cage wall

difference() {
    translate([0,0,10]) cube( [20,40,20], center=true );    
    translate([0,0,15]) cube( [ 7,41,11], center=true );
    translate([-13.5,0,10]) rotate([0,8,0]) cube( [10,41,30], center=true );
    translate([13.5,0,10]) rotate([0,-8,0]) cube( [10,41,30], center=true );
}
