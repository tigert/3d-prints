include <roundedcube.scad>

// huawei hero 7
phone_width = 71.9; //[1:iPhone 4,1:iPhone 4S,2:iPhone 5]
phone_length = 143.2;
phone_thickness = 8.5; // includes lens bulge!

difference() {
    roundedcube([(phone_width+1.4), phone_length+1.4, phone_thickness+1.4], true, 6, "z");
    translate(v = [0,0,0]) // inner cutout shell (phone)
    roundedcube([phone_width, phone_length, phone_thickness], true, 5, "z");
    translate([0,19-(phone_length/2),0]) // camera
    roundedcube([15, 15, 20], true, 2, "z");
    translate([0,33-(phone_length/2),0]) // fingerprint sensor
    roundedcube([13, 13, 20], true, 2, "z");
    translate([49.5-(phone_width/2),18-(phone_length/2),0]) // camera flash hole
    roundedcube([5, 10, 20], true, 2, "z");

    translate(v = [0,0,10]) // upper rim grip
    roundedcube([phone_width-0.7, phone_length-0.7, phone_thickness], true, 5, "z");


    translate([0-(phone_width/2),45-(phone_length/2),0]) // volume buttons
    roundedcube([20, 40, 8], true, 2, "all");
    translate([75-(phone_width/2),52.5-(phone_length/2),0]) // custom button on left
    roundedcube([20, 10, 8], true, 2, "all");
    translate([0,145/2,0]) // usb + speakers on bottom
    roundedcube([55, 20, 8], true, 2, "all");

}
