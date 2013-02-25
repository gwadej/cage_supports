height=20;
width=20;
length=40;
bezel_angle=8;
h_bezel=1.5*height;
w_channel=7;

STRAIGHT_PIECE=1;
CORNER_PIECE=2;

piece=CORNER_PIECE;

if( piece == STRAIGHT_PIECE ) {
    straight_support();
}
if( piece == CORNER_PIECE ) {
    corner_support();
}

module straight_support() {
    difference() {
        block();
        channel();
        outer_bezel();
        rotate(a=[0,0,180]) outer_bezel();
    }
}

module corner_support() {
    channel_offset=width/2+w_channel;
    difference() {
        union() {
            translate([0,width/2,0]) block();    
            rotate([0,0,90]) translate([0,width/2,0]) block();    
        }

        // channel
        translate([0,channel_offset,0]) channel();
        rotate([0,0,90]) translate([0,channel_offset,0]) channel();

        // outside bezel
        translate([0,width/2,0]) outer_bezel();
        rotate([0,0,-90]) translate([0,-width/2,0]) outer_bezel();

        // inside bezel
        translate([-(h_bezel+width/2),width/2,0]) rotate([bezel_angle,bezel_angle,0]) cube( [h_bezel,h_bezel,h_bezel], center=false );
    }
}

module block() {
    translate([0,0,height/2]) cube( [width,length,height], center=true );    
}

module channel() {
     translate([0,0,0.75*height]) cube( [ w_channel,length+1,height/2+1], center=true );
}

module outer_bezel() {
    bezel_offset=(width+w_channel)/2;
    translate([bezel_offset,0,height/2])  rotate([0,-bezel_angle,0]) cube( [width/2,length+1,h_bezel], center=true );
}
