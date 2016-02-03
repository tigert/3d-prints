include <roundedcube.scad>

difference() {
    roundedcube([(71.9+1.4), 143.2+1.4, 8.5+1.4], true, 6, "z");
    translate(v = [0.7,0.7,0]) // inner cutout shell (phone)
    roundedcube([71.9, 143.2, 8.5], true, 5, "z");
    translate([0,18-(143.2/2),0]) // camera
    roundedcube([14, 14, 20], true, 2, "z");
    translate([0,32-(143.2/2),0]) // fingerprint sensor
    roundedcube([12, 12, 20], true, 2, "z");
    translate([49.5-(71.9/2),18-(143.2/2),0]) // camera flash hole
    roundedcube([5, 10, 20], true, 2, "z");
    translate([0,45,10]) // volume buttons
    roundedcube([20, 40, 20], true, 2, "all");
    translate([75,52.5,10]) // custom button on left
    roundedcube([20, 10, 20], true, 2, "all");
    translate([71.9/2,145,10]) // usb + speakers on bottom
    roundedcube([55, 20, 20], true, 2, "all");

    translate(v = [0.7,0.7,0]) // inner cutout shell (phone)
    roundedcube([71.9, 143.2, 8.5], true, 5, "z");
}
