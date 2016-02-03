include <roundedcube.scad>

difference() {
    roundedcube([(71.9+1.4), 143.2+1.4, 8.5+1.4], true, 6, "z");
    translate(v = [0,0,0]) // inner cutout shell (phone)
    roundedcube([71.9, 143.2, 8.5], true, 5, "z");
    translate([0,18-(143.2/2),0]) // camera
    roundedcube([14, 14, 20], true, 2, "z");
    translate([0,32-(143.2/2),0]) // fingerprint sensor
    roundedcube([12, 12, 20], true, 2, "z");
    translate([49.5-(71.9/2),18-(143.2/2),0]) // camera flash hole
    roundedcube([5, 10, 20], true, 2, "z");

    translate(v = [0,0,10]) // upper rim grip
    roundedcube([71.9-0.7, 143.2-0.7, 8.5], true, 5, "z");


    translate([0-(71.9/2),45-(143.2/2),0]) // volume buttons
    roundedcube([20, 40, 8], true, 2, "all");
    translate([75-(71.9/2),52.5-(143.2/2),0]) // custom button on left
    roundedcube([20, 10, 8], true, 2, "all");
    translate([0,145/2,0]) // usb + speakers on bottom
    roundedcube([55, 20, 8], true, 2, "all");

}
