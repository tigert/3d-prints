include <roundedcube.scad>

// An [x, y, z] vector specifies distance on each axis. Default [1, 1, 1]
size = [2, 3, 5];

// An integer creates a cube with specified wall distance. Default [1, 1, 1]
size = 5;

// Whether or not to place the object centered on the origin. Default false
// center = true|false;
center = true;

// Specify a rounding radius. Default 0.5
radius = 0.5;

// Specify where to apply the rounded corners. Default "all"
// apply_to = "all"|"x"|"y"|"z"|"zmax"|"zmin"|"xmax"|"xmin"|"ymax"|"ymin"

apply_to = "all";

//roundedcube(size, center, radius, apply_to);

//color("Yellow")
//roundedcube(3, true, 0.7, "xmin");

//translate(v = [1, 0, 2])
//color("Pink")
//roundedcube([4, 2, 2], false, 0.6, "zmax");

//translate(v = [-4, -1, 2])
//color("Lightblue")
//roundedcube(2, false);

//translate(v = [0, 0, 6])
//color("Orange")
//roundedcube([3, 2, 2], true, 0.2);

color("Yellow")

difference() {
    roundedcube([71.9+1.4, 143.2+1.4, 8.5+1.4], false, 6, "zmax");
    translate(v = [0.7,0.7,10]) // cutout shell
    roundedcube([71.9, 143.2, 18.5], false, 5, "zmax");
    translate([71.9/2,18,0]) // camera
    roundedcube([14, 14, 20], true, 2, "z");
    translate([71.9/2,32,0]) // fingerprint sensor
    roundedcube([12, 12, 20], true, 2, "zmin");
    translate([49.5,18,0]) // camera flash hole
    roundedcube([5, 10, 20], true, 2, "zmin");
    translate([0,45,11]) // volume buttons
    roundedcube([20, 40, 20], true, 2, "all");
    translate([-80,45,11]) // custom button on left
    roundedcube([20, 40, 20], true, 2, "all");
    translate([75,52.5,11]) // custom button on left
    roundedcube([20, 10, 20], true, 2, "all");
    translate([71.9/2,145,11]) // usb + speakers on bottom
    roundedcube([55, 20, 20], true, 2, "all");
}
