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
    roundedcube([71.9+1.4, 143.2+1.5, 8.5+1.4], false, 5, "zmin");
    translate(v = [0.7,0.7,1])
    roundedcube([71.9, 143.2, 8.5+2], false, 4, "zmin");
    translate([71.9/2,0,0])
    roundedcube([14, 14, 20], true, 2, "z");
}