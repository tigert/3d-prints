// An [x, y, z] vector specifies distance on each axis. Default [1, 1, 1]
size = [2, 3, 5];

// An integer creates a cube with specified wall distance. Default [1, 1, 1]
size = 5;

// Whether or not to place the object centered on the origin. Default false
center = true;

// Specify a rounding radius. Default 0.5
radius = 0.5

// Specify where to apply the rounded corners. Default "all"
apply_to = "all"|"x"|"y"|"z"|"zmax"|"zmin"|"xmax"|"xmin"|"ymax"|"ymin"

roundedcube(size, center, radius, apply_to);

color("Yellow")
roundedcube(3, true, 0.7, "xmin");

translate(v = [1, 0, 2])
color("Pink")
roundedcube([4, 2, 2], false, 0.6, "zmax");

translate(v = [-4, -1, 2])
color("Lightblue")
roundedcube(2, false);

translate(v = [0, 0, 6])
color("Orange")
roundedcube([3, 2, 2], true, 0.2);

translate(v = [2.5, -0.5, 5])
color("Green")
roundedcube([3, 2, 2], false, 0.4, "z");